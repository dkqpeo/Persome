// 장바구니 추가
async function addToCart() {
    const selectedOption = getSelectedOption();
    if (!validateSelection(selectedOption)) return;

    try {
        const quantity = parseInt(document.getElementById('quantity').value) || 1;

        const cartData = {
            productOptionId: selectedOption.optionId ? parseInt(selectedOption.optionId) : null,
            quantity: quantity
        };

        console.log('장바구니 추가 요청:', cartData);

        const response = await fetch('/api/users/me/cart/items', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify(cartData),
            credentials: 'include'
        });

        if (response.ok) {
            const result = await response.json();
            console.log('장바구니 추가 성공:', result);
            showToast('장바구니에 추가되었습니다.');

            // 헤더의 장바구니 개수 업데이트 (헤더에 updateCartCount 함수가 있다면)
            if (typeof updateCartCount === 'function') {
                updateCartCount();
            }
        } else if (response.status === 401) {
            // 로그인 페이지로 리다이렉트 (현재 페이지를 redirect 파라미터로 전달)
            const currentUrl = encodeURIComponent(window.location.pathname);
            window.location.href = `/users/login?redirect=${currentUrl}`;
        } else if (response.status === 400) {
            const errorData = await response.json();
            alert('잘못된 요청입니다: ' + (errorData.message || '옵션을 확인해주세요.'));
        } else {
            alert('장바구니 추가에 실패했습니다. 다시 시도해 주세요.');
        }
    } catch (error) {
        console.error('장바구니 추가 실패:', error);
        alert('네트워크 오류가 발생했습니다. 다시 시도해 주세요.');
    }
}