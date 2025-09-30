const createForm = document.getElementById('form-promotion-create');
const updateForm = document.getElementById('form-promotion-update');
const deleteForm = document.getElementById('form-promotion-delete');
const productsForm = document.getElementById('form-promotion-products');
const feedback = document.getElementById('promotion-feedback');

function setFeedback(message, isError = false) {
    feedback.textContent = message;
    feedback.classList.toggle('error', isError);
}

function parseDate(value) {
    if (!value) return null;
    const date = new Date(value);
    if (Number.isNaN(date.getTime())) return null;
    return date.toISOString();
}

function parseTargets(raw) {
    if (!raw) return null;
    try {
        const targets = JSON.parse(raw);
        if (!Array.isArray(targets)) throw new Error();
        return targets.map(target => ({
            targetType: target.targetType,
            targetId: target.targetId
        }));
    } catch (err) {
        throw new Error('타겟 JSON 형식이 올바르지 않습니다.');
    }
}

async function createPromotion(event) {
    event.preventDefault();
    const formData = new FormData(createForm);
    try {
        const payload = {
            status: formData.get('status'),
            discountType: formData.get('discountType'),
            discountValue: Number(formData.get('discountValue')),
            startDate: parseDate(formData.get('startDate')),
            endDate: parseDate(formData.get('endDate')),
            eventId: formData.get('eventId') ? Number(formData.get('eventId')) : null,
            targets: parseTargets(formData.get('targets'))
        };
        const res = await fetch('/admin/promotions', {
            method: 'POST',
            headers: { 'Content-Type': 'application/json' },
            credentials: 'include',
            body: JSON.stringify(payload)
        });
        if (!res.ok) throw new Error('프로모션 등록에 실패했습니다.');
        setFeedback('프로모션이 등록되었습니다.');
        createForm.reset();
    } catch (err) {
        console.error(err);
        setFeedback(err.message, true);
    }
}

async function updatePromotion(event) {
    event.preventDefault();
    const formData = new FormData(updateForm);
    const promotionId = formData.get('promotionId');
    try {
        const payload = {
            status: formData.get('status'),
            discountType: formData.get('discountType'),
            discountValue: Number(formData.get('discountValue')),
            startDate: parseDate(formData.get('startDate')),
            endDate: parseDate(formData.get('endDate')),
            eventId: formData.get('eventId') ? Number(formData.get('eventId')) : null,
            targets: parseTargets(formData.get('targets'))
        };
        const res = await fetch(`/admin/promotions/${promotionId}`, {
            method: 'PATCH',
            headers: { 'Content-Type': 'application/json' },
            credentials: 'include',
            body: JSON.stringify(payload)
        });
        if (!res.ok) throw new Error('프로모션 수정에 실패했습니다.');
        setFeedback('프로모션이 수정되었습니다.');
    } catch (err) {
        console.error(err);
        setFeedback(err.message, true);
    }
}

async function deletePromotion(event) {
    event.preventDefault();
    const promotionId = new FormData(deleteForm).get('promotionId');
    if (!confirm(`프로모션 ${promotionId}을(를) 삭제하시겠습니까?`)) return;
    try {
        const res = await fetch(`/admin/promotions/${promotionId}`, {
            method: 'DELETE',
            credentials: 'include'
        });
        if (!res.ok) throw new Error('프로모션 삭제에 실패했습니다.');
        setFeedback('프로모션이 삭제되었습니다.');
        deleteForm.reset();
    } catch (err) {
        console.error(err);
        setFeedback(err.message, true);
    }
}

async function updatePromotionProducts(event) {
    event.preventDefault();
    const formData = new FormData(productsForm);
    const promotionId = formData.get('promotionId');
    const ids = formData.get('productIds').split(',').map(id => Number(id.trim())).filter(id => !Number.isNaN(id));
    try {
        const res = await fetch(`/admin/promotions/${promotionId}/products`, {
            method: 'PATCH',
            headers: { 'Content-Type': 'application/json' },
            credentials: 'include',
            body: JSON.stringify({ productIds: ids })
        });
        if (!res.ok) throw new Error('프로모션 대상 상품 업데이트에 실패했습니다.');
        setFeedback('프로모션 대상 상품이 업데이트되었습니다.');
    } catch (err) {
        console.error(err);
        setFeedback(err.message, true);
    }
}

export function initPromotionPanel() {
    createForm.addEventListener('submit', createPromotion);
    updateForm.addEventListener('submit', updatePromotion);
    deleteForm.addEventListener('submit', deletePromotion);
    productsForm.addEventListener('submit', updatePromotionProducts);
}
