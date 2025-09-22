// Injects site header and wires login/cart state without Thymeleaf
(function(){
  function h(html){ const d=document.createElement('div'); d.innerHTML=html.trim(); return d.firstChild; }

  async function getJSON(url){ try{ const r=await fetch(url,{credentials:'same-origin'}); if(!r.ok) throw 0; const t=await r.text(); return t?JSON.parse(t):null; }catch{ return null; } }

  async function renderHeader(){
    const mount = document.getElementById('siteHeader');
    if (!mount) return;
    // basic skeleton
    const node = h(`
      <header class="site-header">
        <div class="top-nav" id="hdrTop"></div>
        <div class="header-main">
          <div class="logo"><h1><a href="/">PERS<span class="logo-o">O</span>ME</a></h1></div>
          <div class="search-box">
            <form action="/category/index.html" method="get"><input type="text" name="q" placeholder="상품, 브랜드, 성분 검색"><button type="submit">🔍</button></form>
          </div>
          <div class="header-icons"></div>
        </div>
        <nav class="main-nav">
          <ul>
            <li><a href="/category/index.html">카테고리</a></li>
            <li><a href="/events/index.html">기획전</a></li>
            <li><a href="/orders/index.html">주문배송</a></li>
          </ul>
        </nav>
      </header>
    `);
    mount.replaceWith(node);

    // styles (simple copy of template styles)
    const style = document.createElement('style');
    style.textContent = `
      .site-header { border-bottom:1px solid #eee; padding:5px 20px; font-size:.9em; font-family: "Noto Sans KR", Arial, sans-serif; }
      .top-nav { text-align:right; font-size:.85em; color:#555; margin-bottom:10px; }
      .top-nav a { margin:0 5px; text-decoration:none; color:#555; }
      .header-main { position:relative; height:60px; margin-bottom:25px; }
      .logo { position:absolute; left:20px; top:50%; transform:translateY(-50%); }
      .logo h1 a { text-decoration:none; color:#4C3579; font-weight:bold; font-size:2em; }
      .logo .logo-o { color:#B4A0E0; }
      .search-box { position:absolute; left:50%; top:50%; transform:translate(-50%, -50%); }
      .search-box form { display:flex; align-items:center; border:2px solid #A68DC0; border-radius:20px; padding:2px 8px; width:350px; height:34px; position:relative; }
      .search-box input { flex:1; border:none; outline:none; font-size:.9em; padding:0 35px 0 10px; height:100%; }
      .search-box button { position:absolute; right:8px; top:50%; transform:translateY(-50%); border:none; background:none; cursor:pointer; padding:0; margin:0; width:18px; height:18px; font-size:16px; color:#666; }
      .main-nav ul { list-style:none; padding:0; display:flex; justify-content:space-around; font-weight:bold; margin-top:10px; }
      .main-nav li a { text-decoration:none; color:#222; padding:10px 15px; }
      .main-nav li a:hover { color:#A68DC0; }
    `;
    document.head.appendChild(style);

    // Fill top nav based on login state
    const me = await getJSON('/users/me');
    let topHTML = '';
    if (me && me.loginId) {
      topHTML = `
        <span>${me.name || me.loginId}</span>
        | <a href="/users/logout">로그아웃</a>
        | <a href="/mypage/index.html">마이페이지</a>
        | <a href="/cart/index.html">장바구니 (<span id="cartCount">0</span>)</a>
        | <a href="/orders/index.html">주문배송</a>
        | <a href="/help/index.html">고객센터</a>`;
    } else {
      topHTML = `
        <a href="/users/register">회원가입</a> |
        <a href="/users/login">로그인</a>
        | <a href="/cart/index.html">장바구니</a>
        | <a href="/orders/index.html">주문배송</a>
        | <a href="/help/index.html">고객센터</a>`;
    }
    document.getElementById('hdrTop').innerHTML = topHTML;

    // Update cart count if possible (reuse app.js if present)
    if (window.Persome && typeof window.Persome.updateHeaderCartCount==='function') {
      window.Persome.updateHeaderCartCount().catch(()=>{});
    }
  }

  document.addEventListener('DOMContentLoaded', renderHeader);
})();

