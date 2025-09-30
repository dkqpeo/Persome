const loadForm = document.getElementById('form-product-load');
const productPreview = document.getElementById('product-preview');
const updateForm = document.getElementById('form-product-update');
const statusForm = document.getElementById('form-product-status');
const deleteForm = document.getElementById('form-product-delete');
const optionForm = document.getElementById('form-product-options');
const feedback = document.getElementById('product-feedback');

function setFeedback(message, isError = false) {
    feedback.textContent = message;
    feedback.classList.toggle('error', isError);
}

async function fetchProductDetail(productId, displayName) {
    if (!productId) return;
    try {
        const res = await fetch(`/api/products/${productId}`, { credentials: 'include' });
        if (!res.ok) throw new Error('상품 정보를 가져오지 못했습니다.');
        const data = await res.json();
        productPreview.textContent = JSON.stringify(data, null, 2);

        updateForm.productId.value = productId;
        updateForm.name.value = data.name ?? '';
        updateForm.description.value = data.description ?? '';

        statusForm.productId.value = productId;
        deleteForm.productId.value = productId;
        optionForm.productId.value = productId;

        const label = displayName ?? data.name ?? productId;
        setFeedback(`"${label}" 상세 정보를 불러왔습니다.`);
    } catch (err) {
        console.error(err);
        productPreview.textContent = '';
        updateForm.reset();
        statusForm.reset();
        deleteForm.reset();
        optionForm.reset();
        setFeedback(err.message, true);
    }
}

async function searchProductByName(productName) {
    const keyword = (productName ?? '').trim();
    if (!keyword) {
        setFeedback('상품명을 입력하세요.', true);
        return;
    }

    try {
        setFeedback('상품을 검색하는 중입니다...', false);
        productPreview.textContent = '';

        const res = await fetch(`/api/products/search?keyword=${encodeURIComponent(keyword)}&page=0&size=24`, {
            credentials: 'include'
        });
        if (!res.ok) throw new Error('상품 검색에 실패했습니다.');

        const data = await res.json();
        const products = Array.isArray(data.products) ? data.products : [];
        if (products.length === 0) {
            setFeedback('일치하는 상품이 없습니다.', true);
            return;
        }

        const normalized = keyword.toLowerCase();
        const exactMatch = products.find(item => (item.name ?? '').toLowerCase() === normalized);
        const target = exactMatch ?? products[0];

        if (loadForm.productName) {
            loadForm.productName.value = target.name ?? keyword;
        }

        await fetchProductDetail(target.product_id, target.name);

        if (!exactMatch && products.length > 1) {
            const summary = products
                .map(item => `• ${item.name} (ID: ${item.product_id})`)
                .join('\n');
            productPreview.textContent = `검색 결과 (${products.length}건)\n${summary}\n\n선택된 상품 상세\n${productPreview.textContent}`;
            setFeedback(`"${keyword}" 검색 결과 ${products.length}건 중 "${target.name}"(ID: ${target.product_id})을 불러왔습니다.`, false);
        }
    } catch (err) {
        console.error(err);
        productPreview.textContent = '';
        setFeedback(err.message, true);
    }
}

async function loadProduct(event) {
    event.preventDefault();
    const formData = new FormData(loadForm);
    const productName = formData.get('productName');
    await searchProductByName(productName);
}

async function submitUpdate(event) {
    event.preventDefault();
    const formData = new FormData(updateForm);
    const payload = {
        name: formData.get('name'),
        description: formData.get('description'),
        categoryId: Number(formData.get('categoryId')),
        brandId: Number(formData.get('brandId'))
    };
    const productId = formData.get('productId');
    try {
        const res = await fetch(`/admin/products/${productId}`, {
            method: 'PATCH',
            headers: { 'Content-Type': 'application/json' },
            credentials: 'include',
            body: JSON.stringify(payload)
        });
        if (!res.ok) throw new Error('상품 정보 수정에 실패했습니다.');
        setFeedback('상품 정보가 수정되었습니다.');
        await fetchProductDetail(productId);
    } catch (err) {
        console.error(err);
        setFeedback(err.message, true);
    }
}

async function submitStatus(event) {
    event.preventDefault();
    const formData = new FormData(statusForm);
    const productId = formData.get('productId');
    const status = formData.get('status');
    try {
        const res = await fetch(`/admin/products/${productId}/status`, {
            method: 'PATCH',
            headers: { 'Content-Type': 'application/json' },
            credentials: 'include',
            body: JSON.stringify({ status })
        });
        if (!res.ok) throw new Error('상품 상태 변경에 실패했습니다.');
        setFeedback('상품 상태가 변경되었습니다.');
    } catch (err) {
        console.error(err);
        setFeedback(err.message, true);
    }
}

async function submitDelete(event) {
    event.preventDefault();
    const productId = new FormData(deleteForm).get('productId');
    if (!confirm(`상품 ${productId}을(를) 삭제하시겠습니까?`)) return;
    try {
        const res = await fetch(`/admin/products/${productId}`, {
            method: 'DELETE',
            credentials: 'include'
        });
        if (!res.ok) throw new Error('상품 삭제에 실패했습니다.');
        setFeedback('상품이 삭제되었습니다.');
        productPreview.textContent = '';
        updateForm.reset();
        statusForm.reset();
        optionForm.reset();
    } catch (err) {
        console.error(err);
        setFeedback(err.message, true);
    }
}

async function submitOptions(event) {
    event.preventDefault();
    const formData = new FormData(optionForm);
    const productId = formData.get('productId');
    const raw = formData.get('options');
    let options;
    try {
        options = JSON.parse(raw);
    } catch (err) {
        setFeedback('옵션 JSON 형식이 올바르지 않습니다.', true);
        return;
    }
    if (!Array.isArray(options)) {
        setFeedback('옵션 JSON은 배열이어야 합니다.', true);
        return;
    }
    try {
        const res = await fetch(`/admin/products/${productId}/options`, {
            method: 'PATCH',
            headers: { 'Content-Type': 'application/json' },
            credentials: 'include',
            body: JSON.stringify({ options })
        });
        if (!res.ok) throw new Error('상품 옵션 수정에 실패했습니다.');
        setFeedback('상품 옵션이 수정되었습니다.');
    } catch (err) {
        console.error(err);
        setFeedback(err.message, true);
    }
}

export function initProductPanel() {
    loadForm.addEventListener('submit', loadProduct);
    updateForm.addEventListener('submit', submitUpdate);
    statusForm.addEventListener('submit', submitStatus);
    deleteForm.addEventListener('submit', submitDelete);
    optionForm.addEventListener('submit', submitOptions);
}
