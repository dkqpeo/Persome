// My Coupons page: list all + available
(function(){
  const json = async (res) => { const t=await res.text(); try { return t?JSON.parse(t):null; } catch { return t; } };
  async function apiGet(url){ const r=await fetch(url,{credentials:'same-origin'}); if(!r.ok) throw new Error(await r.text()); return json(r); }

  function render(list, elId){
    const el = document.getElementById(elId); if (!el) return;
    const arr = (list && list.data) ? list.data : (Array.isArray(list)?list:[]);
    if (!arr.length) { el.innerHTML = '<div class="muted">없습니다.</div>'; return; }
    el.innerHTML = arr.map(c => `
      <div class="coupon">
        <div class="name">${c.couponName || c.name || '쿠폰'}</div>
        <div class="meta">상태: ${c.status || '-'} | 만료: ${c.expiredAt || '-'}</div>
      </div>
    `).join('');
  }

  async function init(){
    try {
      const mine = await apiGet('/users/me/coupons');
      render(mine, 'couponList');
    } catch(e){ document.getElementById('couponList').innerHTML = '<div class="muted">불러오기 실패</div>'; }

    try {
      const avail = await apiGet('/users/me/coupons/available');
      render(avail, 'availableList');
    } catch(e){ document.getElementById('availableList').innerHTML = '<div class="muted">불러오기 실패</div>'; }
  }

  document.addEventListener('DOMContentLoaded', init);
})();

