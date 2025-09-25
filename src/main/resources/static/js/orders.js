let appliedPoint = 0;
//보유 포인트 조회
async function loadUserPoints() {
    try {
        const res = await fetch("/api/users/me/points");
        if (!res.ok) throw new Error("포인트 정보를 불러올 수 없습니다.");
        const result = await res.json();
        const points = result.balance || 0;
        document.getElementById("available-points").textContent = `보유 포인트: ${points.toLocaleString()}P`;
        document.getElementById("pointInput").setAttribute("max", points);
    } catch (err) {
        console.error(err);
    }
}
document.addEventListener("DOMContentLoaded", async () => {
    const urlParams = new URLSearchParams(window.location.search);
    const cartItemIds = urlParams.get("cartItemIds");

    if (!cartItemIds) {
        alert("선택된 장바구니 상품이 없습니다.");
        window.location.href = "/cart";
        return;
    }
    const formatCurrency = (num) => Number(num).toLocaleString() + "원";

    try {
        const res = await fetch(`api/orders/prepare?cartItemIds=${cartItemIds}`);
        if (!res.ok) throw new Error("주문 준비 중 오류가 발생했습니다.");
        const { data } = await res.json();

        const tbody = document.querySelector(".product-table tbody");
        tbody.innerHTML = data.items.map(item => `
                <tr>
                    <td><img src="${item.imageUrl || '/images/no-image.png'}" alt="상품이미지"></td>
                    <td>${item.productName}</td>
                    <td>${formatCurrency(item.unitPrice)}</td>
                    <td>${item.quantity}</td>
                    <td class="highlight">${formatCurrency(item.totalPrice)}</td>
                </tr>
            `).join("");

        const summary = data.summary;
        document.getElementById("product-price").textContent = formatCurrency(summary.productPrice);
        document.getElementById("coupon-discount").textContent = "- 0원";
        document.getElementById("shipping-fee").textContent = formatCurrency(summary.shippingFee);
        document.getElementById("point-discount").textContent = "- 0원";
        document.getElementById("final-price").textContent = formatCurrency(summary.finalPrice);

        //결제 수단 불러오기
        try {
            const pmRes = await fetch("/api/payments/methods");
            if (!pmRes.ok) throw new Error("결제 수단을 불러올 수 없습니다.");
            const paymentMethods = await pmRes.json();

            const container = document.getElementById("payment-methods");
            container.innerHTML = paymentMethods.map((pm, idx) => `
                    <label>
                        <input type="radio" name="payment" value="${pm.code}" ${idx === 0 ? "checked" : ""}>
                        ${pm.label}
                    </label>
                `).join(" ");
        } catch (error) {
            console.error(error);
            alert(error.message);
        }

        //배송 요청사항 자동 반영
        const requestSelect = document.querySelector("select");
        const requestTextarea = document.querySelector("textarea");

        requestSelect.addEventListener("change", () => {
            const selected = requestSelect.value;
            if (selected === "기타") {
                requestTextarea.value = "";
                requestTextarea.removeAttribute("readonly");
            } else {
                requestTextarea.value = selected;
                requestTextarea.setAttribute("readonly", true);
            }
        });

        //쿠폰 불러오기
        const couponSelect = document.querySelector("#couponSelect");
        try {
            const couponRes = await fetch("api/users/me/coupons/available");
            if (!couponRes.ok) throw new Error("쿠폰을 불러올 수 없습니다.");
            const couponResult = await couponRes.json();
            const coupons = couponResult.data || [];

            if (coupons.length > 0) {
                couponSelect.innerHTML = `
                        <option value="">쿠폰을 선택하세요</option>
                        ${coupons.map(c => {
                    let label = "";
                    if (c.discountType === "RATE") {
                        label = `-${c.discountValue}%`;
                    } else if (c.discountType === "FIXED") {
                        label = `-${formatCurrency(c.discountValue)}`;
                    }
                    return `<option value="${c.userCouponId}" data-type="${c.discountType}" data-value="${c.discountValue}">
                                        ${c.couponName} (${label})
                                    </option>`;
                }).join("")}
                        <option value="CANCEL">쿠폰 적용 취소</option>
                    `;
            }
        } catch (err) {
            console.error(err);
        }

        //쿠폰 선택 시 가격 반영
        couponSelect.addEventListener("change", () => {
            const selected = couponSelect.options[couponSelect.selectedIndex];
            if (!selected || !selected.value) return;

            if (selected.value === "CANCEL") {
                document.getElementById("coupon-discount").textContent = "- 0원";
                document.getElementById("final-price").textContent = formatCurrency(summary.finalPrice);
                couponSelect.value = "";
                return;
            }

            const type = selected.dataset.type;
            const value = Number(selected.dataset.value);

            let discount = 0;
            if (type === "RATE") {
                discount = Math.floor(summary.finalPrice * (value / 100));
            } else if (type === "FIXED") {
                discount = value;
            }

            const discountedPrice = Math.max(0, summary.finalPrice - discount);
            document.getElementById("coupon-discount").textContent = "- " + formatCurrency(discount);
            document.getElementById("final-price").textContent = formatCurrency(discountedPrice);
        });

        const pointInput = document.getElementById("pointInput");
        const applyPointBtn = document.getElementById("applyPointBtn");
        const cancelPointBtn = document.getElementById("cancelPointBtn");
        const useAllPointBtn = document.getElementById("useAllPointBtn");

        function applyPoint(usePoint) {
            const maxPoint = Number(pointInput.getAttribute("max")) || 0;

            if (!usePoint || usePoint <= 0) {
                alert("포인트를 입력해주세요.");
                return;
            }
            if (usePoint > maxPoint) {
                alert("보유 포인트를 초과했습니다.");
                return;
            }

            appliedPoint = usePoint;
            document.getElementById("point-discount").textContent = "- " + formatCurrency(usePoint);

            const currentFinal = summary.finalPrice;
            const discountedPrice = Math.max(0, currentFinal - usePoint);
            document.getElementById("final-price").textContent = formatCurrency(discountedPrice);

            applyPointBtn.style.display = "none";
            cancelPointBtn.style.display = "inline-block";
            pointInput.setAttribute("readonly", true);
        }

        applyPointBtn.addEventListener("click", () => {
            applyPoint(Number(pointInput.value));
        });

        pointInput.addEventListener("keyup", (e) => {
            if (e.key === "Enter") {
                applyPoint(Number(pointInput.value));
            }
        });

        useAllPointBtn.addEventListener("click", () => {
            const maxPoint = Number(pointInput.getAttribute("max")) || 0;
            const finalPrice = summary.finalPrice;
            const usePoint = Math.min(maxPoint, finalPrice);
            pointInput.value = usePoint;
            applyPoint(usePoint);
        });

        cancelPointBtn.addEventListener("click", () => {
            appliedPoint = 0;
            document.getElementById("point-discount").textContent = "- 0원";
            document.getElementById("final-price").textContent = formatCurrency(summary.finalPrice);

            cancelPointBtn.style.display = "none";
            applyPointBtn.style.display = "inline-block";
            pointInput.removeAttribute("readonly");
            pointInput.value = "";
        });

        await loadUserPoints();

        document.getElementById("orderBtn").addEventListener("click", async () => {
            const receiverName = document.querySelector("input[placeholder='이름 입력']").value;
            const receiverPhone = document.querySelector("input[placeholder='010-0000-0000']").value;
            const roadAddr = document.querySelector("input[placeholder='도로명 주소 입력']").value;
            const jibunAddr = document.querySelector("input[placeholder='지번 주소 입력']").value;
            const detailAddr = document.querySelector("input[placeholder='상세 주소 입력']").value;
            const requestMessage = document.querySelector("textarea").value;
            const zipCode = document.getElementById("zipCode").value;
            const selectedPayment = document.querySelector("input[name='payment']:checked").value;
            const selectedCouponId = couponSelect.value && couponSelect.value !== "CANCEL"
                ? Number(couponSelect.value)
                : null;

            const orderData = {
                products: data.items.map(i => ({
                    productOptionId: i.productOptionId,
                    quantity: i.quantity
                })),
                receiverName,
                receiverPhone,
                roadAddr,
                jibunAddr,
                addressDetail: detailAddr,
                receiveType: "DELIVERY",
                shippingFee: data.summary.shippingFee,
                requestMessage,
                zipCode,
                userCouponId: selectedCouponId,
                usePointAmount: appliedPoint > 0 ? appliedPoint : null,
                paymentMethod: selectedPayment
            };

            try {
                const response = await fetch("api/orders", {
                    method: "POST",
                    headers: { "Content-Type": "application/json" },
                    body: JSON.stringify(orderData)
                });

                const result = await response.json();
                if (!response.ok) throw new Error(result.message);

                alert(result.message || "주문이 정상적으로 생성되었습니다.");
                window.location.href = `/orders/complete?orderId=${result.data.orderId}`;
            } catch (error) {
                alert(error.message || "서버와 통신 중 오류가 발생했습니다.");
            }
        });
    } catch (error) {
        alert("주문 준비 데이터를 불러올 수 없습니다.");
    }
});