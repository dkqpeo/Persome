async function loadHeader() {
    const header = document.getElementById("header");
    try {
        const res = await fetch("/header.html");
        if (res.ok) {
            header.innerHTML = await res.text();
            await setupHeader(); // 헤더 삽입 후 실행
        }
    } catch (e) {
        console.error("헤더 로딩 실패", e);
    }
}

async function setupHeader() {
    const nav = document.getElementById("topNav");
    if (!nav) return;

    try {
        const res = await fetch("/api/users/me", { credentials: "include" });
        if (res.ok) {
            const user = await res.json();
            nav.innerHTML = `
                <span>${user.displayName}</span>
                | <a href="/users/logout">로그아웃</a>
                | <a href="/users/me">마이페이지</a>
                | <a href="/cart">장바구니 (<span id="cartCount">0</span>)</a>
                | <a href="/orders">주문배송</a>
                | <a href="/help">고객센터</a>
            `;
            loadCartCount();
        } else if (res.status === 401){
            nav.innerHTML = `
                <a href="/users/terms">회원가입</a> |
                <a href="/users/login">로그인</a>
                | <a href="/cart">장바구니</a>
                | <a href="/orders">주문배송</a>
                | <a href="/help">고객센터</a>
            `;
        }
    } catch (e) {
        console.error("로그인 상태 확인 실패", e);
    }
}

async function loadCartCount() {
    try {
        const res = await fetch("/api/cart/count", { credentials: "include" });
        if (res.ok) {
            const { count } = await res.json();
            document.getElementById("cartCount").textContent = count;
        }
    } catch (e) {
        console.error("장바구니 개수 불러오기 실패", e);
    }
}

document.addEventListener("DOMContentLoaded", loadHeader);
