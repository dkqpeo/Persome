// Category page for 스킨케어 and its children
(function() {
  const json = async (res) => { const t = await res.text(); try { return t ? JSON.parse(t) : null; } catch { return t; } };
  const apiGet = async (url) => { const r = await fetch(encodeURI(url), { credentials: 'same-origin' }); if(!r.ok) throw new Error(await r.text()); return json(r); };

  const FIRST = '스킨케어';

  function qs(name) { const u = new URL(location.href); return u.searchParams.get(name); }
  function fmtWon(n) { if (n == null) return ''; try { return Number(n).toLocaleString('ko-KR') + '원'; } catch { return String(n); } }
  function firstImg(p) {
    const imgs = p.imgs || p.images || [];
    if (!imgs || !imgs.length) return '/images/banner-sample.jpg';
    const first = imgs.find(i => i.imgOrder === 0) || imgs[0];
    return first.imgUrl || '/images/banner-sample.jpg';
  }
  function minPrice(p) {
    const prices = p.price || p.prices || [];
    if (!prices.length) return '';
    const m = prices.reduce((a,c)=> a==null||c.price<a?c.price:a, null);
    return fmtWon(m);
  }
  function card(p) {
    const id = p.product_id || p.id;
    return `
      <a class="card" href="/product/?id=${id}" style="text-decoration:none;color:inherit">
        <img src="${firstImg(p)}" alt="${p.name || ''}" />
        <div class="nm">${p.name || ''}</div>
        <div class="pr">${minPrice(p)}</div>
      </a>
    `;
  }

  function buildPager(container, page, totalPages, onClick) {
    if (!container) return;
    let html = '';
    for (let i=0;i<totalPages;i++) {
      html += `<button data-p="${i}" class="${i===page?'active':''}">${i+1}</button>`;
    }
    container.innerHTML = html;
    container.addEventListener('click', (e) => {
      const b = e.target.closest('button[data-p]');
      if (!b) return;
      onClick(Number(b.getAttribute('data-p')));
    }, { once: true });
  }

  async function loadProducts(ctx) {
    const title = document.getElementById('prodTitle');
    const grid = document.getElementById('prodGrid');
    const pager = document.getElementById('pager');
    const sizeSel = document.getElementById('pageSize');
    const size = Number(sizeSel ? sizeSel.value : 24);
    const q = new URLSearchParams({
      firstCategory: ctx.first,
      secondCategory: ctx.second || 'none',
      thirdCategory: ctx.third || 'none',
      page: String(ctx.page || 0),
      size: String(size)
    }).toString();
    try {
      const data = await apiGet(`/categories/products?${q}`);
      const list = (data && data.products) || [];
      if (!list.length) {
        // Fallback: load general products list so the page isn't empty
        try {
          const all = await apiGet(`/products?page=${ctx.page || 0}&size=${size}`);
          const list2 = (all && all.products) || [];
          grid.innerHTML = list2.length ? list2.map(card).join('') : '<p>상품이 없습니다.</p>';
          title.textContent = [ctx.first, ctx.second, ctx.third].filter(Boolean).join(' > ') || '전체 상품';
          buildPager(pager, all.currentPage || 0, all.totalPages || 1, (p)=>{ ctx.page=p; loadProducts(ctx); });
          return;
        } catch (e2) {
          grid.innerHTML = '<p>상품을 불러오지 못했습니다.</p>';
          pager.innerHTML = '';
          return;
        }
      } else {
        grid.innerHTML = list.map(card).join('');
        title.textContent = [ctx.first, ctx.second, ctx.third].filter(Boolean).join(' > ');
        buildPager(pager, data.currentPage || 0, data.totalPages || 1, (p)=>{
          ctx.page = p; loadProducts(ctx);
        });
      }
    } catch (e) {
      grid.innerHTML = '<p>상품을 불러오지 못했습니다.</p>';
      pager.innerHTML = '';
    }
  }

  function renderSide(items, ctx) {
    const box = document.getElementById('sideCats');
    if (!box) return;
    const seconds = items.filter(it => it.firstCategoryName === FIRST);
    let html = '';
    seconds.forEach(sec => {
      html += `<div class="cat">
        <div class="name">${sec.secondCategoryName}</div>
        <ul>
          <li><a href="#" data-second="${sec.secondCategoryName}" class="${ctx.second===sec.secondCategoryName && !ctx.third ? 'active':''}">전체</a></li>
          ${(sec.thirdCategories||[]).map(th=>`<li><a href="#" data-second="${sec.secondCategoryName}" data-third="${th.thirdCategoryName}" class="${ctx.third===th.thirdCategoryName?'active':''}">${th.thirdCategoryName}</a></li>`).join('')}
        </ul>
      </div>`;
    });
    box.innerHTML = html;
    box.addEventListener('click', (e) => {
      const a = e.target.closest('a[data-second]');
      if (!a) return;
      e.preventDefault();
      ctx.second = a.getAttribute('data-second');
      ctx.third = a.getAttribute('data-third') || '';
      ctx.page = 0;
      // update active states
      box.querySelectorAll('a').forEach(el=>el.classList.remove('active'));
      a.classList.add('active');
      loadProducts(ctx);
    });
  }

  async function init() {
    const ctx = {
      first: FIRST,
      second: qs('second') || '',
      third: qs('third') || '',
      page: Number(qs('page')||'0')
    };

    // Fill sidebar
    try {
      const cats = await apiGet('/categories');
      renderSide(cats || [], ctx);
    } catch {}

    const sizeSel = document.getElementById('pageSize');
    if (sizeSel) sizeSel.addEventListener('change', ()=>{ ctx.page=0; loadProducts(ctx); });
    loadProducts(ctx);
  }

  document.addEventListener('DOMContentLoaded', init);
})();
