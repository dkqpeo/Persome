const tableBody = document.querySelector('#order-table tbody');
const pagination = document.getElementById('order-pagination');
const sizeSelector = document.getElementById('order-page-size');
const filterForm = document.getElementById('order-filter-form');
const keywordInput = document.getElementById('order-search-keyword');
const memberInput = document.getElementById('order-member-keyword');
const startDateInput = document.getElementById('order-start-date');
const endDateInput = document.getElementById('order-end-date');
const detailContainer = document.getElementById('order-detail');

let currentPage = 0;
let selectedOrderId = null;
let ordersCache = [];

function toLocale(amount) {
    if (amount == null) return '-';
    return new Intl.NumberFormat('ko-KR').format(amount);
}

function escapeHtml(value) {
    if (value == null) {
        return '';
    }
    return String(value)
        .replace(/&/g, '&amp;')
        .replace(/</g, '&lt;')
        .replace(/>/g, '&gt;')
        .replace(/"/g, '&quot;')
        .replace(/'/g, '&#39;');
}

function formatDateTime(value) {
    if (!value) return '-';
    const date = new Date(value);
    if (Number.isNaN(date.getTime())) {
        return '-';
    }
    return date.toLocaleString('ko-KR');
}

function formatAmount(value) {
    const formatted = toLocale(value);
    return formatted === '-' ? '-' : `${formatted}원`;
}

function formatDiscount(value) {
    const formatted = toLocale(value);
    if (formatted === '-') return '-';
    if (formatted === '0') return '0원';
    return `-${formatted}원`;
}

function showDetailMessage(message, isError = false) {
    if (!detailContainer) return;
    detailContainer.innerHTML = `<p class="order-detail-placeholder${isError ? ' error' : ''}">${escapeHtml(message)}</p>`;
}

async function fetchOrders(page = 0) {
    const size = Number(sizeSelector.value) || 20;
    const params = new URLSearchParams({
        page: String(page),
        size: String(size)
    });
    const keyword = keywordInput?.value?.trim();
    if (keyword) params.append('keyword', keyword);
    const member = memberInput?.value?.trim();
    if (member) params.append('member', member);
    const startDate = startDateInput?.value;
    if (startDate) params.append('startDate', startDate);
    const endDate = endDateInput?.value;
    if (endDate) params.append('endDate', endDate);
    try {
        pagination.textContent = '';
        tableBody.innerHTML = '<tr><td colspan="9">불러오는 중...</td></tr>';
        const res = await fetch(`/api/admin/orders?${params.toString()}`, {
            credentials: 'include'
        });
        if (!res.ok) throw new Error('주문 목록을 불러오지 못했습니다.');
        const body = await res.json();
        const data = body?.data ?? body;
        const orders = Array.isArray(data?.orders) ? data.orders : [];
        currentPage = data.page ?? 0;
        ordersCache = orders;
        renderOrders(orders);
        renderPagination(data);
    } catch (err) {
        console.error(err);
        tableBody.innerHTML = `<tr><td colspan="9">${err.message}</td></tr>`;
    }
}

function renderOrders(orders) {
    if (!Array.isArray(orders) || orders.length === 0) {
        tableBody.innerHTML = '<tr><td colspan="9">주문 데이터가 없습니다.</td></tr>';
        return;
    }
    tableBody.innerHTML = orders.map(order => {
        const orderDate = order.orderDate ? new Date(order.orderDate).toLocaleString('ko-KR') : '-';
        const userName = escapeHtml(order.userName ?? '');
        const receiveType = escapeHtml(order.receiveType ?? '');
        const status = escapeHtml(order.status ?? '');
        const requestAttrs = `data-order-id="${order.id}" data-user-id="${order.userId ?? ''}" data-user-name="${userName}"`;
        return `
            <tr ${requestAttrs}>
                <td>${order.id}</td>
                <td>${order.userId}</td>
                <td>${userName}</td>
                <td>${receiveType}</td>
                <td>${status}</td>
                <td>${order.totalQuantity ?? 0}</td>
                <td>${toLocale(order.totalAmount)}</td>
                <td>${toLocale(order.shippingFee)}</td>
                <td>${orderDate}</td>
            </tr>
        `;
    }).join('');
    markSelectedRow(selectedOrderId);
}

function renderPagination(data) {
    const totalPages = data.totalPages ?? 1;
    if (totalPages <= 1) {
        pagination.innerHTML = '';
        return;
    }
    let html = '';
    html += `<button ${data.hasPrevious ? '' : 'disabled'} data-page="${Math.max(currentPage - 1, 0)}">이전</button>`;
    for (let i = 0; i < totalPages; i++) {
        html += `<button class="${i === currentPage ? 'active' : ''}" data-page="${i}">${i + 1}</button>`;
        if (i >= currentPage + 4 && i < totalPages - 1) {
            html += '<span>...</span>';
            break;
        }
    }
    html += `<button ${data.hasNext ? '' : 'disabled'} data-page="${Math.min(currentPage + 1, totalPages - 1)}">다음</button>`;
    pagination.innerHTML = html;
}

export function initOrderPanel() {
    pagination.addEventListener('click', event => {
        const page = event.target.dataset.page;
        if (page != null) {
            fetchOrders(Number(page));
        }
    });
    sizeSelector.addEventListener('change', () => fetchOrders(0));
    if (filterForm) {
        filterForm.addEventListener('submit', event => {
            event.preventDefault();
            fetchOrders(0);
        });
        filterForm.addEventListener('reset', () => {
            setTimeout(() => fetchOrders(0), 0);
        });
    }
    tableBody.addEventListener('click', event => {
        const row = event.target.closest('tr[data-order-id]');
        if (!row) return;
        const orderId = Number(row.dataset.orderId);
        if (!Number.isFinite(orderId)) return;
        const meta = ordersCache.find(order => Number(order.id) === orderId) ?? {
            userId: row.dataset.userId ? Number(row.dataset.userId) : null,
            userName: row.dataset.userName || ''
        };
        fetchOrderDetail(orderId, meta);
    });
    fetchOrders(0);
}

function markSelectedRow(orderId) {
    tableBody.querySelectorAll('tr[data-order-id]').forEach(row => {
        const id = Number(row.dataset.orderId);
        row.classList.toggle('selected-order', Number.isFinite(orderId) && id === orderId);
    });
}

async function fetchOrderDetail(orderId, meta = {}) {
    if (!detailContainer) return;
    selectedOrderId = orderId;
    markSelectedRow(orderId);
    showDetailMessage('상세 정보를 불러오는 중입니다...');
    try {
        const res = await fetch(`/api/admin/orders/${orderId}`, {
            credentials: 'include'
        });
        if (!res.ok) {
            const message = await extractErrorMessage(res, '주문 상세 정보를 가져오지 못했습니다.');
            throw new Error(message);
        }
        const body = await res.json();
        const detail = body?.data ?? body;
        renderOrderDetail(detail, meta);
    } catch (error) {
        console.error(error);
        showDetailMessage(error.message, true);
    }
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
        } catch {
            return text.trim();
        }
    } catch (err) {
        console.error(err);
        return fallback;
    }
}

function renderOrderDetail(detail, meta = {}) {
    if (!detail || typeof detail !== 'object') {
        showDetailMessage('주문 상세 데이터가 올바르지 않습니다.', true);
        return;
    }

    const userLabel = (() => {
        const namePart = meta.userName ? `${meta.userName}` : '';
        const idPart = detail.userId ?? meta.userId;
        if (namePart && idPart) return `${escapeHtml(namePart)} (#${idPart})`;
        if (namePart) return escapeHtml(namePart);
        if (idPart) return `#${idPart}`;
        return '-';
    })();

    const summaryRows = [
        { label: '주문번호', value: escapeHtml(detail.orderId ?? '-') },
        { label: '회원', value: userLabel },
        { label: '주문일시', value: formatDateTime(detail.orderDate) },
        { label: '주문상태', value: escapeHtml(detail.orderStatus ?? '-') },
        { label: '총 결제금액', value: formatAmount(detail.totalPrice) },
        { label: '배송비', value: formatAmount(detail.shippingFee) },
        { label: '요청사항', value: escapeHtml(detail.requestMessage ?? '-') }
    ];

    const priceRows = [
        { label: '상품금액', value: formatAmount(detail.originalPrice) },
        { label: '쿠폰 할인', value: formatDiscount(detail.couponDiscountAmount) },
        { label: '포인트 사용', value: formatDiscount(detail.pointUsedAmount) },
        { label: '프로모션 할인', value: formatDiscount(detail.promoDiscountAmount) },
        { label: '총 결제금액', value: formatAmount(detail.totalPrice) }
    ];

    const delivery = detail.deliveryInfo ?? null;
    const deliveryRows = delivery ? [
        { label: '수령인', value: escapeHtml(delivery.receiverName ?? '-') },
        { label: '연락처', value: escapeHtml(delivery.receiverPhone ?? '-') },
        { label: '도로명 주소', value: escapeHtml(delivery.roadAddr ?? '-') },
        { label: '지번 주소', value: escapeHtml(delivery.jibunAddr ?? '-') },
        { label: '상세 주소', value: escapeHtml(delivery.addressDetail ?? '-') }
    ] : [];

    const payment = detail.payment ?? null;
    const paymentRows = payment ? [
        { label: '결제수단', value: escapeHtml(payment.method ?? '-') },
        { label: '결제상태', value: escapeHtml(payment.status ?? '-') },
        { label: '결제금액', value: formatAmount(payment.amount) },
        { label: '결제일시', value: formatDateTime(payment.paidAt) }
    ] : [];

    const items = Array.isArray(detail.items) ? detail.items : [];
    const itemsHtml = items.length > 0
        ? `
            <table class="order-detail-items">
                <thead>
                    <tr>
                        <th>상품명</th>
                        <th>옵션ID</th>
                        <th>수량</th>
                        <th class="amount">단가</th>
                        <th class="amount">금액</th>
                    </tr>
                </thead>
                <tbody>
                    ${items.map(item => `
                        <tr>
                            <td>${escapeHtml(item.productName ?? '-')}</td>
                            <td>${item.productOptionId ?? '-'}</td>
                            <td>${item.quantity ?? 0}</td>
                            <td class="amount">${formatAmount(item.unitPrice)}</td>
                            <td class="amount">${formatAmount(item.totalPrice)}</td>
                        </tr>
                    `).join('')}
                </tbody>
            </table>
        `
        : '<p class="order-detail-placeholder">주문 상품 정보가 없습니다.</p>';

    const sectionHtml = (title, rows) => {
        if (!rows || rows.length === 0) return '';
        return `
            <section class="order-detail-section">
                <h3>${title}</h3>
                <dl>
                    ${rows.map(row => `
                        <div>
                            <dt>${row.label}</dt>
                            <dd>${row.value}</dd>
                        </div>
                    `).join('')}
                </dl>
            </section>
        `;
    };

    const detailHtml = `
        <div class="order-detail-grid">
            ${sectionHtml('주문 정보', summaryRows)}
            ${sectionHtml('금액 정보', priceRows)}
            ${deliveryRows.length ? sectionHtml('배송 정보', deliveryRows) : ''}
            ${paymentRows.length ? sectionHtml('결제 정보', paymentRows) : ''}
        </div>
        <section class="order-detail-section">
            <h3>상품 정보</h3>
            ${itemsHtml}
        </section>
    `;

    detailContainer.innerHTML = detailHtml;
}
