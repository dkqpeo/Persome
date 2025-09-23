// cart.js
(async function () {
    const cartTable = document.getElementById("cartTable");
    const cartBody = document.getElementById("cartTbody");
    const cartSummary = document.getElementById("cartSummary");
    const emptyCart = document.getElementById("emptyCartView");

    async function fetchCart() {
        try {
            const res = await fetch("/api/users/me/cart", {credentials: "include"});
            if (!res.ok) throw new Error("장바구니 조회 실패");
            return await res.json();
        } catch (err) {
            console.error("장바구니 불러오기 실패:", err);
            return null;
        }
    }

    function renderCart(cart) {
        const footer = document.querySelector(".cart-footer");

        if (!cart || !cart.items || cart.items.length === 0) {
            emptyCart.style.display = "block";
            cartTable.style.display = "none";
            cartSummary.style.display = "none";
            if (footer) footer.style.display = "none";
            return;
        }

        cartBody.innerHTML = cart.items.map(item => {
            // ✅ 수량 select (1~10 + 10+)
            const qtyOptions = Array.from({length: 10}, (_, i) => {
                const val = i + 1;
                return `<option value="${val}" ${item.quantity === val ? "selected" : ""}>${val}</option>`;
            }).join("") + `<option value="10+">10+</option>`;

            return `
      <tr>
        <td><input type="checkbox" class="item-check" data-id="${item.id}"></td>
        <td>
          <div class="product-info">
            <img src="${item.imageUrl || '/images/no_image.png'}" alt="상품 이미지" class="product-img"/>
            <div>
              <div class="product-name">${item.productName}</div>
              <div class="product-option">옵션: ${item.optionName}</div>
            </div>
          </div>
        </td>
        <td>${item.unitPrice.toLocaleString()}원</td>
        <td>
            <div class="qty-control">
                <select class="qty-select" data-id="${item.id}" style="${item.quantity > 10 ? 'display:none;' : 'inline-block'};">
                    ${[...Array(10).keys()].map(i => `
                    <option value="${i + 1}" ${item.quantity === i + 1 ? 'selected' : ''}>${i + 1}</option>
                    `).join('')}
                    <option value="10+" ${item.quantity > 10 ? 'selected' : ''}>10+</option>
                </select>

                <!-- 10+ 선택 시 표시되는 입력칸 -->
                <div class="qty-custom" data-id="${item.id}" style="display:${item.quantity > 10 ? 'flex' : 'none'};">
                    <input type="number" min="11" 
                        value="${item.quantity > 10 ? item.quantity : ''}" 
                        class="qty-input-custom" autofocus />
                    <button class="qty-update-btn">변경</button>
                </div>
            </div>
        </td>
        <td class="final-price">${item.finalPrice.toLocaleString()}원</td>
        <td class="shipping">${item.shippingFee === 0 ? "무료배송" : item.shippingFee.toLocaleString() + "원"}</td>
        <td class="actions">
          <button class="buy-btn" data-id="${item.id}">바로구매</button>
          <button class="wishlist-btn" data-product-id="${item.productId}">♡쇼핑찜</button>
          <button class="remove-btn" data-id="${item.id}">삭제</button>
        </td>
      </tr>`;
        }).join("");

        document.getElementById("totalBasePrice").textContent = cart.totalBasePrice.toLocaleString();
        document.getElementById("totalDiscount").textContent = cart.totalDiscount.toLocaleString();
        document.getElementById("finalAmount").textContent = cart.finalAmount.toLocaleString();

        emptyCart.style.display = "none";
        cartTable.style.display = "table";
        cartSummary.style.display = "block";
        if (footer) footer.style.display = "flex";

        bindEvents();
    }

    function bindEvents() {
        // 전체 선택
        document.getElementById("checkAll")?.addEventListener("change", (e) => {
            const checked = e.target.checked;
            document.querySelectorAll(".item-check").forEach(chk => {
                chk.checked = checked;
            });
        });

        // ✅ 바로구매
        document.querySelectorAll(".buy-btn").forEach(btn => {
            btn.addEventListener("click", (e) => {
                const id = e.target.dataset.id;
                window.location.href = `/orders?cartItemIds=${id}`;
            });
        });

        // ✅ 찜하기
        document.querySelectorAll(".wishlist-btn").forEach(btn => {
            btn.addEventListener("click", async (e) => {
                const productId = e.target.dataset.productId;
                try {
                    const res = await fetch("/api/users/me/wishlist", {
                        method: "POST",
                        headers: {"Content-Type": "application/json"},
                        body: JSON.stringify({productId}),
                        credentials: "include"
                    });
                    if (res.ok) {
                        alert("위시리스트에 추가되었습니다!");
                    } else {
                        alert("위시리스트 추가 실패");
                    }
                } catch (err) {
                    console.error("찜하기 실패:", err);
                }
            });
        });

        // 삭제 버튼
        document.querySelectorAll(".remove-btn").forEach(btn => {
            btn.addEventListener("click", async (e) => {
                const id = e.target.dataset.id;
                await removeItem(id);
            });
        });

        // ✅ 선택상품 삭제
        document.getElementById("removeSelected")?.addEventListener("click", async () => {
            const selectedIds = [...document.querySelectorAll(".item-check:checked")].map(chk => chk.dataset.id);
            if (selectedIds.length === 0) {
                alert("선택된 상품이 없습니다."); // ✅ 알림 추가
                return;
            }
            for (const id of selectedIds) {
                await removeItem(id);
            }
        });

        // ✅ 품절상품 삭제 (추후 구현)
        document.getElementById("removeSoldout")?.addEventListener("click", () => {
            alert("품절상품 삭제 기능은 아직 구현되지 않았습니다.");
        });

        // ✅ 선택주문
        document.getElementById("orderSelected")?.addEventListener("click", () => {
            const selectedIds = [...document.querySelectorAll(".item-check:checked")].map(chk => chk.dataset.id);
            if (selectedIds.length === 0) {
                alert("선택된 상품이 없습니다."); // ✅ 알림 추가
                return;
            }

            window.location.href = `/orders?cartItemIds=${selectedIds.join(",")}`;
        });

        // ✅ 전체주문
        document.getElementById("orderAll")?.addEventListener("click", () => {
            const all = [...document.querySelectorAll(".item-check")].map(chk => chk.dataset.id);
            if (all.length === 0) {
                alert("장바구니가 비어 있습니다.");
                return;
            }

            window.location.href = `/orders?cartItemIds=${all.join(",")}`;
        });

        bindQuantityControls();
    }

    function bindQuantityControls() {
        // ✅ 드롭다운 변경
        document.querySelectorAll(".qty-select").forEach(select => {
            select.addEventListener("change", (e) => {
                const id = e.target.dataset.id;
                const wrapper = document.querySelector(`.qty-custom[data-id="${id}"]`);

                if (e.target.value === "10+") {
                    // 10+ 선택 → input 모드로 전환
                    select.style.display = "none";
                    wrapper.style.display = "flex"; // 세로 배치
                    const input = wrapper.querySelector(".qty-input-custom");
                    input.value = ""; // 빈칸으로 시작
                    input.focus();
                } else {
                    // 1~10 → 즉시 업데이트
                    const value = parseInt(e.target.value, 10);
                    updateQuantity(id, value);
                }
            });
        });

        // ✅ 변경 버튼 클릭
        document.querySelectorAll(".qty-update-btn").forEach(btn => {
            btn.addEventListener("click", async (e) => {
                const wrapper = e.target.closest(".qty-custom");
                const id = wrapper.dataset.id;
                const input = wrapper.querySelector(".qty-input-custom");
                const qty = parseInt(input.value, 10);
                const select = document.querySelector(`.qty-select[data-id="${id}"]`);

                if (qty >= 1) {
                    await updateQuantity(id, qty);
                    alert("수량 변경이 완료되었습니다.");

                    if (qty <= 10) {
                        // ✅ 10 이하 → 드롭박스로 복귀
                        wrapper.style.display = "none";
                        select.style.display = "inline-block";
                        select.value = qty;
                    } else {
                        // ✅ 10 초과 → input 모드 그대로 유지
                        wrapper.style.display = "flex";
                        select.style.display = "none";
                        input.value = qty;
                        input.blur();
                    }
                }
            });
        });
    }

    async function updateQuantity(itemId, qty) {
        try {
            const res = await fetch(`/api/users/me/cart/items/${itemId}`, {
                method: "PATCH",
                headers: {"Content-Type": "application/json"},
                body: JSON.stringify({cartItemId: itemId, updateQuantity: qty})
            });
            if (res.ok) {
                const updatedCart = await res.json();
                renderCart(updatedCart);
            }
        } catch (err) {
            console.error("수량 변경 실패:", err);
        }
    }

    async function removeItem(itemId) {
        try {
            const res = await fetch(`/api/users/me/cart/items/${itemId}`, {method: "DELETE"});
            if (res.ok) loadCart();
        } catch (err) {
            console.error("상품 삭제 실패:", err);
        }
    }

    async function loadCart() {
        const cart = await fetchCart();
        renderCart(cart);
    }

    document.addEventListener("DOMContentLoaded", loadCart);
})();
