// Orders list: fetch /orders/my and render
(function() {
  const json = async (res) => { const t = await res.text(); try { return t ? JSON.parse(t) : null; } catch { return t; } };
  const apiGet = async (url) => { const r = await fetch(url, { credentials: 'same-origin' }); if(!r.ok) throw new Error(await r.text()); return json(r); };

  function fmtDate(iso) {
    try { const d = new Date(iso); return d.toLocaleString('ko-KR'); } catch { return iso; }
  }
  function fmtWon(n) {
    if (n == null) return '-';
    try { return Number(n).toLocaleString('ko-KR') + '원'; } catch { return String(n); }
  }

  function row(o) {
    const id = o.orderId || o.id;
    const when = o.orderDate;
    const price = o.totalPrice;
    const status = o.orderStatus || o.status;
    return `
      <tr>
        <td>#${id}</td>
        <td>${fmtDate(when)}</td>
        <td class="status">${status || ''}</td>
        <td>${fmtWon(price)}</td>
        <td><a class="link" href="/orders/view/${id}">상세</a></td>
      </tr>
    `;
  }

  async function load() {
    const body = document.getElementById('ordersBody');
    if (!body) return;
    try {
      const resp = await apiGet('/orders/my');
      const list = (resp && resp.data) || [];
      if (!list.length) { body.innerHTML = '<tr><td colspan="5" class="empty">주문 내역이 없습니다.</td></tr>'; return; }
      body.innerHTML = list.map(row).join('');
    } catch (e) {
      body.innerHTML = '<tr><td colspan="5" class="empty">주문 내역을 불러오지 못했습니다.</td></tr>';
    }
  }

  document.addEventListener('DOMContentLoaded', load);
})();

