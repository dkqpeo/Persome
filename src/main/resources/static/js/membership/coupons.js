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

async function updateCouponsForLevel(level) {
    const couponGrid = document.querySelector('.coupon-grid');
    if (!couponGrid) return;

    try {
        const res = await fetch(`/api/coupons/membership?level=${level}`, { credentials: "include" });
        if (!res.ok) throw new Error("쿠폰 조회 실패");

        const result = await res.json();
        const couponsData = result.data || [];

        couponGrid.innerHTML = '';

        if (couponsData.length === 0) {
            couponGrid.innerHTML = '<p style="color:#666;">발급 가능한 쿠폰이 없습니다.</p>';
            return;
        }

        couponsData.forEach(coupon => {
            let valueLabel = "";
            if (coupon.discountType === "RATE") {
                valueLabel = `${coupon.discountValue}%`;
            } else if (coupon.discountType === "FIXED") {
                valueLabel = coupon.name.includes("무료배송")
                    ? "무료배송"
                    : `${coupon.discountValue.toLocaleString()}원`;
            }


            const couponCard = document.createElement('div');

            couponCard.className = 'coupon-card';
            couponCard.innerHTML = `
                <div class="coupon-main">
                    <div class="coupon-badge">COUPON</div>
                    <div class="coupon-label">${coupon.name}</div>
                    <div class="coupon-value">${valueLabel}</div>
                    <div class="coupon-condition">${coupon.minOrderPrice.toLocaleString()}원 이상 적용가능</div>
                </div>
                <div class="coupon-actions">
                    <button class="download-btn" data-id="${coupon.id}">${coupon.issued ? "쿠폰 발급 완료" : "쿠폰 다운받기 ⬇"}</button>
                </div>
            `;

            //쿠폰 발급
            const btn = couponCard.querySelector(".download-btn");
            if (coupon.issued) {
                couponCard.style.opacity = "0.8";
                couponCard.style.filter = "grayscale(100%)";
                btn.disabled = true;
                btn.style.backgroundColor = "#ccc";
                btn.style.cursor = "not-allowed";
            } else {
                btn.addEventListener("click", async () => {
                    try {
                        const res = await fetch("/api/users/me/coupons", {
                            method: "POST",
                            headers: { "Content-Type": "application/json" },
                            credentials: "include",
                            body: JSON.stringify({ couponId: coupon.id })
                        });
                        if (!res.ok) {
                            const errMsg = await res.text();
                            alert("쿠폰 발급 실패: " + errMsg);
                            return;
                        }
                        alert("쿠폰이 발급되었습니다! 🎉");
                        btn.textContent = "이미 발급됨";
                        btn.disabled = true;
                        btn.style.backgroundColor = "#ccc";
                        btn.style.cursor = "not-allowed";
                    } catch (e) {
                        console.error(e);
                        alert("쿠폰 발급 중 오류가 발생했습니다.");
                    }
                });
            }
            couponGrid.appendChild(couponCard);
        });
    } catch (e) {
        console.error("쿠폰 불러오기 실패", e);
        couponGrid.innerHTML = '<p style="color:red;">쿠폰 정보를 불러올 수 없습니다.</p>';
    }
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