const couponTableBody = document.querySelector('#coupon-table tbody');
const couponPagination = document.getElementById('coupon-pagination');
const couponPageSize = document.getElementById('coupon-page-size');
const couponFilterForm = document.getElementById('coupon-filter-form');
const couponKeywordInput = document.getElementById('coupon-filter-keyword');
const couponStatusSelect = document.getElementById('coupon-filter-status');
const couponCreateForm = document.getElementById('coupon-create-form');
const couponCreateFeedback = document.getElementById('coupon-create-feedback');
const couponIssueForm = document.getElementById('coupon-issue-form');
const couponIssueFeedback = document.getElementById('coupon-issue-feedback');

const issuedTableBody = document.querySelector('#issued-table tbody');
const issuedPagination = document.getElementById('issued-pagination');
const issuedPageSize = document.getElementById('issued-page-size');
const issuedFilterForm = document.getElementById('issued-filter-form');
const issuedMemberInput = document.getElementById('issued-filter-member');
const issuedCouponInput = document.getElementById('issued-filter-coupon');
const issuedStatusSelect = document.getElementById('issued-filter-status');
const issuedFeedback = document.getElementById('issued-feedback');

let currentCouponPage = 0;
let currentIssuedPage = 0;

const USER_COUPON_STATUS_LABELS = {
    ISSUED: '발급됨',
    USED: '사용완료',
    EXPIRED: '만료됨'
};

function ensureDateTimeSeconds(value) {
    if (typeof value !== 'string') return value;
    if (value.length === 16) {
        return `${value}:00`;
    }
    return value;
}

function showFeedback(element, message, isError = false) {
    if (!element) return;
    element.textContent = message ?? '';
    element.classList.toggle('error', isError);
}

function formatDateTime(value) {
    if (!value) return '-';
    const date = new Date(value);
    if (Number.isNaN(date.getTime())) {
        return '-';
    }
    return date.toLocaleString('ko-KR');
}

function toNumber(value) {
    if (value == null) return null;
    const num = Number(value);
    return Number.isNaN(num) ? null : num;
}

function formatCurrency(value) {
    const number = toNumber(value);
    if (number == null) return '-';
    return new Intl.NumberFormat('ko-KR').format(number);
}

function formatDiscount(coupon) {
    if (!coupon) return '-';
    const value = coupon.discountValue;
    if (coupon.discountType === 'RATE') {
        const number = toNumber(value);
        return number == null ? `${value}%` : `${number}%`;
    }
    return `${formatCurrency(value)}원`;
}

function renderCouponRows(coupons) {
    if (!Array.isArray(coupons) || coupons.length === 0) {
        couponTableBody.innerHTML = '<tr><td colspan="8">쿠폰 데이터가 없습니다.</td></tr>';
        return;
    }

    couponTableBody.innerHTML = coupons.map(coupon => {
        const period = `${formatDateTime(coupon.startDate)} ~ ${formatDateTime(coupon.endDate)}`;
        const eventLabel = coupon.eventName
            ? `${coupon.eventName}${coupon.eventId ? ` (#${coupon.eventId})` : ''}`
            : coupon.eventId ? `#${coupon.eventId}` : '-';
        return `
            <tr>
                <td>${coupon.id}</td>
                <td>${coupon.name ?? ''}</td>
                <td>${coupon.code ?? ''}</td>
                <td>${coupon.status ?? ''}</td>
                <td>${formatDiscount(coupon)}</td>
                <td>${coupon.issueCount ?? 0} / ${coupon.limitIssueCount ?? 0}</td>
                <td>${period}</td>
                <td>${eventLabel}</td>
            </tr>
        `;
    }).join('');
}

function renderPagination(container, pageData, currentPageStateUpdater) {
    if (!container || !pageData) return;
    const totalPages = pageData.totalPages ?? 1;
    if (totalPages <= 1) {
        container.innerHTML = '';
        return;
    }

    const current = pageData.page ?? 0;
    let html = '';
    html += `<button ${pageData.hasPrevious ? '' : 'disabled'} data-page="${Math.max(current - 1, 0)}">이전</button>`;
    for (let i = 0; i < totalPages; i++) {
        html += `<button class="${i === current ? 'active' : ''}" data-page="${i}">${i + 1}</button>`;
        if (i >= current + 4 && i < totalPages - 1) {
            html += '<span>...</span>';
            break;
        }
    }
    html += `<button ${pageData.hasNext ? '' : 'disabled'} data-page="${Math.min(current + 1, totalPages - 1)}">다음</button>`;
    container.innerHTML = html;

    container.querySelectorAll('button[data-page]').forEach(button => {
        button.addEventListener('click', () => {
            const targetPage = Number(button.dataset.page);
            if (Number.isNaN(targetPage)) return;
            currentPageStateUpdater(targetPage);
        });
    });
}

async function extractErrorMessage(response, fallback) {
    try {
        const text = await response.text();
        if (!text) return fallback;
        try {
            const parsed = JSON.parse(text);
            if (parsed && typeof parsed.message === 'string' && parsed.message.trim().length > 0) {
                return parsed.message;
            }
            if (parsed && typeof parsed.error === 'string' && parsed.error.trim().length > 0) {
                return parsed.error;
            }
            return fallback;
        } catch (parseError) {
            return text.trim();
        }
    } catch (error) {
        console.error('Failed to extract error message', error);
        return fallback;
    }
}

async function fetchCoupons(page = 0) {
    const size = Number(couponPageSize?.value) || 20;
    const params = new URLSearchParams({
        page: String(page),
        size: String(size)
    });

    const keyword = couponKeywordInput?.value?.trim();
    if (keyword) params.append('keyword', keyword);
    const status = couponStatusSelect?.value;
    if (status) params.append('status', status);

    try {
        couponPagination.textContent = '';
        couponTableBody.innerHTML = '<tr><td colspan="8">불러오는 중...</td></tr>';
        const res = await fetch(`/admin/coupons?${params.toString()}`, {
            credentials: 'include'
        });
        if (!res.ok) {
            const message = await extractErrorMessage(res, '쿠폰 목록을 불러오지 못했습니다.');
            throw new Error(message);
        }
        const data = await res.json();
        const coupons = data.coupons ?? [];
        currentCouponPage = data.page ?? 0;
        renderCouponRows(coupons);
        renderPagination(couponPagination, data, pageNum => fetchCoupons(pageNum));
    } catch (error) {
        console.error(error);
        couponTableBody.innerHTML = `<tr><td colspan="8">${error.message}</td></tr>`;
    }
}

function renderIssuedRows(entries) {
    if (!Array.isArray(entries) || entries.length === 0) {
        issuedTableBody.innerHTML = '<tr><td colspan="7">발급 내역이 없습니다.</td></tr>';
        return;
    }

    issuedTableBody.innerHTML = entries.map(entry => {
        const memberParts = [];
        if (entry.loginId) memberParts.push(entry.loginId);
        if (entry.userName) memberParts.push(entry.userName);
        let memberLabel = memberParts.join(' / ');
        if (!memberLabel) {
            memberLabel = entry.userId ? `#${entry.userId}` : '-';
        } else if (entry.userId) {
            memberLabel += ` (#${entry.userId})`;
        }

        const couponParts = [];
        if (entry.couponName) couponParts.push(entry.couponName);
        if (entry.couponCode) couponParts.push(entry.couponCode);
        let couponLabel = couponParts.join(' / ');
        if (!couponLabel) {
            couponLabel = entry.couponId ? `#${entry.couponId}` : '-';
        } else if (entry.couponId) {
            couponLabel += ` (#${entry.couponId})`;
        }

        const statusLabel = USER_COUPON_STATUS_LABELS[entry.status] ?? entry.status ?? '';
        return `
            <tr>
                <td>${entry.id}</td>
                <td>${memberLabel}</td>
                <td>${couponLabel}</td>
                <td>${statusLabel}</td>
                <td>${formatDateTime(entry.createdAt)}</td>
                <td>${formatDateTime(entry.expiredAt)}</td>
                <td>${formatDateTime(entry.usedAt)}</td>
            </tr>
        `;
    }).join('');
}

async function fetchIssued(page = 0) {
    const size = Number(issuedPageSize?.value) || 20;
    const params = new URLSearchParams({
        page: String(page),
        size: String(size)
    });

    const member = issuedMemberInput?.value?.trim();
    if (member) params.append('member', member);
    const coupon = issuedCouponInput?.value?.trim();
    if (coupon) params.append('coupon', coupon);
    const status = issuedStatusSelect?.value;
    if (status) params.append('status', status);

    try {
        issuedPagination.textContent = '';
        issuedTableBody.innerHTML = '<tr><td colspan="7">불러오는 중...</td></tr>';
        const res = await fetch(`/admin/coupons/issued?${params.toString()}`, {
            credentials: 'include'
        });
        if (!res.ok) {
            const message = await extractErrorMessage(res, '발급 내역을 불러오지 못했습니다.');
            throw new Error(message);
        }
        const data = await res.json();
        const issued = data.issuedCoupons ?? [];
        currentIssuedPage = data.page ?? 0;
        renderIssuedRows(issued);
        renderPagination(issuedPagination, data, pageNum => fetchIssued(pageNum));
        showFeedback(issuedFeedback, '');
    } catch (error) {
        console.error(error);
        showFeedback(issuedFeedback, error.message, true);
        issuedTableBody.innerHTML = `<tr><td colspan="7">${error.message}</td></tr>`;
    }
}

async function handleCreateCoupon(event) {
    event.preventDefault();
    if (!couponCreateForm) return;
    const formData = new FormData(couponCreateForm);

    const payload = {
        name: formData.get('name')?.trim(),
        code: formData.get('code')?.trim(),
        discountType: formData.get('discountType'),
        discountValue: formData.get('discountValue'),
        minOrderPrice: formData.get('minOrderPrice'),
        maxDiscountPrice: formData.get('maxDiscountPrice'),
        limitIssueCount: Number(formData.get('limitIssueCount')),
        startDate: ensureDateTimeSeconds(formData.get('startDate')),
        endDate: ensureDateTimeSeconds(formData.get('endDate')),
        status: formData.get('status'),
        eventId: formData.get('eventId') ? Number(formData.get('eventId')) : null
    };

    if (!Number.isInteger(payload.limitIssueCount) || payload.limitIssueCount < 1) {
        showFeedback(couponCreateFeedback, '발급 한도는 1 이상이어야 합니다.', true);
        return;
    }

    try {
        const res = await fetch('/admin/coupons', {
            method: 'POST',
            credentials: 'include',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify(payload)
        });
        if (!res.ok) {
            const message = await extractErrorMessage(res, '쿠폰 등록에 실패했습니다.');
            throw new Error(message);
        }
        const data = await res.json();
        const message = data?.message ?? '쿠폰이 등록되었습니다.';
        showFeedback(couponCreateFeedback, message, false);
        couponCreateForm.reset();
        await fetchCoupons(0);
    } catch (error) {
        console.error(error);
        showFeedback(couponCreateFeedback, error.message, true);
    }
}

async function handleIssueCoupon(event) {
    event.preventDefault();
    if (!couponIssueForm) return;
    const formData = new FormData(couponIssueForm);
    const couponId = Number(formData.get('couponId'));
    const loginId = formData.get('loginId')?.trim();

    if (!Number.isInteger(couponId) || couponId < 1) {
        showFeedback(couponIssueFeedback, '유효한 쿠폰 ID를 입력해주세요.', true);
        return;
    }
    if (!loginId) {
        showFeedback(couponIssueFeedback, '회원 로그인 ID를 입력해주세요.', true);
        return;
    }

    const payload = {
        couponId,
        loginId
    };

    try {
        const res = await fetch('/admin/coupons/issue', {
            method: 'POST',
            credentials: 'include',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify(payload)
        });
        if (!res.ok) {
            const message = await extractErrorMessage(res, '쿠폰 발급에 실패했습니다.');
            throw new Error(message);
        }
        const data = await res.json();
        const message = data?.message ?? '쿠폰을 발급했습니다.';
        showFeedback(couponIssueFeedback, message, false);
        await Promise.all([
            fetchIssued(0),
            fetchCoupons(currentCouponPage)
        ]);
        couponIssueForm.reset();
    } catch (error) {
        console.error(error);
        showFeedback(couponIssueFeedback, error.message, true);
    }
}

export function initCouponPanel() {
    if (!couponTableBody || !couponPagination) {
        return;
    }

    couponPageSize?.addEventListener('change', () => fetchCoupons(0));
    couponFilterForm?.addEventListener('submit', event => {
        event.preventDefault();
        fetchCoupons(0);
    });
    couponFilterForm?.addEventListener('reset', () => {
        setTimeout(() => fetchCoupons(0), 0);
    });

    issuedPageSize?.addEventListener('change', () => fetchIssued(0));
    issuedFilterForm?.addEventListener('submit', event => {
        event.preventDefault();
        fetchIssued(0);
    });
    issuedFilterForm?.addEventListener('reset', () => {
        setTimeout(() => fetchIssued(0), 0);
    });

    couponCreateForm?.addEventListener('submit', handleCreateCoupon);
    couponIssueForm?.addEventListener('submit', handleIssueCoupon);

    fetchCoupons(0);
    fetchIssued(0);
}
