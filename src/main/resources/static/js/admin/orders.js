const tableBody = document.querySelector('#order-table tbody');
const pagination = document.getElementById('order-pagination');
const sizeSelector = document.getElementById('order-page-size');

let currentPage = 0;

function toLocale(amount) {
    if (amount == null) return '-';
    return new Intl.NumberFormat('ko-KR').format(amount);
}

async function fetchOrders(page = 0) {
    const size = Number(sizeSelector.value) || 20;
    try {
        pagination.textContent = '';
        tableBody.innerHTML = '<tr><td colspan="9">불러오는 중...</td></tr>';
        const res = await fetch(`/admin/orders?page=${page}&size=${size}`, {
            credentials: 'include'
        });
        if (!res.ok) throw new Error('주문 목록을 불러오지 못했습니다.');
        const data = await res.json();
        const orders = data.orders ?? [];
        currentPage = data.page ?? 0;
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
        return `
            <tr>
                <td>${order.id}</td>
                <td>${order.userId}</td>
                <td>${order.userName ?? ''}</td>
                <td>${order.receiveType ?? ''}</td>
                <td>${order.status ?? ''}</td>
                <td>${order.totalQuantity ?? 0}</td>
                <td>${toLocale(order.totalAmount)}</td>
                <td>${toLocale(order.shippingFee)}</td>
                <td>${orderDate}</td>
            </tr>
        `;
    }).join('');
}

function renderPagination(data) {
    const totalPages = data.totalPages ?? 1;
    if (totalPages <= 1) {
        pagination.innerHTML = '';
        return;
    }
    const size = Number(sizeSelector.value) || 20;
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
    fetchOrders(0);
}
