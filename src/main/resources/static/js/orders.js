let appliedPoint = 0;
let appliedCoupon = { discount: 0, id: null };

// 보유 포인트 조회
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

// 기존 배송지 불러오기
async function loadExistingAddresses() {
    const select = document.getElementById("existingAddressSelect");
    try {
        const res = await fetch("/api/users/me/addresses");
        if (!res.ok) throw new Error("배송지 목록을 불러올 수 없습니다.");
        const list = await res.json();

        if (!list || list.length === 0) {
            select.innerHTML = `<option value="">등록된 배송지가 없습니다</option>`;
            return;
        }

        select.innerHTML = `<option value="">배송지를 선택하세요</option>` +
            list.map(addr => {
                const label = addr.label && addr.label.trim() !== "" ? addr.label : "배송지";
                return `
                    <option value="${addr.id}"
                      data-label="${addr.label || ""}"
                      data-name="${addr.receiverName || ""}"
                      data-phone="${addr.receiverPhone || ""}"
                      data-road="${addr.roadAddr || ""}"
                      data-jibun="${addr.jibunAddr || ""}"
                      data-detail="${addr.addrDetail || ""}"
                      data-zip="${addr.zip || ""}">
                      ${label}
                    </option>
                `;
            }).join("");

        // 선택 시 입력폼 채우기 (라벨 포함)
        select.addEventListener("change", () => {
            const opt = select.options[select.selectedIndex];
            if (!opt.value) return;
            document.getElementById("addrLabel").value = opt.dataset.label || "";
            document.getElementById("receiverName").value = opt.dataset.name || "";
            const phone = (opt.dataset.phone || "").split("-");
            document.getElementById("phone1").value = phone[0] || "010";
            document.getElementById("phone2").value = phone[1] || "";
            document.getElementById("phone3").value = phone[2] || "";
            document.getElementById("zipCode").value = opt.dataset.zip || "";
            document.getElementById("roadAddr").value = opt.dataset.road || "";
            document.getElementById("jibunAddr").value = opt.dataset.jibun || "";
            document.getElementById("detailAddr").value = opt.dataset.detail || "";
        });
    } catch (e) {
        console.error(e);
        select.innerHTML = `<option value="">배송지 불러오기 실패</option>`;
    }
}

// 배송지 모드 토글
function initAddressModeToggle() {
    const existingBox = document.getElementById("existingAddressBox");
    const select = document.getElementById("existingAddressSelect");

    document.querySelectorAll("input[name='addrMode']").forEach(radio => {
        radio.addEventListener("change", () => {
            if (radio.value === "EXISTING" && radio.checked) {
                existingBox.style.display = "block";
                if (select.options.length > 1) {
                    select.selectedIndex = 1;
                    select.dispatchEvent(new Event("change"));
                }
            }
            if (radio.value === "NEW" && radio.checked) {
                existingBox.style.display = "none";
                ["addrLabel","receiverName","phone2","phone3","zipCode","roadAddr","jibunAddr","detailAddr"].forEach(id=>{
                    const el=document.getElementById(id);
                    if(el) el.value="";
                });
                document.getElementById("phone1").value="010";
            }
        });
    });
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
        const res = await fetch(`/api/orders/prepare?cartItemIds=${cartItemIds}`);
        if (!res.ok) throw new Error("주문 준비 중 오류가 발생했습니다.");
        const { data } = await res.json();

        // 상품 표시
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

        // 최종 금액 업데이트 함수
        function updateFinalPrice() {
            const discount = appliedCoupon.discount || 0;
            const point = appliedPoint || 0;

            document.getElementById("coupon-discount").textContent = "- " + formatCurrency(discount);
            document.getElementById("point-discount").textContent = "- " + formatCurrency(point);

            const discountedPrice = Math.max(0, summary.finalPrice - discount - point);
            document.getElementById("final-price").textContent = formatCurrency(discountedPrice);
        }

        // 쿠폰 불러오기
        const couponSelect = document.querySelector("#couponSelect");
        try {
            const couponRes = await fetch("/api/users/me/coupons/available");
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

        // 쿠폰 적용
        couponSelect.addEventListener("change", () => {
            const selected = couponSelect.options[couponSelect.selectedIndex];
            if (!selected || !selected.value) return;

            if (selected.value === "CANCEL") {
                appliedCoupon = { discount: 0, id: null };
                updateFinalPrice();
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

            appliedCoupon = { discount, id: Number(selected.value) };
            updateFinalPrice();
        });

        // 포인트 적용
        const pointInput = document.getElementById("pointInput");
        const applyPointBtn = document.getElementById("applyPointBtn");
        const cancelPointBtn = document.getElementById("cancelPointBtn");
        const useAllPointBtn = document.getElementById("useAllPointBtn");

        function applyPoint(usePoint) {
            const maxPoint = Number(pointInput.getAttribute("max")) || 0;
            if (!usePoint || usePoint <= 0) return alert("포인트를 입력해주세요.");
            if (usePoint > maxPoint) return alert("보유 포인트를 초과했습니다.");

            appliedPoint = usePoint;
            updateFinalPrice();

            applyPointBtn.style.display = "none";
            cancelPointBtn.style.display = "inline-block";
            pointInput.setAttribute("readonly", true);
        }

        applyPointBtn.addEventListener("click", () => applyPoint(Number(pointInput.value)));
        pointInput.addEventListener("keyup", e => { if (e.key === "Enter") applyPoint(Number(pointInput.value)); });
        useAllPointBtn.addEventListener("click", () => {
            const maxPoint = Number(pointInput.getAttribute("max")) || 0;
            const finalPrice = summary.finalPrice;
            const usePoint = Math.min(maxPoint, finalPrice);
            pointInput.value = usePoint;
            applyPoint(usePoint);
        });
        cancelPointBtn.addEventListener("click", () => {
            appliedPoint = 0;
            updateFinalPrice();
            cancelPointBtn.style.display = "none";
            applyPointBtn.style.display = "inline-block";
            pointInput.removeAttribute("readonly");
            pointInput.value = "";
        });

        await loadUserPoints();
        initAddressModeToggle();
        await loadExistingAddresses();

        let setDefaultChecked = false;
        document.getElementById("setDefaultAddr").addEventListener("change", e => {
            setDefaultChecked = e.target.checked;
        });

        // 결제 수단 불러오기
        const pmRes = await fetch("/api/payments/methods");
        if (pmRes.ok) {
            const paymentMethods = await pmRes.json();
            const container = document.getElementById("payment-methods");
            container.innerHTML = paymentMethods.map((pm, idx) => `
        <label>
            <input type="radio" name="payment" value="${pm.code}" ${idx === 0 ? "checked" : ""}>
            ${pm.label}
        </label>
    `).join(" ");
        }


        // 주문 요청
        document.getElementById("orderBtn").addEventListener("click", async () => {
            const addrMode = document.querySelector("input[name='addrMode']:checked").value;

            const addrLabel = document.getElementById("addrLabel").value;
            const receiverName = document.getElementById("receiverName").value;
            const receiverPhone = `${document.getElementById("phone1").value}-${document.getElementById("phone2").value}-${document.getElementById("phone3").value}`;
            const roadAddr = document.getElementById("roadAddr").value;
            const jibunAddr = document.getElementById("jibunAddr").value;
            const detailAddr = document.getElementById("detailAddr").value;
            const zipCode = document.getElementById("zipCode").value;

            const requestMessage = document.getElementById("requestTextarea").value;
            const selectedPayment = document.querySelector("input[name='payment']:checked").value;

            const orderData = {
                products: data.items.map(i => ({ productOptionId: i.productOptionId, quantity: i.quantity })),
                receiverName, receiverPhone, roadAddr, jibunAddr,
                addressDetail: detailAddr, receiveType: "DELIVERY",
                shippingFee: data.summary.shippingFee, requestMessage, zipCode,
                userCouponId: appliedCoupon.id,
                usePointAmount: appliedPoint > 0 ? appliedPoint : null,
                paymentMethod: selectedPayment
            };

            try {
                const response = await fetch("/api/orders", {
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

            // 배송지 저장/업데이트
            if (setDefaultChecked) {
                const addressData = {
                    label: addrLabel,
                    receiverName,
                    receiverPhone,
                    roadAddr,
                    jibunAddr,
                    addrDetail: detailAddr,
                    zip: zipCode,
                    isDefault: true
                };

                const selectedId = document.getElementById("existingAddressSelect").value;
                if (addrMode === "NEW") {
                    await fetch("/api/users/me/addresses", {
                        method: "POST",
                        headers: { "Content-Type": "application/json" },
                        body: JSON.stringify(addressData)
                    });
                } else if (addrMode === "EXISTING" && selectedId) {
                    await fetch(`/api/users/me/addresses/${selectedId}`, {
                        method: "PATCH",
                        headers: { "Content-Type": "application/json" },
                        body: JSON.stringify(addressData)
                    });
                }
            }
        });
    } catch (error) {
        alert("주문 준비 데이터를 불러올 수 없습니다.");
    }
});
