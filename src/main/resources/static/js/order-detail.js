// Order detail: fetch /orders/{id} and render
(function() {
  const json = async (res) => { const t = await res.text(); try { return t ? JSON.parse(t) : null; } catch { return t; } };
  const apiGet = async (url) => { const r = await fetch(url, { credentials: 'same-origin' }); if(!r.ok) throw new Error(await r.text()); return json(r); };

  function qs(name) {
    const m = location.pathname.match(/\/orders\/view\/(\d+)/);
    return m ? m[1] : null;
  }
  function fmtDate(iso) { try { const d = new Date(iso); return d.toLocaleString('ko-KR'); } catch { return iso; } }
  function fmtWon(n) { if (n == null) return '-'; try { return Number(n).toLocaleString('ko-KR') + '원'; } catch { return String(n); } }

  function renderMeta(o) {
    const el = document.getElementById('meta');
    if (!el) return;
    el.textContent = `주문번호 #${o.orderId} · ${fmtDate(o.orderDate)} · ${o.orderStatus}`;
  }
  function renderItems(o) {
    const tb = document.getElementById('itemsBody');
    if (!tb) return;
    const items = (o.items) || [];
    if (!items.length) { tb.innerHTML = '<tr><td colspan="3" class="muted">상품이 없습니다.</td></tr>'; return; }
    tb.innerHTML = items.map(it => {
      const name = it.productName || `옵션 ${it.productOptionId}`;
      const qty = it.quantity || 0;
      const price = it.price || it.totalPrice;
      return `<tr><td>${name}</td><td>${qty}</td><td>${fmtWon(price)}</td></tr>`;
    }).join('');
  }
  function renderDelivery(o) {
    const box = document.getElementById('deliveryBox');
    if (!box) return;
    const d = o.deliveryInfo;
    if (!d) { box.textContent = '배송 정보가 없습니다.'; return; }
    box.innerHTML = `
      <div><b>수령인:</b> ${d.receiverName || '-'}</div>
      <div><b>연락처:</b> ${d.receiverPhone || '-'}</div>
      <div><b>주소:</b> ${d.roadAddr || d.address || '-'} ${d.addrDetail || ''}</div>
    `;
  }
  function renderPrices(o) {
    const box = document.getElementById('priceBox');
    if (!box) return;
    const rows = [
      ['상품 합계', o.originalPrice],
      ['쿠폰 할인', o.couponDiscountAmount],
      ['프로모션 할인', o.promoDiscountAmount],
      ['포인트 사용', o.pointUsedAmount],
      ['결제 금액', o.totalPrice]
    ];
    box.innerHTML = rows.map(([k,v]) => `<div><span class="muted">${k}</span> : <b>${fmtWon(v)}</b></div>`).join('');
  }

  async function init() {
    const id = qs();
    if (!id) return;
    try {
      const resp = await apiGet(`/orders/${id}`);
      const o = resp && resp.data ? resp.data : resp; // ApiResponse or raw
      renderMeta(o);
      renderItems(o);
      renderDelivery(o);
      renderPrices(o);
    } catch (e) {
      const m = document.getElementById('meta');
      if (m) m.textContent = '주문 상세를 불러오지 못했습니다.';
    }
  }

  document.addEventListener('DOMContentLoaded', init);
})();

