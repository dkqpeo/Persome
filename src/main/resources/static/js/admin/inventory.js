const tableBody = document.querySelector('#inventory-table tbody');
const pagination = document.getElementById('inventory-pagination');
const sizeSelector = document.getElementById('inventory-page-size');
const filterForm = document.getElementById('inventory-filter-form');
const productInput = document.getElementById('inventory-product-keyword');
const optionInput = document.getElementById('inventory-option-keyword');
const storeInput = document.getElementById('inventory-store-id');
const statusSelect = document.getElementById('inventory-status');
const feedback = document.getElementById('inventory-feedback');

let currentPage = 0;

const STOCK_STATUS_OPTIONS = [
    { value: 'SELLING', label: '판매중' },
    { value: 'LOW_STOCK', label: '재고부족' },
    { value: 'OUT_OF_STOCK', label: '품절' },
    { value: 'INCOMMING', label: '입고예정' },
    { value: 'DISCONTINUED', label: '단종' }
];

function showFeedback(message, isError = false) {
    if (!feedback) return;
    feedback.textContent = message ?? '';
    feedback.classList.toggle('error', isError);
}

function renderStatusOptions(selected) {
    return STOCK_STATUS_OPTIONS.map(option => {
        const isSelected = option.value === selected;
        return `<option value="${option.value}" ${isSelected ? 'selected' : ''}>${option.label}</option>`;
    }).join('');
}

function formatDateTime(value) {
    if (!value) return '-';
    const date = new Date(value);
    if (Number.isNaN(date.getTime())) {
        return '-';
    }
    return date.toLocaleString('ko-KR');
}

async function fetchInventories(page = 0) {
    const size = Number(sizeSelector?.value) || 20;
    const params = new URLSearchParams({
        page: String(page),
        size: String(size)
    });

    const product = productInput?.value?.trim();
    if (product) params.append('product', product);

    const option = optionInput?.value?.trim();
    if (option) params.append('option', option);

    const storeId = storeInput?.value?.trim();
    if (storeId) params.append('storeId', storeId);

    const status = statusSelect?.value;
    if (status) params.append('status', status);

    try {
        showFeedback('');
        pagination.textContent = '';
        tableBody.innerHTML = '<tr><td colspan="8">불러오는 중...</td></tr>';
        const res = await fetch(`/admin/inventories?${params.toString()}`, {
            credentials: 'include'
        });
        if (!res.ok) {
            const message = await extractErrorMessage(res, '재고 목록을 불러오지 못했습니다.');
            throw new Error(message);
        }
        const data = await res.json();
        const inventories = data.inventories ?? [];
        currentPage = data.page ?? 0;
        renderInventories(inventories);
        renderPagination(data);
    } catch (error) {
        console.error(error);
        showFeedback(error.message, true);
        tableBody.innerHTML = `<tr><td colspan="8">${error.message}</td></tr>`;
    }
}

function renderInventories(inventories) {
    if (!Array.isArray(inventories) || inventories.length === 0) {
        tableBody.innerHTML = '<tr><td colspan="8">재고 데이터가 없습니다.</td></tr>';
        return;
    }

    tableBody.innerHTML = inventories.map(inventory => {
        const productLabel = inventory.productName
            ? `${inventory.productName}${inventory.productId ? ` (#${inventory.productId})` : ''}`
            : inventory.productId ? `#${inventory.productId}` : '-';
        const optionLabel = inventory.optionName
            ? `${inventory.optionName}${inventory.optionId ? ` (#${inventory.optionId})` : ''}`
            : inventory.optionId ? `#${inventory.optionId}` : '-';
        const storeLabel = inventory.storeName
            ? `${inventory.storeName}${inventory.storeId ? ` (#${inventory.storeId})` : ''}`
            : inventory.storeId ? `#${inventory.storeId}` : '-';
        const quantity = inventory.quantity ?? 0;
        const status = inventory.stockStatus ?? 'SELLING';
        const updatedAt = formatDateTime(inventory.updatedAt);

        return `
            <tr data-inventory-id="${inventory.id}">
                <td>${inventory.id}</td>
                <td>${productLabel}</td>
                <td>${optionLabel}</td>
                <td>${storeLabel}</td>
                <td><input type="number" class="inventory-quantity" min="0" value="${quantity}" /></td>
                <td>
                    <select class="inventory-status">
                        ${renderStatusOptions(status)}
                    </select>
                </td>
                <td>${updatedAt}</td>
                <td><button type="button" class="inventory-save">저장</button></td>
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

async function handleUpdate(inventoryId, quantity, stockStatus) {
    const payload = { quantity, stockStatus };
    const res = await fetch(`/admin/inventories/${inventoryId}`, {
        method: 'PATCH',
        credentials: 'include',
        headers: {
            'Content-Type': 'application/json'
        },
        body: JSON.stringify(payload)
    });

    if (!res.ok) {
        const message = await extractErrorMessage(res, '재고 정보를 수정하지 못했습니다.');
        throw new Error(message);
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
            return parsed.error ?? fallback;
        } catch (parseError) {
            return text.trim();
        }
    } catch (error) {
        console.error('Failed to extract error message', error);
        return fallback;
    }
}

export function initInventoryPanel() {
    if (!tableBody || !pagination) {
        return;
    }

    pagination.addEventListener('click', event => {
        const button = event.target.closest('button[data-page]');
        if (!button || button.disabled) return;
        fetchInventories(Number(button.dataset.page));
    });

    sizeSelector?.addEventListener('change', () => fetchInventories(0));

    filterForm?.addEventListener('submit', event => {
        event.preventDefault();
        fetchInventories(0);
    });

    filterForm?.addEventListener('reset', () => {
        setTimeout(() => {
            fetchInventories(0);
        }, 0);
    });

    tableBody.addEventListener('click', async event => {
        const button = event.target.closest('.inventory-save');
        if (!button) return;

        const row = button.closest('tr[data-inventory-id]');
        if (!row) return;

        const inventoryId = Number(row.dataset.inventoryId);
        const quantityInput = row.querySelector('.inventory-quantity');
        const statusSelectEl = row.querySelector('.inventory-status');

        const quantity = Number(quantityInput?.value ?? 0);
        if (Number.isNaN(quantity) || quantity < 0) {
            showFeedback('재고 수량은 0 이상이어야 합니다.', true);
            return;
        }

        const stockStatus = statusSelectEl?.value ?? '';

        button.disabled = true;
        button.textContent = '저장 중...';
        try {
            await handleUpdate(inventoryId, quantity, stockStatus);
            showFeedback('재고 정보를 저장했습니다.');
            await fetchInventories(currentPage);
        } catch (error) {
            console.error(error);
            showFeedback(error.message, true);
        } finally {
            button.disabled = false;
            button.textContent = '저장';
        }
    });

    fetchInventories(0);
}
