// 로그인 상태 확인 및 메시지 표시 로직
document.addEventListener('DOMContentLoaded', function() {
    checkLoginStatusAndUpdateUI();
});

async function checkLoginStatusAndUpdateUI() {
    const guestNotice = document.querySelector('.guest-notice');
    const loggedInNotice = document.querySelector('.logged-in-notice');
    
    try {
        const res = await fetch("/api/users/me", { credentials: "include" });
        
        if (res.ok) {
            // 로그인 상태: 사용자 정보를 가져와서 UI 업데이트
            const user = await res.json();
            updateLoggedInContent(user);
            guestNotice.style.display = 'none';
            loggedInNotice.style.display = 'block';
        } else if (res.status === 401) {
            // 비로그인 상태: 비로그인 메시지 표시
            guestNotice.style.display = 'block';
            loggedInNotice.style.display = 'none';
        }
    } catch (e) {
        console.error("로그인 상태 확인 실패", e);
        // 에러 발생시 비로그인 상태로 처리
        guestNotice.style.display = 'block';
        loggedInNotice.style.display = 'none';
    }
}

function updateLoggedInContent(user) {
    console.log('updateLoggedInContent 호출됨:', user);
    
    // 사용자 정보로 로그인 상태 메시지 업데이트
    const userNameElement = document.querySelector('.logged-in-notice .user-grade-info h3');
    const levelDisplayElement = document.querySelector('.logged-in-notice .user-grade-info > div:last-child');
    const levelImageElement = document.querySelector('.logged-in-notice .user-grade-info img');
    
    console.log('DOM 요소들:', {
        userNameElement,
        levelDisplayElement, 
        levelImageElement
    });
    
    // 사용자 이름 업데이트
    if (userNameElement) {
        userNameElement.textContent = `${user.displayName || user.name || '고객'}의 등급`;
        console.log('사용자 이름 업데이트 완료');
    }
    
    // 멤버십 등급 정보 업데이트
    const membershipLevel = user.membershipLevel || 'BABY';
    console.log('멤버십 레벨:', membershipLevel);
    const levelInfo = getLevelInfo(membershipLevel);
    console.log('레벨 정보:', levelInfo);
    
    // 등급명 표시 업데이트
    if (levelDisplayElement) {
        levelDisplayElement.textContent = levelInfo.displayName;
        levelDisplayElement.style.color = levelInfo.color;
        console.log('등급명 업데이트 완료:', levelInfo.displayName);
    }
    
    // fallback div 색상 업데이트
    if (levelImageElement) {
        const fallbackDiv = levelImageElement.nextElementSibling;
        if (fallbackDiv) {
            fallbackDiv.style.background = levelInfo.color;
        }
    }
    
    // 혜택 정보 업데이트
    updateBenefits(membershipLevel);
}

function getLevelInfo(level) {
    const levelMap = {
        'BABY': {
            displayName: 'BABY',
            color: '#674ea7'
        },
        'PINK': {
            displayName: 'PINK',
            color: '#ff6b9d'
        },
        'GREEN': {
            displayName: 'GREEN',
            color: '#37b042'
        },
        'BLACK': {
            displayName: 'BLACK',
            color: '#333'
        },
        'GOLD': {
            displayName: 'GOLD',
            color: '#ffd700'
        }
    };
    
    return levelMap[level] || levelMap['BABY'];
}

function updateBenefits(level) {
    console.log('updateBenefits 호출됨:', level);
    const benefitsList = document.querySelector('.logged-in-notice .grade-benefits ul');
    console.log('혜택 리스트 요소:', benefitsList);
    
    if (!benefitsList) {
        console.log('혜택 리스트 요소를 찾을 수 없음');
        return;
    }
    
    const benefitsMap = {
        'BABY': [
            '월간 할인쿠폰 3천원 (3만원 이상 구매시)',
            '무료배송 쿠폰',
            '포인트 1% 적립'
        ],
        'PINK': [
            '월간 할인쿠폰 5천원 (5만원 이상 구매시)',
            '무료배송 쿠폰',
            '포인트 1% 적립',
            '우선 배송 서비스'
        ],
        'GREEN': [
            '월간 할인쿠폰 1만원 (7만원 이상 구매시)',
            '무료배송 쿠폰',
            '포인트 1% 적립',
            '무료 샘플 증정',
            'VIP 고객센터'
        ],
        'BLACK': [
            '월간 할인쿠폰 2만원 (10만원 이상 구매시)',
            '무료배송 쿠폰',
            '1.5% 적립',
            '전용 상품 라인',
            '개인 맞춤 추천'
        ],
        'GOLD': [
            '월간 할인쿠폰 3만원 (15만원 이상 구매시)',
            '무료배송 쿠폰',
            '1.5% 적립',
            '프리미엄 배송',
            '전담 컨설턴트',
            'VIP 전용 이벤트'
        ]
    };
    
    const benefits = benefitsMap[level] || benefitsMap['BABY'];
    console.log('혜택 목록:', benefits);
    benefitsList.innerHTML = benefits.map(benefit => `<li>${benefit}</li>`).join('');
    console.log('혜택 리스트 업데이트 완료');
}