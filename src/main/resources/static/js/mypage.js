// My Page: fetch REST APIs and populate dashboard
(function() {
  const apiGet = async (url) => {
    const r = await fetch(url, { credentials: 'include' }); // same-origin 대신 include 권장
    if(!r.ok) throw new Error(await r.text());
    return r.json(); // ✅ json(r) 대신 이걸로
  };

  function initials(name) {
    if (!name) return 'ME';
    const parts = String(name).trim().split(/\s+/);
    if (parts.length === 1) return parts[0].slice(0,2).toUpperCase();
    return (parts[0][0] + parts[1][0]).toUpperCase();
  }

  async function loadProfile() {
    try {
      const me = await apiGet('/api/users/me');
      if (!me) throw new Error('NOT_AUTH');
      // Hero header
      const av = document.getElementById('avatar');
      if (av) av.textContent = initials(me.name || me.loginId);
      const helloName = document.getElementById('helloName');
      const helloId = document.getElementById('helloId');
      if (helloName) helloName.textContent = `${me.name || me.loginId || '-'} 님`;
      if (helloId) helloId.textContent = me.email || me.loginId || '-';
      return true;
    } catch (e) {
      const alertBox = document.getElementById('mpAlert');
      if (alertBox) alertBox.innerHTML = '로그인이 필요합니다. <a href="/users/login">로그인</a>';
      return false;
    }
  }

  async function loadPoints() {
    try {
      const p = await apiGet('/users/me/points');
      const val = (p && (p.balance != null ? p.balance : p.currentPoint)) || 0;
      document.getElementById('kpiPoints').textContent = String(val);
    } catch {}
  }

  async function loadCoupons() {
    try {
      // available coupons count
      const res = await apiGet('/users/me/coupons/available');
      const list = res && res.data ? res.data : [];
      document.getElementById('kpiCoupons').textContent = String(list.length || 0);
    } catch {}
  }

  async function loadWishlist() {
    try {
      const res = await fetch("/api/users/me/wishlist/count", { credentials: "include" });
      if (res.ok) {
        document.getElementById("kpiWish").textContent = await res.text();
      }
    } catch (e) {
      console.error("위시리스트 카운트 불러오기 실패", e);
    }
  }

  async function loadOrders() {
    const ul = document.getElementById('orderList');
    if (!ul) return;
    try {
      const resp = await apiGet('/orders/my');
      const orders = (resp && resp.data) || [];
      if (!orders.length) {
        ul.innerHTML = '<li class="empty">주문 내역이 없습니다.</li>';
        return;
      }
      const items = orders.slice(0,5).map(o => {
        const id = o.orderId || o.id;
        const status = o.status || '';
        const amount = o.totalAmount != null ? o.totalAmount : '';
        return `<li><span>#${id}</span><span>${status}</span></li>`;
      }).join('');
      ul.innerHTML = items;
    } catch (e) {
      ul.innerHTML = '<li class="empty">주문 내역을 불러오지 못했습니다.</li>';
    }
  }

  async function init() {
    const ok = await loadProfile();
    if (!ok) return;
    await loadPoints();
    await loadCoupons();
    await loadWishlist();
    await loadOrders();
  }

  document.addEventListener('DOMContentLoaded', init);
})();

// Address management
(function(){
  const json = async (res) => { const t = await res.text(); try { return t ? JSON.parse(t) : null; } catch { return t; } };
  const apiGet = async (url) => { const r = await fetch(url, { credentials: 'same-origin' }); if(!r.ok) throw new Error(await r.text()); return json(r); };
  const apiPost = async (url, body) => { const r = await fetch(url, { method:'POST', headers:{'Content-Type':'application/json'}, credentials:'same-origin', body: JSON.stringify(body||{}) }); if(!r.ok) throw new Error(await r.text()); return json(r); };
  const apiPatch = async (url, body) => { const r = await fetch(url, { method:'PATCH', headers:{'Content-Type':'application/json'}, credentials:'same-origin', body: JSON.stringify(body||{}) }); if(!r.ok) throw new Error(await r.text()); return json(r); };
  const apiDelete = async (url) => { const r = await fetch(url, { method:'DELETE', credentials:'same-origin' }); if(!r.ok) throw new Error(await r.text()); return true; };

  function $id(id){ return document.getElementById(id); }
  function alertMsg(msg){ const el=$id('addrAlert'); if(el){ el.textContent = msg||''; } }
  function getUserId(){ return (window.PersomeUser && window.PersomeUser.id) ? window.PersomeUser.id : null; }

  async function loadAddress(){
    const uid = getUserId(); if(!uid) return;
    try {
      const a = await fetch(`/users/${uid}/addresses`, { credentials:'same-origin' });
      if (!a.ok) throw new Error(await a.text());
      const data = await a.json();
      if (!data) return;
      $id('addrId').value = data.id || '';
      $id('a_label').value = data.label || '';
      $id('a_zip').value = data.zip || '';
      $id('a_road').value = data.roadAddr || '';
      $id('a_jibun').value = data.jibunAddr || '';
      $id('a_detail').value = data.addrDetail || '';
      $id('a_default').checked = !!data.isdefaultShipping;
      alertMsg('');
    } catch (e) {
      // 주소 없거나 오류 -> 초기 상태
      $id('addrId').value = '';
      $id('a_label').value = '';
      $id('a_zip').value = '';
      $id('a_road').value = '';
      $id('a_jibun').value = '';
      $id('a_detail').value = '';
      $id('a_default').checked = false;
      alertMsg('등록된 배송지가 없습니다. 새로 저장하세요.');
    }
  }

  function collect(){
    return {
      label: $id('a_label').value || null,
      zip: $id('a_zip').value || null,
      roadAddr: $id('a_road').value || null,
      jibunAddr: $id('a_jibun').value || null,
      addrDetail: $id('a_detail').value || null,
      isdefaultShipping: $id('a_default').checked
    };
  }

  function resetForm(){
    $id('addrId').value='';
    $id('a_label').value='';
    $id('a_zip').value='';
    $id('a_road').value='';
    $id('a_jibun').value='';
    $id('a_detail').value='';
    $id('a_default').checked=false;
    alertMsg('');
  }

  function setupAddressForm(){
    const uid = getUserId();
    if (!uid || !$id('addrForm')) return;

    loadAddress();

    $id('btnAddrSave').addEventListener('click', async ()=>{
      const id = $id('addrId').value;
      const body = collect();
      try {
        if (id) {
          const res = await fetch(`/users/${uid}/addresses/${id}`, { method:'PATCH', headers:{'Content-Type':'application/json'}, credentials:'same-origin', body: JSON.stringify(body) });
          if (!res.ok) throw new Error(await res.text());
          alertMsg('수정되었습니다.');
        } else {
          const res = await fetch(`/users/${uid}/addresses`, { method:'POST', headers:{'Content-Type':'application/json'}, credentials:'same-origin', body: JSON.stringify(body) });
          if (!res.ok) throw new Error(await res.text());
          const data = await res.json();
          $id('addrId').value = (data && data.id) || '';
          alertMsg('저장되었습니다.');
        }
      } catch (e) {
        alertMsg(e.message || '저장 중 오류가 발생했습니다.');
      }
    });

    $id('btnAddrDelete').addEventListener('click', async ()=>{
      const id = $id('addrId').value;
      if (!id) { alertMsg('삭제할 배송지가 없습니다.'); return; }
      if (!confirm('정말 삭제하시겠습니까?')) return;
      try {
        const res = await fetch(`/users/${uid}/addresses/${id}`, { method:'DELETE', credentials:'same-origin' });
        if (!res.ok) throw new Error(await res.text());
        resetForm();
        alertMsg('삭제되었습니다.');
      } catch (e) {
        alertMsg(e.message || '삭제 중 오류가 발생했습니다.');
      }
    });

    $id('btnAddrReset').addEventListener('click', ()=>{ resetForm(); });
  }

  window.setupAddressForm = setupAddressForm;
})();
