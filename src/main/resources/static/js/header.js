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
                | <a href="/users/me/cart">장바구니 (<span id="cartCount">0</span>)</a>
                | <a href="/orders">주문배송</a>
                | <a href="/help">고객센터</a>
            `;
            await loadCartCount();
        } else if (res.status === 401){
            nav.innerHTML = `
                <a href="/users/terms">회원가입</a> |
                <a href="#" onclick="redirectToLogin()">로그인</a>
                | <a href="#" onclick="redirectToLogin('/users/me/cart'); return false;">장바구니</a>
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
        const res = await fetch("/api/users/me/cart/count");
        if (res.ok) {
             // count = 3
            document.getElementById("cartCount").innerText = await res.json();
        }
    } catch (e) {
        console.error("장바구니 개수 불러오기 실패", e);
    }
}

function redirectToLogin(targetPath) {
    const path = targetPath || window.location.pathname;
    console.log("🔍 redirectToLogin 실행됨, 저장할 경로:", path); // 디버깅 로그
    sessionStorage.setItem("redirectAfterLogin", path);
    window.location.href = "/users/login";
}

// 전역으로 노출 (onclick에서도 실행 가능하게)
window.redirectToLogin = redirectToLogin;

document.addEventListener("DOMContentLoaded", loadHeader);
