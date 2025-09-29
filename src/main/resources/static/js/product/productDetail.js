let productData = null;
let currentPrice = 0;
let currentImageIndex = 0;
let imageList = [];
let isWishlisted = false;

// 로딩 상태 표시
function showLoading(show) {
    let loadingDiv = document.getElementById('loading-overlay');

    if (show) {
        // 로딩 오버레이가 없으면 생성
        if (!loadingDiv) {
            loadingDiv = document.createElement('div');
            loadingDiv.id = 'loading-overlay';
            loadingDiv.style.cssText = `
                        position: fixed;
                        top: 0;
                        left: 0;
                        width: 100%;
                        height: 100%;
                        background: rgba(255, 255, 255, 0.8);
                        display: flex;
                        justify-content: center;
                        align-items: center;
                        z-index: 9999;
                    `;
            loadingDiv.innerHTML = `
                        <div style="text-align: center;">
                            <h2>상품 정보를 불러오는 중...</h2>
                            <div style="margin-top: 20px;">
                                <div style="border: 4px solid #f3f3f3; border-top: 4px solid #7B68EE; border-radius: 50%; width: 40px; height: 40px; animation: spin 2s linear infinite; margin: 0 auto;"></div>
                            </div>
                        </div>
                        <style>
                            @keyframes spin {
                                0% { transform: rotate(0deg); }
                                100% { transform: rotate(360deg); }
                            }
                        </style>
                    `;
            document.body.appendChild(loadingDiv);
        }
        loadingDiv.style.display = 'flex';
    } else {
        // 로딩 숨기기
        if (loadingDiv) {
            loadingDiv.style.display = 'none';
        }
    }
}

// 에러 메시지 표시
function showError(message) {
    const container = document.querySelector('.container');
    container.innerHTML = `
                <div style="text-align: center; padding: 100px;">
                    <h2 style="color: #dc3545;">오류가 발생했습니다</h2>
                    <p style="margin-top: 20px; color: #666;">${message}</p>
                    <button onclick="location.reload()" style="margin-top: 20px; padding: 10px 20px; background: #7B68EE; color: white; border: none; border-radius: 5px; cursor: pointer;">
                        다시 시도
                    </button>
                </div>
            `;
}

/*// 메인 이미지 변경 (기존 호환성을 위해 유지)
function changeMainImage(src) {
    // URL로 이미지 인덱스 찾기
    const index = imageList.findIndex(img => img.imgUrl === src);
    if (index !== -1) {
        changeMainImageByIndex(index);
    }
}*/

// 수량 변경
function changeQuantity(delta) {
    const quantityInput = document.getElementById('quantity');
    const currentQuantity = parseInt(quantityInput.value);
    const newQuantity = Math.max(1, currentQuantity + delta);
    quantityInput.value = newQuantity;
    updateTotalPrice();
}

// 총 금액 업데이트
function updateTotalPrice(additionalAmount = 0) {
    const quantity = parseInt(document.getElementById('quantity').value) || 1;
    const basePrice = currentPrice + additionalAmount;
    const totalPrice = basePrice * quantity;
    const totalPriceElement = document.getElementById('totalPrice');
    if (totalPriceElement) {
        totalPriceElement.textContent = totalPrice.toLocaleString() + '원';
    }
}

// 탭 전환
function showTab(tabName) {
    // Hide all tab contents
    document.querySelectorAll('.tab-content').forEach(content => {
        content.style.display = 'none';
    });

    // Remove active class from all tabs
    document.querySelectorAll('.tab').forEach(tab => {
        tab.classList.remove('active');
    });

    // Show selected tab content
    document.getElementById(tabName).style.display = 'block';

    // Add active class to clicked tab
    event.target.classList.add('active');
}

// 바로구매
function buyNow() {
    const selectedOption = getSelectedOption();
    if (!validateSelection(selectedOption)) return;

    //const productName = document.getElementById('product-title');
    const productOptionId = selectedOption.optionId;
    const quantity = parseInt(document.getElementById('quantity').value) || 1;

    // 쿼리 파라미터로 주문 페이지로 이동 productName=${productName}&
    const orderUrl = `/orders?productOptionId=${productOptionId}&quantity=${quantity}`;
    
    console.log('바로구매 - 이동할 URL:', orderUrl);
    window.location.href = orderUrl;
}

// 토스트 메시지 표시 (간단한 알림)
function showToast(message) {
    // 기존 토스트가 있으면 제거
    const existingToast = document.getElementById('toast');
    if (existingToast) {
        existingToast.remove();
    }

    const toast = document.createElement('div');
    toast.id = 'toast';
    toast.textContent = message;
    toast.style.cssText = `
                position: fixed;
                top: 50%;
                left: 50%;
                transform: translate(-50%, -50%);                
                background: #333;
                color: white;
                padding: 12px 20px;
                border-radius: 5px;
                z-index: 10000;
                font-size: 14px;
                opacity: 0;
                transition: opacity 0.3s ease;
            `;

    document.body.appendChild(toast);

    // 애니메이션 효과
    setTimeout(() => {
        toast.style.opacity = '1';
    }, 100);

    // 3초 후 자동 제거
    setTimeout(() => {
        toast.style.opacity = '0';
        setTimeout(() => {
            if (toast.parentNode) {
                toast.parentNode.removeChild(toast);
            }
        }, 300);
    }, 3000);
}

// 선택된 옵션 정보 가져오기
function getSelectedOption() {
    const optionSelect = document.getElementById('optionSelect');
    const selectedOptionId = optionSelect ? optionSelect.value : '';

    return {
        optionId: selectedOptionId,
        hasOption: productData && productData.options && productData.options.length > 0
    };
}

// 선택 검증
function validateSelection(selectedOption) {
    if (selectedOption.hasOption && !selectedOption.optionId) {
        alert('옵션을 선택해 주세요.');
        return false;
    }

    // 재고 확인
    if (selectedOption.optionId) {
        const option = productData.options.find(opt => opt.option_id == selectedOption.optionId);
        if (option && option.inventories && option.inventories.length > 0) {
            const inventory = option.inventories[0];
            if (inventory.stockStatus === 'OUT_OF_STOCK' || inventory.quantity === 0) {
                alert('선택한 옵션이 품절되었습니다.');
                return false;
            }
        }
    }

    return true;
}

// 수량 변경 이벤트 리스너 등록 (DOM 로드 후)
document.addEventListener('DOMContentLoaded', function() {
    const quantityInput = document.getElementById('quantity');
    if (quantityInput) {
        quantityInput.addEventListener('change', updateTotalPrice);
    }

    // 키보드 네비게이션 추가
    document.addEventListener('keydown', function(e) {
        // 입력 필드에 포커스가 있을 때는 키보드 네비게이션 비활성화
        if (document.activeElement.tagName === 'INPUT' ||
            document.activeElement.tagName === 'TEXTAREA' ||
            document.activeElement.tagName === 'SELECT') {
            return;
        }

        if (e.key === 'ArrowLeft') {
            e.preventDefault();
            navigateImage(-1);
        } else if (e.key === 'ArrowRight') {
            e.preventDefault();
            navigateImage(1);
        }
    });
});