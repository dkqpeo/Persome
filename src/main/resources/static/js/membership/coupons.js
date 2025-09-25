// 로그인 상태 확인 및 UI 업데이트
document.addEventListener('DOMContentLoaded', function() {
    checkLoginStatusAndUpdateUI();
});

async function checkLoginStatusAndUpdateUI() {
    const guestNotice = document.querySelector('.guest-notice');
    const loggedInContent = document.querySelector('.logged-in-content');
    
    try {
        const res = await fetch("/api/users/me", { credentials: "include" });
        
        if (res.ok) {
            // 로그인 상태: 사용자 정보를 가져와서 UI 업데이트
            const user = await res.json();
            updateMemberInfo(user);
            guestNotice.style.display = 'none';
            loggedInContent.style.display = 'block';
        } else if (res.status === 401) {
            // 비로그인 상태: 비로그인 메시지 표시
            guestNotice.style.display = 'block';
            loggedInContent.style.display = 'none';
        }
    } catch (e) {
        console.error("로그인 상태 확인 실패", e);
        // 에러 발생시 비로그인 상태로 처리
        guestNotice.style.display = 'block';
        loggedInContent.style.display = 'none';
    }
}

function updateMemberInfo(user) {
    // 사용자 이름 업데이트
    const userTextElement = document.querySelector('.user-level-text');
    if (userTextElement) {
        userTextElement.textContent = `${user.data.displayName || user.data.name || '고객'}의 등급은`;
    }
    
    // 멤버십 등급 정보 업데이트
    const membershipLevel = user.data.membershipLevel || 'BABY';
    const levelInfo = getLevelInfo(membershipLevel);
    
    // 등급명 표시 업데이트
    const levelNameElement = document.querySelector('.user-level-name');
    if (levelNameElement) {
        levelNameElement.textContent = levelInfo.displayName;
        levelNameElement.style.color = levelInfo.color;
    }
    
    // 아바타 테두리 색상 업데이트
    const userAvatar = document.querySelector('.user-avatar');
    if (userAvatar) {
        userAvatar.style.borderColor = levelInfo.color;
    }
    
    // 등급별 쿠폰 업데이트
    updateCouponsForLevel(membershipLevel);
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

function updateCouponsForLevel(level) {
    const couponGrid = document.querySelector('.coupon-grid');
    if (!couponGrid) return;
    
    const levelInfo = getLevelInfo(level);
    const couponsData = getCouponsForLevel(level);
    
    // 기존 쿠폰 카드를 모두 제거하고 새로 생성
    couponGrid.innerHTML = '';
    
    couponsData.forEach(coupon => {
        const couponCard = document.createElement('div');
        couponCard.className = 'coupon-card';
        couponCard.innerHTML = `
            <div class="coupon-main" style="background: linear-gradient(135deg, ${levelInfo.color} 0%, ${levelInfo.color}CC 100%);">
                <div class="coupon-badge">COUPON</div>
                <div class="coupon-label">${coupon.label}</div>
                <div class="coupon-value">${coupon.value}</div>
                <div class="coupon-condition">${coupon.condition}</div>
            </div>
            <div class="coupon-actions">
                <button class="download-btn">쿠폰 다운받기 ⬇</button>
            </div>
        `;
        couponGrid.appendChild(couponCard);
    });
}

function getCouponsForLevel(level) {
    const couponsMap = {
        'BABY': [
            {
                label: '[10월 BABY] 3만원이상 3천원 할인',
                value: '3,000원',
                condition: '30,000원 이상 적용가능'
            },
            {
                label: '[BABY] 무료배송 쿠폰',
                value: '무료배송',
                condition: '전체 상품 적용가능'
            }
        ],
        'PINK': [
            {
                label: '[10월 PINK] 5만원이상 5천원 할인',
                value: '5,000원',
                condition: '50,000원 이상 적용가능'
            },
            {
                label: '[PINK] 무료배송 쿠폰',
                value: '무료배송',
                condition: '전체 상품 적용가능'
            },
            {
                label: '[PINK] 우선배송 쿠폰',
                value: '우선배송',
                condition: '전체 상품 적용가능'
            }
        ],
        'GREEN': [
            {
                label: '[10월 GREEN] 7만원이상 1만원 할인',
                value: '10,000원',
                condition: '70,000원 이상 적용가능'
            },
            {
                label: '[GREEN] 무료배송 쿠폰',
                value: '무료배송',
                condition: '전체 상품 적용가능'
            },
            {
                label: '[GREEN] 샘플증정 쿠폰',
                value: '샘플증정',
                condition: '구매시 자동 적용'
            }
        ],
        'BLACK': [
            {
                label: '[10월 BLACK] 10만원이상 2만원 할인',
                value: '20,000원',
                condition: '100,000원 이상 적용가능'
            },
            {
                label: '[BLACK] 무료배송 쿠폰',
                value: '무료배송',
                condition: '전체 상품 적용가능'
            },
            {
                label: '[BLACK] VIP 전용할인',
                value: '15%할인',
                condition: '전용상품 적용가능'
            }
        ],
        'GOLD': [
            {
                label: '[10월 GOLD] 15만원이상 3만원 할인',
                value: '30,000원',
                condition: '150,000원 이상 적용가능'
            },
            {
                label: '[GOLD] 프리미엄 배송',
                value: '프리미엄배송',
                condition: '당일/익일 배송'
            },
            {
                label: '[GOLD] VIP 전용할인',
                value: '20%할인',
                condition: '전체상품 적용가능'
            },
            {
                label: '[GOLD] 전담컨설턴트',
                value: '1:1상담',
                condition: '개인맞춤 서비스'
            }
        ]
    };
    
    return couponsMap[level] || couponsMap['BABY'];
}