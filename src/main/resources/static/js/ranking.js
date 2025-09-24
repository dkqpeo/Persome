(function () {
    const state = {
        first: '전체',
        second: 'none',
        third: 'none'
    };

    const tabsEl = document.getElementById('ranking-tabs');
    const filtersEl = document.getElementById('subcategory-filters');
    const secondGroupEl = document.getElementById('second-chips');
    const thirdGroupEl = document.getElementById('third-chips');
    const thirdFilterEl = document.getElementById('third-filter');
    const gridEl = document.getElementById('ranking-grid');
    const emptyEl = document.getElementById('ranking-empty');
    const titleEl = document.getElementById('ranking-title');
    const descEl = document.getElementById('ranking-description');

    let categoryGroups = new Map();
    const NO_IMAGE_PLACEHOLDER = buildPlaceholderImage();
    // 1차 카테고리 노출 순서를 제어한다.
    const CATEGORY_ORDER = [
        '스킨케어',
        '마스크팩',
        '선케어',
        '메이크업',
        '바디케어',
        '헤어케어',
        '향수/디퓨저',
        '남성케어',
        '건강식품',
        '라이프스타일'
    ];

    if (document.readyState === 'loading') {
        document.addEventListener('DOMContentLoaded', init);
    } else {
        init();
    }

    async function init() {
        await loadCategories();
        renderTabs();
        renderFilters();
        await loadProducts();
    }

    async function loadCategories() {
        try {
            const res = await fetch('/api/ranking/categories', { headers: { 'Accept': 'application/json' } });
            if (!res.ok) {
                throw new Error('카테고리 응답 오류');
            }
            const data = await res.json();
            categoryGroups = buildCategoryGroups(Array.isArray(data) ? data : []);
        } catch (err) {
            console.error('[ranking] 카테고리 로딩 실패', err);
            categoryGroups = new Map();
        }
    }

    function buildCategoryGroups(list) {
        const groups = new Map();
        list.forEach(item => {
            if (!item || !item.firstCategoryName || !item.secondCategoryName) {
                return;
            }
            const firstName = item.firstCategoryName;
            if (!groups.has(firstName)) {
                groups.set(firstName, {
                    firstCategoryId: item.firstCategoryId,
                    firstCategoryName: firstName,
                    seconds: []
                });
            }

            const group = groups.get(firstName);
            group.seconds.push({
                secondCategoryId: item.secondCategoryId,
                secondCategoryName: item.secondCategoryName,
                thirdCategories: Array.isArray(item.thirdCategories) ? item.thirdCategories : []
            });
        });

        // 정렬: 1차 이름순, 2차 이름순
        const collator = new Intl.Collator('ko');
        groups.forEach(group => {
            group.seconds.sort((a, b) => collator.compare(a.secondCategoryName, b.secondCategoryName));
        });

        // 1차 카테고리는 지정된 순서를 우선 적용하고, 나머지는 가나다순으로 정렬한다.
        return new Map([...groups.entries()].sort((a, b) => {
            const aOrder = orderIndex(a[0]);
            const bOrder = orderIndex(b[0]);
            if (aOrder !== bOrder) {
                return aOrder - bOrder;
            }
            return collator.compare(a[0], b[0]);
        }));

        function orderIndex(name) {
            const idx = CATEGORY_ORDER.indexOf(name);
            return idx === -1 ? CATEGORY_ORDER.length + 100 : idx;
        }
    }

    function renderTabs() {
        tabsEl.innerHTML = '';

        const fragment = document.createDocumentFragment();
        fragment.appendChild(createTabButton('전체'));

        categoryGroups.forEach(group => {
            fragment.appendChild(createTabButton(group.firstCategoryName));
        });

        tabsEl.appendChild(fragment);
        updateTabActive();
    }

    function createTabButton(label) {
        const button = document.createElement('button');
        button.type = 'button';
        button.textContent = label;
        button.dataset.first = label;
        button.addEventListener('click', () => {
            if (state.first === label) {
                return;
            }
            state.first = label;
            state.second = 'none';
            state.third = 'none';
            updateTabActive();
            renderFilters();
            loadProducts();
        });
        return button;
    }

    function updateTabActive() {
        const buttons = tabsEl.querySelectorAll('button');
        buttons.forEach(btn => {
            if (btn.dataset.first === state.first) {
                btn.classList.add('active');
            } else {
                btn.classList.remove('active');
            }
        });
    }

    function renderFilters() {
        const shouldHide = state.first === '전체' || !categoryGroups.has(state.first);

        if (shouldHide) {
            filtersEl.hidden = true;
            filtersEl.style.display = 'none';
            secondGroupEl.innerHTML = '';
            thirdGroupEl.innerHTML = '';
            thirdFilterEl.hidden = true;
            thirdFilterEl.style.display = 'none';
            return;
        }

        const group = categoryGroups.get(state.first);
        filtersEl.hidden = false;
        filtersEl.style.display = 'flex';

        renderSecondChips(group);
        renderThirdChips(group);
    }

    function renderSecondChips(group) {
        secondGroupEl.innerHTML = '';
        const fragment = document.createDocumentFragment();

        fragment.appendChild(createFilterChip('전체', 'second', 'none'));

        const seen = new Set();
        group.seconds.forEach(second => {
            const label = second.secondCategoryName;
            if (!label || seen.has(label)) {
                return;
            }
            seen.add(label);
            fragment.appendChild(createFilterChip(label, 'second', label));
        });

        secondGroupEl.appendChild(fragment);
    }

    function renderThirdChips(group) {
        if (state.second === 'none') {
            thirdGroupEl.innerHTML = '';
            thirdFilterEl.hidden = true;
            thirdFilterEl.style.display = 'none';
            return;
        }

        const targetSecond = group.seconds.find(second => second.secondCategoryName === state.second);

        if (!targetSecond || !Array.isArray(targetSecond.thirdCategories) || targetSecond.thirdCategories.length === 0) {
            thirdGroupEl.innerHTML = '';
            thirdFilterEl.hidden = true;
            thirdFilterEl.style.display = 'none';
            return;
        }

        thirdFilterEl.hidden = false;
        thirdFilterEl.style.display = 'flex';
        thirdGroupEl.innerHTML = '';
        const fragment = document.createDocumentFragment();

        fragment.appendChild(createFilterChip('전체', 'third', 'none'));

        const seen = new Set();
        targetSecond.thirdCategories.forEach(third => {
            const label = third?.thirdCategoryName;
            if (!label || seen.has(label)) {
                return;
            }
            seen.add(label);
            fragment.appendChild(createFilterChip(label, 'third', label));
        });

        thirdGroupEl.appendChild(fragment);
    }

    function createFilterChip(label, type, value) {
        const button = document.createElement('button');
        button.type = 'button';
        button.className = 'chip';
        button.textContent = label;

        const isActive = (type === 'second' && state.second === value)
            || (type === 'third' && state.third === value);
        if (isActive) {
            button.classList.add('active');
        }

        button.addEventListener('click', () => {
            if (type === 'second') {
                if (state.second === value) {
                    return;
                }
                state.second = value;
                state.third = 'none';
                renderFilters();
                loadProducts();
                return;
            }

            if (type === 'third') {
                if (state.third === value) {
                    return;
                }
                state.third = value;
                renderFilters();
                loadProducts();
            }
        });

        return button;
    }

    async function loadProducts() {
        gridEl.innerHTML = '';
        emptyEl.textContent = '랭킹을 불러오는 중입니다.';
        emptyEl.hidden = false;

        try {
            const url = buildRankingUrl();
            const res = await fetch(url, { headers: { 'Accept': 'application/json' } });
            if (!res.ok) {
                throw new Error('랭킹 응답 오류');
            }
            const data = await res.json();
            const products = Array.isArray(data?.products) ? data.products : [];
            renderProducts(products, data);
        } catch (err) {
            console.error('[ranking] 랭킹 로딩 실패', err);
            showError('랭킹 정보를 불러오지 못했습니다. 잠시 후 다시 시도해주세요.');
        }
    }

    function buildRankingUrl() {
        const params = new URLSearchParams();
        params.set('size', '80');

        if (state.first === '전체') {
            params.set('firstCategory', 'all');
        } else {
            params.set('firstCategory', state.first);
            if (state.second !== 'none') {
                params.set('secondCategory', state.second);
            }
            if (state.third !== 'none') {
                params.set('thirdCategory', state.third);
            }
        }

        return `/api/ranking/products?${params.toString()}`;
    }

    function renderProducts(products, meta) {
        if (!Array.isArray(products) || products.length === 0) {
            gridEl.innerHTML = '';
            const display = resolveDisplayLabel(meta);
            emptyEl.textContent = `${display} 카테고리에 대한 상품이 없습니다.`;
            emptyEl.hidden = false;
            titleEl.textContent = `${display} 랭킹`;
            descEl.textContent = '조건에 맞는 상품을 찾지 못했습니다.';
            return;
        }

        emptyEl.hidden = true;

        const fragment = document.createDocumentFragment();

        products.forEach((product, index) => {
            const rank = index + 1;
            const card = document.createElement('article');
            card.className = 'ranking-card';
            if (rank <= 3) {
                card.classList.add(`rank-${rank}`);
            }

            const link = `/products/${product?.product_id ?? ''}`;
            const imageUrl = primaryImage(product?.imgs);
            const name = escapeHtml(product?.name ?? '상품명 없음');
            const brand = escapeHtml(product?.brandName ?? '');
            const categoryLabel = buildCategoryLabel(product);
            const pricing = buildPriceMarkup(product?.price);

            card.innerHTML = `
                <div class="rank-badge">${rank}</div>
                <a class="thumb" href="${link}">
                    <img src="${imageUrl}" alt="${name}">
                </a>
                <div class="card-info">
                    <p class="brand">${brand}</p>
                    <a class="name" href="${link}">${name}</a>
                    <p class="category-label">${escapeHtml(categoryLabel)}</p>
                    <div class="price-area">${pricing}</div>
                </div>
            `;

        fragment.appendChild(card);
    });

    gridEl.innerHTML = '';
    gridEl.appendChild(fragment);

        const display = resolveDisplayLabel(meta);
        titleEl.textContent = `${display} 랭킹`;
        descEl.textContent = `${display} 카테고리에서 선정한 ${products.length}개의 인기 상품입니다.`;
    }

    function showError(message) {
        gridEl.innerHTML = '';
        emptyEl.textContent = message;
        emptyEl.hidden = false;
    }

    function resolveDisplayLabel(meta) {
        if (meta?.displayCategory) {
            return meta.displayCategory;
        }
        if (state.first === '전체') {
            return '전체';
        }
        if (state.third !== 'none') {
            return state.third;
        }
        if (state.second !== 'none') {
            return state.second;
        }
        return state.first;
    }

    function buildCategoryLabel(product) {
        if (!product) {
            return '';
        }
        const segments = [product.firstCategory, product.secondCategory, product.thirdCategory]
            .filter(Boolean);
        return segments.join(' > ');
    }

    function buildPriceMarkup(priceList) {
        if (!Array.isArray(priceList) || priceList.length === 0) {
            return '<span class="price-original">가격 정보 없음</span>';
        }

        const sale = findPrice(priceList, 'SALE');
        const original = findPrice(priceList, 'ORIGINAL');
        const mainPrice = sale ?? original ?? priceList[0];
        const mainPriceText = formatCurrency(mainPrice?.price);
        const originalText = original && (!sale || original.price !== sale.price)
            ? formatCurrency(original.price)
            : null;

        let markup = `<span class="price-main">${mainPriceText}</span>`;
        if (sale && originalText) {
            markup += `<span class="price-original">${originalText}</span>`;
        }

        return markup;
    }

    function findPrice(prices, type) {
        return prices.find(p => p?.type === type);
    }

    function primaryImage(imgs) {
        if (!Array.isArray(imgs) || imgs.length === 0) {
            return NO_IMAGE_PLACEHOLDER;
        }
        const sorted = [...imgs].sort((a, b) => (a?.imgOrder ?? 0) - (b?.imgOrder ?? 0));
        return sorted[0]?.imgUrl || NO_IMAGE_PLACEHOLDER;
    }

    function formatCurrency(value) {
        if (typeof value !== 'number') {
            return '가격 정보 없음';
        }
        return `${value.toLocaleString('ko-KR')}원`;
    }

    function escapeHtml(str) {
        if (!str) {
            return '';
        }
        return String(str)
            .replace(/&/g, '&amp;')
            .replace(/</g, '&lt;')
            .replace(/>/g, '&gt;')
            .replace(/"/g, '&quot;')
            .replace(/'/g, '&#39;');
    }

    function buildPlaceholderImage() {
        const svg = `
            <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 200">
                <defs>
                    <linearGradient id="grad" x1="0%" y1="0%" x2="100%" y2="100%">
                        <stop offset="0%" stop-color="#ede4f4" />
                        <stop offset="100%" stop-color="#c9b7e6" />
                    </linearGradient>
                </defs>
                <rect width="200" height="200" fill="url(#grad)" rx="24"/>
                <path d="M72 128l20-24 16 20 20-28 32 48H40l32-44z" fill="#fff" opacity="0.65"/>
                <circle cx="82" cy="76" r="18" fill="#fff" opacity="0.75"/>
                <text x="50%" y="170" text-anchor="middle" font-size="18" fill="#ffffff" opacity="0.7" font-family="'Noto Sans KR', sans-serif">이미지 준비중</text>
            </svg>`;
        return `data:image/svg+xml;charset=UTF-8,${encodeURIComponent(svg.replace(/\n|\s{2,}/g, ' '))}`;
    }
})();
