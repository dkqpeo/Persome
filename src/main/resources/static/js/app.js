// Simple AJAX helpers and page initializers for Persome
(function () {
  const json = async (res) => {
    const text = await res.text();
    try { return text ? JSON.parse(text) : null; } catch { return text; }
  };

  async function apiGet(url) {
    const res = await fetch(url, { credentials: 'same-origin' });
    if (!res.ok) throw new Error(await res.text());
    return json(res);
  }

  async function apiPost(url, body) {
    const res = await fetch(url, {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      credentials: 'same-origin',
      body: JSON.stringify(body || {})
    });
    if (!res.ok) throw new Error(await res.text());
    return json(res);
  }

  async function apiPatch(url, body) {
    const res = await fetch(url, {
      method: 'PATCH',
      headers: { 'Content-Type': 'application/json' },
      credentials: 'same-origin',
      body: JSON.stringify(body || {})
    });
    if (!res.ok) throw new Error(await res.text());
    return json(res);
  }

  async function apiDelete(url) {
    const res = await fetch(url, { method: 'DELETE', credentials: 'same-origin' });
    if (!res.ok) throw new Error(await res.text());
    return true;
  }

  async function getCurrentUser() {
    try {
      return await apiGet('/users/me');
    } catch {
      return null;
    }
  }

  async function resolveUserId() {
    if (window.PersomeUser && window.PersomeUser.id) return window.PersomeUser.id;
    try {
      const points = await apiGet('/users/me/points');
      if (points && points.userId) return points.userId;
    } catch {}
    return null;
  }

  function formatPrice(num) {
    if (num == null) return '';
    try { return Number(num).toLocaleString('ko-KR') + '원'; } catch { return String(num); }
  }

  function firstImg(product) {
    const imgs = product.imgs || product.images || [];
    if (!imgs || !imgs.length) return '/images/banner-sample.jpg';
    const first = imgs.find(i => i.imgOrder === 0) || imgs[0];
    return first.imgUrl || '/images/banner-sample.jpg';
  }

  function productCardHTML(p) {
    const img = firstImg(p);
    const id = p.product_id || p.id;
    let priceText = '';
    const prices = p.price || p.prices || [];
    if (prices.length) {
      // pick min price for display
      const min = prices.reduce((acc, cur) => acc == null || cur.price < acc ? cur.price : acc, null);
      if (min != null) priceText = formatPrice(min);
    }
    return `
      <a class="product" href="/products/${id}" style="text-decoration:none;color:inherit">
        <img src="${img}" alt="${p.name || ''}">
        <h3>${p.name || ''}</h3>
        <p>${priceText}</p>
      </a>
    `;
  }

  async function loadHomeProducts() {
    const containerPopular = document.getElementById('popularProducts');
    const containerNew = document.getElementById('newProducts');
    if (!containerPopular && !containerNew) return;
    try {
      // 홈 메인 섹션: 인기/신규 API를 병렬 호출
      const [popularData, newData] = await Promise.all([
        apiGet('/products/popular?size=10'),
        apiGet('/products/new?size=10')
      ]);
      const popular = Array.isArray(popularData) ? popularData : [];
      const fresh = Array.isArray(newData) ? newData : [];
      if (containerPopular) containerPopular.innerHTML = popular.map(productCardHTML).join('');
      if (containerNew) containerNew.innerHTML = fresh.map(productCardHTML).join('');
    } catch (e) {
      if (containerPopular) containerPopular.innerHTML = '<p>상품을 불러오지 못했습니다.</p>';
      if (containerNew) containerNew.innerHTML = '';
      console.error(e);
    }
  }

  async function updateHeaderCartCount() {
    const el = document.getElementById('cartCount');
    if (!el) return;
    try {
      const userId = await resolveUserId();
      if (!userId) return;
      const cart = await apiGet(`/users/${userId}/cart`);
      const items = (cart && cart.cartItems) || [];
      // show total quantity sum
      const totalQty = items.reduce((sum, it) => sum + (it.quantity || 0), 0);
      el.textContent = String(totalQty);
    } catch (e) {
      // ignore if not logged in
    }
  }

  // CART helpers
  async function loadCartPage() {
    const container = document.getElementById('cartItems');
    if (!container) return;
    const status = document.getElementById('cartStatus');
    try {
      const userId = await resolveUserId();
      if (!userId) {
        container.innerHTML = '<p>로그인이 필요합니다. <a href="/users/login">로그인하기</a></p>';
        return;
      }
      const cart = await apiGet(`/users/${userId}/cart`);
      const items = (cart && cart.cartItems) || [];
      if (!items.length) {
        container.innerHTML = '<p>장바구니가 비었습니다.</p>';
        return;
      }
      container.innerHTML = items.map(it => `
        <div class="cart-row" data-id="${it.cartItemId}">
          <div>옵션 ID: ${it.productOptionId}</div>
          <div>
            수량: <input type="number" min="1" value="${it.quantity}" class="qty-input" style="width:60px"> 
            <button class="btn-update">변경</button>
            <button class="btn-remove">삭제</button>
          </div>
        </div>
      `).join('');

      container.addEventListener('click', async (e) => {
        const row = e.target.closest('.cart-row');
        if (!row) return;
        const id = row.getAttribute('data-id');
        if (e.target.classList.contains('btn-remove')) {
          try {
            await apiDelete(`/users/${userId}/cart/items/${id}`);
            row.remove();
            updateHeaderCartCount();
          } catch (err) {
            alert('삭제 실패: ' + err.message);
          }
        }
        if (e.target.classList.contains('btn-update')) {
          const qty = parseInt(row.querySelector('.qty-input').value || '1', 10);
          try {
            await apiPatch(`/users/${userId}/cart/items/${id}`, { cartItemId: Number(id), updateQuantity: qty });
            updateHeaderCartCount();
            if (status) status.textContent = '수량이 변경되었습니다.';
          } catch (err) {
            alert('수정 실패: ' + err.message);
          }
        }
      });

      const clearBtn = document.getElementById('btnClearCart');
      if (clearBtn) {
        clearBtn.addEventListener('click', async () => {
          try {
            await apiDelete(`/users/${userId}/cart/items`);
            container.innerHTML = '<p>장바구니가 비었습니다.</p>';
            updateHeaderCartCount();
          } catch (err) {
            alert('비우기 실패: ' + err.message);
          }
        });
      }
    } catch (e) {
      container.innerHTML = '<p>장바구니를 불러오지 못했습니다.</p>';
    }
  }

  // PRODUCT page
  async function loadProductPage() {
    const root = document.getElementById('productDetail');
    if (!root) return;
    const params = new URLSearchParams(location.search);
    const id = params.get('id');
    if (!id) {
      root.innerHTML = '<p>상품 ID가 없습니다.</p>';
      return;
    }
    try {
      const p = await apiGet(`/products/${id}`);
      const img = firstImg({ images: p.images });
      const minPrice = (p.prices || []).reduce((acc, cur) => acc == null || cur.price < acc ? cur.price : acc, null);
      const options = p.options || [];
      root.innerHTML = `
        <div class="prod">
          <div class="left">
            <img src="${img}" alt="${p.name || ''}" style="max-width:360px;border-radius:8px;"/>
          </div>
          <div class="right">
            <h2>${p.brandName ? '[' + p.brandName + '] ' : ''}${p.name || ''}</h2>
            <div class="price">${minPrice != null ? formatPrice(minPrice) : ''}</div>
            <div class="opt">
              <label>옵션</label>
              <select id="selectOption">
                ${options.map(o => `<option value="${o.option_id}">${o.name || ('옵션 ' + o.option_id)}</option>`).join('')}
              </select>
            </div>
            <div class="qty">
              <label>수량</label>
              <input id="qty" type="number" min="1" value="1" style="width:80px" />
            </div>
            <div class="actions" style="margin-top:8px">
              <button id="btnAddCart">장바구니 담기</button>
            </div>
          </div>
        </div>
      `;

      document.getElementById('btnAddCart').addEventListener('click', async () => {
        try {
          const userId = await resolveUserId();
          if (!userId) { alert('로그인이 필요합니다.'); return; }
          const optionId = Number(document.getElementById('selectOption').value);
          const qty = Number(document.getElementById('qty').value || '1');
          await apiPost(`/users/${userId}/cart/items`, { productOptionId: optionId, quantity: qty });
          alert('장바구니에 담았습니다.');
          updateHeaderCartCount();
        } catch (e) {
          alert('장바구니 담기 실패: ' + e.message);
        }
      });
    } catch (e) {
      root.innerHTML = '<p>상품 정보를 불러오지 못했습니다.</p>';
    }
  }

  // MYPAGE
  async function loadMyPage() {
    const box = document.getElementById('myPage');
    if (!box) return;
    try {
      const me = await getCurrentUser();
      if (!me) { box.innerHTML = '<p>로그인이 필요합니다. <a href="/users/login">로그인</a></p>'; return; }

      box.querySelector('#profile').innerHTML = `
        <div><b>이름:</b> ${me.name || ''}</div>
        <div><b>아이디:</b> ${me.loginId || ''}</div>
        <div><b>이메일:</b> ${me.email || ''}</div>
      `;

      // Points summary
      try {
        const points = await apiGet('/users/me/points');
        const val = (points && (points.balance != null ? points.balance : points.currentPoint)) || 0;
        box.querySelector('#points').textContent = val;
      } catch {}

      // Orders summary
      try {
        const ordersResp = await apiGet('/orders/my');
        const orders = (ordersResp && ordersResp.data) || [];
        const list = box.querySelector('#orders');
        if (orders.length) {
          list.innerHTML = orders.map(o => `<li>주문번호 ${o.orderId} - ${o.status || ''}</li>`).join('');
        } else {
          list.innerHTML = '<li>주문 내역이 없습니다.</li>';
        }
      } catch {
        box.querySelector('#orders').innerHTML = '<li>주문 내역을 불러올 수 없습니다.</li>';
      }
    } catch (e) {
      box.innerHTML = '<p>내 정보를 불러오지 못했습니다.</p>';
    }
  }

  window.Persome = {
    apiGet, apiPost, apiPatch, apiDelete,
    loadHomeProducts,
    updateHeaderCartCount,
    loadCartPage,
    loadProductPage,
    loadMyPage
  };
})();
