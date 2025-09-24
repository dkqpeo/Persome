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

  async function init() {
    const ok = await loadProfile();
    if (!ok) return;
    await loadPoints();
    await loadCoupons();
    await loadWishlist();
  }

  document.addEventListener('DOMContentLoaded', init);
})();
