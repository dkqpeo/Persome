
    (function() {
    // URL 파라미터에서 카테고리 정보 추출
    const urlParams = new URLSearchParams(window.location.search);

    const state = {
    keyword: urlParams.get('keyword') || 'none',
    page: parseInt(urlParams.get('page') || '0', 10),
    size: parseInt(urlParams.get('size') || '24', 10),
    sort: urlParams.get('sort') || 'POPULAR'
};

    // 페이지 제목과 브레드크럼 업데이트
    document.addEventListener('DOMContentLoaded', function() {
    updatePageInfo();
});

    // API 엔드포인트 (실제 경로로 변경 가능)
    // 사용자 요청: localhost:8080/api/products 사용
    const API_ENDPOINT = '/api/products/search';

    const $grid = document.getElementById('product-grid');
    const $pgn  = document.getElementById('pagination');
    const $cnt  = document.getElementById('result-count');

    // 페이지 정보 업데이트 함수
    function updatePageInfo() {
    // 페이지 제목 업데이트
    const pageTitle = document.querySelector('.page-title');
    if (state.keyword && state.keyword !== 'none') {
    pageTitle.textContent = `'${state.keyword}'에 대한 검색결과`;
    // 페이지 제목 태그 업데이트
    document.title = state.keyword + ' 검색 - PERSOME';
} else {
    pageTitle.textContent = '상품 검색';
    document.title = '상품 검색 - PERSOME';
}
}

    // 정렬 탭
    document.getElementById('sort-tabs').addEventListener('click', (e) => {
    if (e.target.tagName !== 'BUTTON') return;
    document.querySelectorAll('#sort-tabs button').forEach(b => b.classList.remove('active'));
    e.target.classList.add('active');
    state.sort = e.target.dataset.sort;
    state.page = 0;
    load();
});

    // VIEW 24/36
    document.querySelectorAll('.view-size button').forEach(btn => {
    btn.addEventListener('click', () => {
    document.querySelectorAll('.view-size button').forEach(b => b.classList.remove('active'));
    btn.classList.add('active');
    state.size = parseInt(btn.dataset.size, 10);
    state.page = 0;
    load();
});
});


    function qs(params) {
    const p = new URLSearchParams();
    p.set('keyword', state.keyword)
    p.set('page', state.page);
    p.set('size', state.size);
    if (state.sort) p.set('sort', state.sort);
    return p.toString();
}

    async function load() {
    try {
    const url = `${API_ENDPOINT}?${qs()}`;
    const res = await fetch(url, { headers: { 'Accept': 'application/json' }});
    if (!res.ok) throw new Error('API 호출 실패: ' + res.status);
    const json = await res.json(); // PageProductAllResponse

    console.log("resp data : ", json);

    renderCount(json);
    renderProducts(json.products || []);
    renderPagination(json);
} catch (err) {
    console.error(err);
    $grid.innerHTML = '<p>상품을 불러오지 못했습니다. 잠시 후 다시 시도해주세요.</p>';
}
}

    function renderCount(p) {
    const total = p.totalElements ?? 0;
    // const catName = (state.secondCategory && state.secondCategory !== 'none') ? state.secondCategory : state.firstCategory;
    $cnt.textContent = `${state.keyword}에 대한 ${total}개의 상품이 등록되어 있습니다.`;
}

    function currency(n) {
    if (n == null) return '';
    return n.toLocaleString('ko-KR');
}

    function primaryImage(imgs = []) {
    if (!Array.isArray(imgs) || !imgs.length) {
    return '/images/noimg.png';
}
    const sorted = [...imgs].sort((a, b) => (a?.imgOrder ?? 0) - (b?.imgOrder ?? 0));
    return sorted[0]?.imgUrl || '/images/noimg.png';
}

    function resolvePrice(priceList = []) {
    if (!Array.isArray(priceList) || !priceList.length) {
    return { salePrice: null, originalPrice: null };
}
    const salePrice = priceList.find(p => p?.type === 'SALE')?.price ?? null;
    const originalPrice = priceList.find(p => p?.type === 'ORIGINAL')?.price ?? null;

    if (salePrice != null) {
    return { salePrice, originalPrice: originalPrice ?? salePrice };
}

    return { salePrice: originalPrice, originalPrice: null };
}

    function renderProducts(list) {
    if (!list.length) {
    $grid.innerHTML = '<p>상품이 없습니다.</p>';
    return;
}
    const html = list.map(p => {
    const { salePrice, originalPrice } = resolvePrice(p.price);
    const img = primaryImage(p.imgs);
    const priceText = salePrice != null ? `${currency(salePrice)}원` : '';
    const original = (salePrice != null && originalPrice != null && originalPrice > salePrice)
    ? `<span class="original">${currency(originalPrice)}원</span>` : '';
    const badges = [
    p.onSale ? '<span class="badge">세일</span>' : '',
    p.hasCoupon ? '<span class="badge">쿠폰</span>' : '',
    p.hasGift ? '<span class="badge">증정</span>' : '',
    p.todayDelivery ? '<span class="badge">오늘드림</span>' : ''
    ].join('');

    return `
                <div class="card">
                    <a href="/products/${p.product_id}">
                        <img class="thumb" src="${img}" alt="상품 이미지"/>
                    </a>
                    <a href="/products/${p.product_id}" class="brand">${p.brandName ?? ''}</a>
                    <a href="/products/${p.product_id}" class="name">${escapeHtml(p.name ?? '')}</a>
                    <div class="price-area">
                        <span class="price">${priceText}</span>
                        ${original}
                    </div>
                    <div class="badges">${badges}</div>
                    <div class="actions">
                        <!--<button class="btn">장바구니</button>
                        <button class="btn primary">바로구매</button>-->
                    </div>
                </div>
            `;
}).join('');
    $grid.innerHTML = html;
}

    function renderPagination(p) {
    const cur = p.currentPage ?? 0;
    const totalPages = p.totalPages ?? 0;

    if (totalPages <= 1) {
    $pgn.innerHTML = '';
    return;
}

    let buttons = '';
    if (p.hasPrevious) {
    buttons += `<button data-page="${cur-1}">이전</button>`;
}

    const windowSize = 10;
    const start = Math.max(0, Math.min(cur - Math.floor(windowSize/2), totalPages - windowSize));
    const end = Math.min(totalPages, start + windowSize);

    for (let i = start; i < end; i++) {
    buttons += `<button data-page="${i}" class="${i===cur ? 'active':''}">${i+1}</button>`;
}

    if (p.hasNext) {
    buttons += `<button data-page="${cur+1}">다음</button>`;
}

    $pgn.innerHTML = buttons;

    $pgn.querySelectorAll('button').forEach(btn => {
    btn.addEventListener('click', () => {
    const to = parseInt(btn.dataset.page, 10);
    if (!isNaN(to)) {
    state.page = to;
    load();
}
});
});
}

    function escapeHtml(str) {
    return String(str)
    .replaceAll('&', '&amp;')
    .replaceAll('<', '&lt;')
    .replaceAll('>', '&gt;')
    .replaceAll('"', '&quot;')
    .replaceAll("'", '&#39;');
}

    // 초기 로드
    load();
})();