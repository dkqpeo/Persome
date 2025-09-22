// Cart page script: fetches REST API and binds response
(function() {
  async function json(res) {
    const t = await res.text();
    try { return t ? JSON.parse(t) : null; } catch { return t; }
  }

  async function apiGet(url) {
    const res = await fetch(url, { credentials: 'same-origin' });
    if (!res.ok) throw new Error(await res.text());
    return json(res);
  }

  async function resolveUserId() {
    // 1) Try Thymeleaf-injected global
    if (window.PersomeUser && window.PersomeUser.id) return window.PersomeUser.id;
    // 2) Fallback via points API which returns userId
    try {
      const points = await apiGet('/users/me/points');
      if (points && points.userId) return points.userId;
    } catch {}
    return null;
  }

  function renderRows(items) {
    if (!items || !items.length) {
      return '';
    }
    return items.map(it => `
      <tr>
        <td>${it.cartItemId}</td>
        <td>${it.productOptionId}</td>
        <td>${it.quantity}</td>
      </tr>
    `).join('');
  }

  async function init() {
    const alertBox = document.getElementById('cartAlert');
    const tbody = document.getElementById('cartTbody');
    const table = document.getElementById('cartTable');
    const emptyView = document.getElementById('emptyCartView');
    if (!tbody) return;
    try {
      const userId = await resolveUserId();
      if (!userId) {
        // Not logged in: show login prompt rather than empty-cart layout
        if (emptyView) emptyView.style.display = 'none';
        if (table) table.style.display = 'table';
        tbody.innerHTML = '<tr><td colspan="3" class="empty">로그인이 필요합니다. <a href="/users/login">로그인</a></td></tr>';
        if (alertBox) alertBox.textContent = '로그인 후 이용해 주세요.';
        return;
      }

      const cart = await apiGet(`/users/${userId}/cart`);
      const items = (cart && cart.cartItems) || [];
      if (!items.length) {
        if (table) table.style.display = 'none';
        if (emptyView) emptyView.style.display = 'block';
        return;
      }
      if (emptyView) emptyView.style.display = 'none';
      if (table) table.style.display = 'table';
      tbody.innerHTML = renderRows(items);
    } catch (e) {
      // API 오류(예: cart == null)도 빈 상태로 처리
      const table2 = document.getElementById('cartTable');
      const emptyView2 = document.getElementById('emptyCartView');
      if (table2) table2.style.display = 'none';
      if (emptyView2) emptyView2.style.display = 'block';
      if (alertBox) alertBox.textContent = '';
    }
  }

  document.addEventListener('DOMContentLoaded', init);
})();
