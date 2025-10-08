// 위시리스트 상태 확인
async function checkWishlistStatus(productId) {
    try {
        const response = await fetch(`/api/users/me/wishlist`, {
            credentials: 'include'
        });

        if (response.ok) {
            const wishlistItems = await response.json();
            // 현재 상품이 위시리스트에 있는지 확인
            isWishlisted = wishlistItems.some(item => item.productId == productId);
            updateWishlistButton();
        } else {
            // 로그인되지 않았거나 확인 실패시 기본값
            isWishlisted = false;
            updateWishlistButton();
        }
    } catch (error) {
        console.error('위시리스트 상태 확인 실패:', error);
        isWishlisted = false;
        updateWishlistButton();
    }
}

// 위시리스트 버튼 UI 업데이트
function updateWishlistButton() {
    const wishlistBtn = document.getElementById('wishlistBtn');
    if (wishlistBtn) {
        if (isWishlisted) {
            wishlistBtn.classList.add('wishlisted');
            wishlistBtn.style.borderColor = '#ff4757';
        } else {
            wishlistBtn.classList.remove('wishlisted');
            wishlistBtn.style.borderColor = '#333';
        }
    }
}

// 위시리스트 토글
async function toggleWishlist() {
    // URL에서 productId 추출
    const productId = getProductIdFromUrl();
    if (!productId) {
        alert('상품 정보를 찾을 수 없습니다.');
        return;
    }

    try {
        if (isWishlisted) {
            // 위시리스트에서 제거
            const response = await fetch(`/api/users/me/wishlist/${productId}`, {
                method: 'DELETE',
                credentials: 'include'
            });

            if (response.ok) {
                isWishlisted = false;
                updateWishlistButton();
                showToast('찜 목록에서 제거되었습니다.');
            } else if (response.status === 401) {
                // 로그인 페이지로 리다이렉트 (현재 페이지를 redirect 파라미터로 전달)
                const currentUrl = encodeURIComponent(window.location.pathname);
                window.location.href = `/users/login?redirect=${currentUrl}`;
            } else {
                alert('오류가 발생했습니다. 다시 시도해 주세요.');
            }
        } else {
            // 위시리스트에 추가
            const response = await fetch(`/api/users/me/wishlist`, {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json'
                },
                body: JSON.stringify({
                    productId: parseInt(productId)
                }),
                credentials: 'include'
            });

            if (response.ok) {
                isWishlisted = true;
                updateWishlistButton();
                showToast('찜 목록에 추가되었습니다.');
            } else if (response.status === 401) {
                // 로그인 페이지로 리다이렉트 (현재 페이지를 redirect 파라미터로 전달)
                const currentUrl = encodeURIComponent(window.location.pathname);
                window.location.href = `/users/login?redirect=${currentUrl}`;
            } else {
                alert('오류가 발생했습니다. 다시 시도해 주세요.');
            }
        }
    } catch (error) {
        console.error('위시리스트 토글 실패:', error);
        alert('오류가 발생했습니다. 다시 시도해 주세요.');
    }
}