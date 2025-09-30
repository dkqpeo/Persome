// 페이지 로드 시 상품 데이터 가져오기
document.addEventListener('DOMContentLoaded', function() {

    const productId = getProductIdFromUrl();

    if (productId) {
        loadProductData(productId);
    } else {
        console.error('상품 ID를 찾을 수 없습니다.');
    }
});

// URL에서 상품 ID 추출
function getProductIdFromUrl() {
    const pathParts = window.location.pathname.split('/');

    // /product/123 형태
    const productIndex = pathParts.indexOf('product');

    if (productIndex !== -1 && pathParts[productIndex + 1]) {
        const id = pathParts[productIndex + 1];
        return id;
    }

    // /products/123 형태 (현재 URL 구조)
    const productsIndex = pathParts.indexOf('products');

    if (productsIndex !== -1 && pathParts[productsIndex + 1]) {
        const id = pathParts[productsIndex + 1];
        return id;
    }

    // URL 파라미터에서 찾기 (예: ?productId=123)
    const urlParams = new URLSearchParams(window.location.search);
    const paramId = urlParams.get('productId');
    return paramId;
}

// 서버에서 상품 데이터 로드
async function loadProductData(productId) {
    try {
        showLoading(true);

        const response = await fetch(`/api/products/${productId}`);

        if (!response.ok) {
            throw new Error(`HTTP error! status: ${response.status}`);
        }

        productData = await response.json();
        renderProductData(productData);

        // 위시리스트 상태 확인
        await checkWishlistStatus(productId);
        showLoading(false);

    } catch (error) {
        console.error('상품 데이터 로드 실패:', error);
        showError('상품 정보를 불러오는데 실패했습니다.');
        showLoading(false);
    }
}

// 상품 데이터를 화면에 렌더링
function renderProductData(product) {

    // 페이지 제목 설정
    document.title = `${product.name} - PERSOME`;

    // Breadcrumb 설정
    updateBreadcrumb(product);

    // 상품 이미지 설정
    updateProductImages(product.images);

    // 브랜드 및 상품명
    const brandBadge = document.querySelector('.brand-badge');
    const productTitle = document.querySelector('.product-title');

    if (brandBadge) brandBadge.textContent = product.brandName;
    if (productTitle) productTitle.textContent = product.name;

    // 평점 설정
    updateRating(product.ratingAvg);

    // 가격 설정
    updatePricing(product);

    // 옵션 설정
    updateOptions(product.options);

    // 상품 설명 설정
    const descDiv = document.querySelector('#description div');
    if (descDiv) {
        descDiv.innerHTML = product.description.replace(/\n/g, '<br>');
    }

    // 구매정보 탭 설정
    updateProductDetails(product);
}

// Breadcrumb 업데이트
function updateBreadcrumb(product) {
    const breadcrumb = document.querySelector('.breadcrumb');
    if (breadcrumb) {
        breadcrumb.innerHTML = `
                    <a href="/">홈</a> >
                    <a href="/categories/products?firstCategory=${encodeURIComponent(product.firstCategory)}">${product.firstCategory}</a> >
                    <a href="/categories/products?firstCategory=${encodeURIComponent(product.firstCategory)}&secondCategory=${encodeURIComponent(product.secondCategory)}">${product.secondCategory}</a> > 
                    <span>${product.thirdCategory}</span>
                `;
    }
}

// 상품 이미지 업데이트
function updateProductImages(images) {
    if (!images || images.length === 0) {
        document.querySelector('.main-image').src = '/images/no-image.jpg';
        imageList = [];
        updateNavigationButtons();
        return;
    }

    // 이미지를 순서대로 정렬
    images.sort((a, b) => a.imgOrder - b.imgOrder);
    imageList = images;
    currentImageIndex = 0;

    // 메인 이미지 설정
    document.querySelector('.main-image').src = images[0].imgUrl;

    // 썸네일 이미지 생성
    const thumbnailContainer = document.querySelector('.image-thumbnails');
    if (thumbnailContainer) {
        thumbnailContainer.innerHTML = '';

        images.forEach((image, index) => {
            const thumbnail = document.createElement('img');
            thumbnail.src = image.imgUrl;
            thumbnail.alt = `상품 이미지 ${index + 1}`;
            thumbnail.className = index === 0 ? 'thumbnail active' : 'thumbnail';
            thumbnail.onclick = () => changeMainImageByIndex(index);
            thumbnailContainer.appendChild(thumbnail);
        });
    }

    // 네비게이션 버튼 상태 업데이트
    updateNavigationButtons();
}

// 이미지 인덱스로 메인 이미지 변경
function changeMainImageByIndex(index) {
    if (index >= 0 && index < imageList.length) {
        currentImageIndex = index;
        const mainImage = document.getElementById('mainImage');
        if (mainImage) {
            mainImage.src = imageList[index].imgUrl;
        }

        // 썸네일 활성화 상태 업데이트
        updateThumbnailActive();
        updateNavigationButtons();
    }
}

// 이미지 네비게이션 (좌우 버튼)
function navigateImage(direction) {
    const newIndex = currentImageIndex + direction;
    if (newIndex >= 0 && newIndex < imageList.length) {
        changeMainImageByIndex(newIndex);
    }
}

// 썸네일 활성화 상태 업데이트
function updateThumbnailActive() {
    const thumbnails = document.querySelectorAll('.thumbnail');
    thumbnails.forEach((thumb, index) => {
        if (index === currentImageIndex) {
            thumb.classList.add('active');
        } else {
            thumb.classList.remove('active');
        }
    });
}

// 네비게이션 버튼 상태 업데이트
function updateNavigationButtons() {
    const prevBtn = document.getElementById('prevBtn');
    const nextBtn = document.getElementById('nextBtn');

    if (prevBtn && nextBtn) {
        // 이미지가 1개 이하면 버튼 숨기기
        if (imageList.length <= 1) {
            prevBtn.style.display = 'none';
            nextBtn.style.display = 'none';
            return;
        }

        prevBtn.style.display = 'flex';
        nextBtn.style.display = 'flex';

        // 첫 번째 이미지면 이전 버튼 비활성화
        prevBtn.disabled = (currentImageIndex === 0);

        // 마지막 이미지면 다음 버튼 비활성화
        nextBtn.disabled = (currentImageIndex === imageList.length - 1);
    }
}

// 평점 업데이트
function updateRating(ratingAvg) {
    const starsContainer = document.querySelector('.stars');
    const ratingText = document.querySelector('.rating-text');

    if (starsContainer) {
        starsContainer.innerHTML = '';

        for (let i = 1; i <= 5; i++) {
            const star = document.createElement('span');
            star.textContent = i <= ratingAvg ? '★' : '☆';
            starsContainer.appendChild(star);
        }
    }

    if (ratingText) {
        ratingText.textContent = `${ratingAvg}점`;
    }
}

// 가격 정보 업데이트
function updatePricing(product) {
    const pricingContainer = document.querySelector('.product-info .pricing');
    if (!pricingContainer) {
        return;
    }

    const prices = product.prices || [];
    const basePrice = Number(product.basePrice ?? (prices.length > 0 ? prices[0].price : 0));
    const discountedPrice = Number(product.discountedPrice ?? basePrice);
    const promotionApplied = Boolean(product.promotionApplied) && discountedPrice < basePrice;
    const discountRate = Number(product.discountRate ?? 0);

    currentPrice = discountedPrice || basePrice || 0;

    if (promotionApplied && basePrice > 0 && discountedPrice >= 0) {
        const badgeText = discountRate > 0 ? `-${discountRate}%` : '할인중';
        pricingContainer.innerHTML = `
            <div>
                <span class="original-price">${basePrice.toLocaleString()}원</span>
            </div>
            <div class="current-price">
                <span>${discountedPrice.toLocaleString()}원</span>
                <span class="discount-badge">${badgeText}</span>
            </div>
        `;
    } else {
        pricingContainer.innerHTML = `
            <div class="current-price">
                <span>${currentPrice.toLocaleString()}원</span>
            </div>
        `;
    }

    updateTotalPrice();
}

// 옵션 업데이트
function updateOptions(options) {
    const optionGroup = document.querySelector('.option-group');

    if (!options || options.length === 0) {
        if (optionGroup) optionGroup.style.display = 'none';
        return;
    }

    const optionSelect = document.querySelector('#optionSelect');
    if (!optionSelect) return;

    optionSelect.innerHTML = '<option value="">옵션을 선택해 주세요</option>';

    options.forEach(option => {
        const optionElement = document.createElement('option');
        optionElement.value = option.option_id;
        optionElement.textContent = option.name +
            (option.additionalAmount > 0 ? ` (+${option.additionalAmount}원)` : '');
        optionSelect.appendChild(optionElement);
    });

    // 옵션 변경 이벤트 리스너 추가
    optionSelect.addEventListener('change', function() {
        updateStockInfo(this.value, options);
        updatePriceWithOption(this.value, options);
    });

    // 초기 재고 상태 표시 (첫 번째 옵션 또는 기본값)
    updateStockInfo('', options);
}

// 재고 정보 업데이트
function updateStockInfo(selectedOptionId, options) {
    const stockStatusElement = document.querySelector('.stock-status');
    if (!stockStatusElement) return;

    if (!selectedOptionId) {
        // 옵션이 선택되지 않은 경우 - 기본 메시지 또는 첫 번째 옵션 정보
        stockStatusElement.innerHTML = '<span>옵션을 선택해 주세요</span>';
        return;
    }

    // 선택된 옵션 찾기
    const selectedOption = options.find(option => option.option_id == selectedOptionId);

    if (selectedOption && selectedOption.inventories && selectedOption.inventories.length > 0) {
        const inventory = selectedOption.inventories[0];
        stockStatusElement.innerHTML = `
                    <span>${inventory.stockStatus}</span>
                    ${inventory.quantity ? `<span>(재고: ${inventory.quantity}개)</span>` : ''}
                `;

        // 재고 상태에 따른 스타일 적용
        if (inventory.stockStatus === 'OUT_OF_STOCK' || inventory.quantity === 0) {
            stockStatusElement.className = 'stock-status out-of-stock';
        } else {
            stockStatusElement.className = 'stock-status';
        }
    } else {
        stockStatusElement.innerHTML = '<span>재고 정보 없음</span>';
    }
}

// 옵션에 따른 가격 업데이트
function updatePriceWithOption(selectedOptionId, options) {
    if (!selectedOptionId) {
        // 기본 가격으로 복원
        updateTotalPrice();
        return;
    }

    const selectedOption = options.find(option => option.option_id == selectedOptionId);
    if (selectedOption && selectedOption.additionalAmount) {
        // 추가 금액이 있는 경우 총 가격에 반영
        updateTotalPrice(selectedOption.additionalAmount);
    } else {
        updateTotalPrice();
    }
}

// 구매정보 탭 업데이트
function updateProductDetails(product) {
    document.querySelector('#details').innerHTML = `
                <p><strong>브랜드:</strong> ${product.brandName}</p>
                <!--<p><strong>제조국:</strong> 대한민국</p>
                <p><strong>제조사:</strong> 코스맥스</p>-->
                <p><strong>상품상태:</strong> ${product.status}</p>
            `;
}
