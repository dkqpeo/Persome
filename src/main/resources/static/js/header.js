async function loadHeader() {
    const header = document.getElementById("header");
    try {
        const res = await fetch("/header.html");
        if (res.ok) {
            header.innerHTML = await res.text();
            await setupHeader(); // 헤더 삽입 후 실행
            setupDropdownEvents(); // 드롭다운 이벤트 설정
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
                | <a href="/mypage">마이페이지</a>
                | <a href="/cart">장바구니 (<span id="cartCount">0</span>)</a>
                | <a href="/orders/my">주문배송</a>
                | <a href="/help">고객센터</a>
            `;
            loadCartCount();
        } else if (res.status === 401){
            nav.innerHTML = `
                <a href="/users/terms">회원가입</a> |
                <a href="/users/login">로그인</a>
                | <a href="/cart">장바구니</a>
                | <a href="/orders/my">주문배송</a>
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

function toggleDropdown() {
    console.log('toggleDropdown 함수 호출됨');
    var dropdown = document.querySelector('.dropdown-content');
    var button = document.querySelector('.dropdown p');
    
    if (dropdown && button) {
        const isOpen = dropdown.classList.contains('show');
        dropdown.classList.toggle('show');
        button.setAttribute('aria-expanded', !isOpen);
        console.log('show 클래스 토글됨', dropdown.classList.contains('show'));
    } else {
        console.error('dropdown-content 또는 버튼 요소를 찾을 수 없습니다');
    }
}

function closeDropdown() {
    var dropdown = document.querySelector('.dropdown-content');
    var button = document.querySelector('.dropdown p');
    
    if (dropdown && button) {
        dropdown.classList.remove('show');
        button.setAttribute('aria-expanded', 'false');
    }
}

function setupDropdownEvents() {
    // 카테고리 버튼에 이벤트 리스너 추가
    const categoryButton = document.querySelector('.dropdown p');
    if (categoryButton) {
        // 클릭 이벤트
        categoryButton.addEventListener('click', toggleDropdown);
        
        // 키보드 접근성 (Enter, Space)
        categoryButton.addEventListener('keydown', function(event) {
            if (event.key === 'Enter' || event.key === ' ') {
                event.preventDefault();
                toggleDropdown();
            }
        });
        
        console.log('카테고리 드롭다운 이벤트 설정 완료');
    } else {
        console.error('카테고리 버튼을 찾을 수 없습니다');
    }
    
    // 외부 클릭시 닫기 이벤트는 한 번만 설정
    if (!window.dropdownEventSetup) {
        document.addEventListener('click', function(event) {
            if (!event.target.closest('.dropdown')) {
                closeDropdown();
            }
        });
        
        // ESC 키로 닫기
        document.addEventListener('keydown', function(event) {
            if (event.key === 'Escape') {
                closeDropdown();
            }
        });
        
        window.dropdownEventSetup = true;
    }
}

// 전역으로 함수 노출 (하위 호환성을 위해 유지)
window.toggleDropdown = toggleDropdown;

document.addEventListener("DOMContentLoaded", loadHeader);
