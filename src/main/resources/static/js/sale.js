(function () {
    const state = {
        sort: 'popular',
        size: 80
    };

    const selectors = {
        grid: document.getElementById('sale-grid'),
        empty: document.getElementById('sale-empty'),
        title: document.getElementById('sale-title'),
        description: document.getElementById('sale-description'),
        sortButtons: document.querySelectorAll('#sale-sort button')
    };

    if (!selectors.grid || !selectors.empty || !selectors.title || !selectors.description) {
        console.error('[sale] 필수 요소가 누락되었습니다.');
        return;
    }

    if (document.readyState === 'loading') {
        document.addEventListener('DOMContentLoaded', init);
    } else {
        init();
    }

    function init() {
        bindSortButtons();
        loadProducts();
    }

    function bindSortButtons() {
        selectors.sortButtons.forEach(button => {
            button.addEventListener('click', () => {
                const sortKey = button.dataset.sort;
                if (!sortKey || sortKey === state.sort) {
                    return;
                }
                state.sort = sortKey;
                updateSortActive();
                loadProducts();
            });
        });
    }

    function updateSortActive() {
        selectors.sortButtons.forEach(button => {
            if (button.dataset.sort === state.sort) {
                button.classList.add('active');
            } else {
                button.classList.remove('active');
            }
        });
    }

    async function loadProducts() {
        setEmptyState('세일 상품을 불러오는 중입니다.', false);
        selectors.grid.innerHTML = '';

        const params = new URLSearchParams();
        params.set('size', String(state.size));
        params.set('sort', state.sort);

        try {
            const response = await fetch(`/api/sale/products?${params.toString()}`, {
                headers: { 'Accept': 'application/json' }
            });

            if (!response.ok) {
                throw new Error(`응답 오류: ${response.status}`);
            }

            const data = await response.json();
            const products = Array.isArray(data?.products) ? data.products : [];
            renderProducts(products);
        } catch (error) {
            console.error('[sale] 상품 로딩 실패', error);
            setEmptyState('세일 상품을 불러오지 못했습니다. 잠시 후 다시 시도해주세요.', false);
        }
    }

    function renderProducts(products) {
        if (!products || products.length === 0) {
            selectors.grid.innerHTML = '';
            setEmptyState('현재 진행 중인 세일 상품이 없습니다.', false);
            selectors.title.textContent = '세일 상품';
            selectors.description.textContent = '진행 중인 세일 상품이 준비 중입니다.';
            return;
        }

        selectors.empty.hidden = true;
        selectors.grid.innerHTML = '';

        const fragment = document.createDocumentFragment();
        products.forEach((product, index) => {
            const card = document.createElement('article');
            card.className = 'sale-card';

            const productLink = `/products/${product?.product_id ?? ''}`;
            const productName = escapeHtml(product?.name ?? '상품명 없음');
            const brandName = escapeHtml(product?.brandName ?? '');
            const imageUrl = pickPrimaryImage(product?.imgs);
            const priceMarkup = buildPriceMarkup(product?.price);
            const rank = index + 1;

            const thumb = document.createElement('a');
            thumb.className = 'sale-card__thumb';
            thumb.href = productLink;
            thumb.innerHTML = `<img src="${imageUrl}" alt="${productName}">`;

            card.appendChild(thumb);

            if (rank <= 4) {
                const badge = document.createElement('div');
                badge.className = 'sale-card__badge';
                badge.innerHTML = '<img src="/images/best-badge.svg" alt="베스트">';
                card.appendChild(badge);
            } else {
                const rankBadge = document.createElement('div');
                rankBadge.className = 'sale-card__rank';
                rankBadge.textContent = rank;
                card.appendChild(rankBadge);
            }

            const body = document.createElement('div');
            body.className = 'sale-card__body';
            body.innerHTML = `
                <p class="sale-card__brand">${brandName}</p>
                <a class="sale-card__name" href="${productLink}">${productName}</a>
                <div class="sale-card__price">${priceMarkup}</div>
            `;

            card.appendChild(body);
            fragment.appendChild(card);
        });

        selectors.grid.appendChild(fragment);
        selectors.title.textContent = '세일 상품';
        selectors.description.textContent = '퍼솜에서 제공하는 특가 상품들을 만나보세요.';
    }

    function buildPriceMarkup(priceList) {
        if (!Array.isArray(priceList) || priceList.length === 0) {
            return '<span class="sale-card__price-main">가격 정보 없음</span>';
        }

        const sale = findPrice(priceList, 'SALE');
        const original = findPrice(priceList, 'ORIGINAL');

        const main = sale ?? original ?? priceList[0];
        const mainText = formatCurrency(main?.price);

        let markup = `<span class="sale-card__price-main">${mainText}</span>`;
        if (sale && original && original.price && original.price !== sale.price) {
            markup += `<span class="sale-card__price-original">${formatCurrency(original.price)}</span>`;
        }
        return markup;
    }

    function findPrice(prices, type) {
        return prices.find(p => p?.type === type);
    }

    function pickPrimaryImage(imgs) {
        if (!Array.isArray(imgs) || imgs.length === 0) {
            return buildPlaceholderImage();
        }
        const sorted = [...imgs].sort((a, b) => (a?.imgOrder ?? 0) - (b?.imgOrder ?? 0));
        return sorted[0]?.imgUrl || buildPlaceholderImage();
    }

    function formatCurrency(value) {
        if (typeof value !== 'number') {
            return '가격 정보 없음';
        }
        return `${value.toLocaleString('ko-KR')}원`;
    }

    function setEmptyState(message, hidden) {
        selectors.empty.textContent = message;
        selectors.empty.hidden = hidden;
    }

    function escapeHtml(str) {
        if (typeof str !== 'string') {
            return '';
        }
        return str
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
                        <stop offset="0%" stop-color="#ffe6d1" />
                        <stop offset="100%" stop-color="#ffc7a0" />
                    </linearGradient>
                </defs>
                <rect width="200" height="200" rx="24" fill="url(#grad)" />
                <path d="M60 138l28-36 20 26 24-34 36 54H60z" fill="#fff" opacity="0.7" />
                <circle cx="90" cy="74" r="18" fill="#fff" opacity="0.8" />
                <text x="50%" y="170" text-anchor="middle" font-size="16" fill="#ffffff" opacity="0.75" font-family="'Noto Sans KR', sans-serif">SALE</text>
            </svg>`;
        return `data:image/svg+xml;charset=UTF-8,${encodeURIComponent(svg.replace(/\n|\s{2,}/g, ' '))}`;
    }
})();
