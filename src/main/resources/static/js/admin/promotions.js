const createForm = document.getElementById('form-promotion-create');
const updateForm = document.getElementById('form-promotion-update');
const deleteForm = document.getElementById('form-promotion-delete');
const productsForm = document.getElementById('form-promotion-products');
const feedback = document.getElementById('promotion-feedback');

const promotionTableBody = document.querySelector('#promotion-table tbody');
const promotionCreateCard = document.getElementById('promotion-form-create');
const promotionManageCard = document.getElementById('promotion-form-manage');

const btnPromotionCreateOpen = document.getElementById('btn-promotion-create-open');
const btnPromotionRefresh = document.getElementById('btn-promotion-refresh');
const btnCancelPromotionCreate = document.getElementById('btn-cancel-promotion-create');
const btnCancelPromotionUpdate = document.getElementById('btn-cancel-promotion-update');

const createEventIdInput = createForm?.querySelector('input[name="eventId"]');
const createEventDisplay = createForm?.querySelector('[data-role="event-display-create"]');
const btnSelectEventCreate = document.getElementById('btn-select-event-create');
const btnClearEventCreate = document.getElementById('btn-clear-event-create');
const createTargetTypeSelect = createForm?.querySelector('select[name="targetType"]');
const createTargetIdsInput = createForm?.querySelector('input[name="targetIds"]');

const updateEventIdInput = updateForm?.querySelector('input[name="eventId"]');
const updateEventDisplay = updateForm?.querySelector('[data-role="event-display-update"]');
const btnSelectEventUpdate = document.getElementById('btn-select-event-update');
const btnClearEventUpdate = document.getElementById('btn-clear-event-update');
const updateTargetTypeSelect = updateForm?.querySelector('select[name="targetType"]');
const updateTargetIdsInput = updateForm?.querySelector('input[name="targetIds"]');

const eventSelector = document.getElementById('promotion-event-selector');
const eventSelectorTableBody = document.querySelector('#promotion-event-selector tbody');
const btnCloseEventSelector = document.getElementById('btn-close-promotion-event-selector');

let promotionCache = [];
let eventCache = [];
let eventOptionsLoaded = false;
let eventSelectorContext = null; // 'create' | 'update'

function setFeedback(message, isError = false) {
    if (!feedback) return;
    feedback.textContent = message;
    feedback.classList.toggle('error', isError);
}

function parseDate(value) {
    if (!value) return null;
    const date = new Date(value);
    if (Number.isNaN(date.getTime())) return null;
    return date.toISOString();
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
            targets: buildTargetsFromInputs(createTargetTypeSelect, createTargetIdsInput)
        };

        const res = await fetch('/api/admin/promotions', {
            method: 'POST',
            headers: { 'Content-Type': 'application/json' },
            credentials: 'include',
            body: JSON.stringify(payload)
        });
        if (!res.ok) throw new Error('프로모션 등록에 실패했습니다.');

        setFeedback('프로모션이 등록되었습니다.');
        createForm.reset();
        setSelectedEvent('create', null);
        hidePromotionForms();
        await loadPromotions();
    } catch (err) {
        console.error(err);
        setFeedback(err.message, true);
    }
}

async function updatePromotion(event) {
    event.preventDefault();
    const formData = new FormData(updateForm);
    const promotionId = formData.get('promotionId');
    const promotionNumericId = Number(promotionId);
    try {
        const payload = {
            status: formData.get('status'),
            discountType: formData.get('discountType'),
            discountValue: Number(formData.get('discountValue')),
            startDate: parseDate(formData.get('startDate')),
            endDate: parseDate(formData.get('endDate')),
            eventId: formData.get('eventId') ? Number(formData.get('eventId')) : null,
            targets: buildTargetsFromInputs(updateTargetTypeSelect, updateTargetIdsInput)
        };

        const res = await fetch(`/api/admin/promotions/${promotionId}`, {
            method: 'PATCH',
            headers: { 'Content-Type': 'application/json' },
            credentials: 'include',
            body: JSON.stringify(payload)
        });
        if (!res.ok) throw new Error('프로모션 수정에 실패했습니다.');

        setFeedback('프로모션이 수정되었습니다.');
        await loadPromotions();
        if (!Number.isNaN(promotionNumericId)) {
            openManageForm(promotionNumericId);
        }
    } catch (err) {
        console.error(err);
        setFeedback(err.message, true);
    }
}

async function deletePromotion(event) {
    event.preventDefault();
    const promotionId = new FormData(deleteForm).get('promotionId');
    if (!promotionId) return;
    if (!confirm(`프로모션 ${promotionId}을(를) 삭제하시겠습니까?`)) return;

    try {
        const res = await fetch(`/api/admin/promotions/${promotionId}`, {
            method: 'DELETE',
            credentials: 'include'
        });
        if (!res.ok) throw new Error('프로모션 삭제에 실패했습니다.');

        setFeedback('프로모션이 삭제되었습니다.');
        deleteForm.reset();
        hidePromotionForms();
        await loadPromotions();
    } catch (err) {
        console.error(err);
        setFeedback(err.message, true);
    }
}

async function updatePromotionProducts(event) {
    event.preventDefault();
    const formData = new FormData(productsForm);
    const promotionId = formData.get('promotionId');
    const ids = formData.get('productIds')
        .split(',')
        .map(id => Number(id.trim()))
        .filter(id => !Number.isNaN(id));

    try {
        const res = await fetch(`/api/admin/promotions/${promotionId}/products`, {
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
    hidePromotionForms();
    loadPromotions();
    loadEventOptions();

    createForm?.addEventListener('submit', createPromotion);
    updateForm?.addEventListener('submit', updatePromotion);
    deleteForm?.addEventListener('submit', deletePromotion);
    productsForm?.addEventListener('submit', updatePromotionProducts);

    promotionTableBody?.addEventListener('click', handlePromotionTableClick);

    btnPromotionCreateOpen?.addEventListener('click', () => {
        hidePromotionForms();
        openCreateForm();
    });

    btnPromotionRefresh?.addEventListener('click', () => {
        loadPromotions();
        eventOptionsLoaded = false;
        loadEventOptions();
    });

    btnCancelPromotionCreate?.addEventListener('click', () => {
        createForm.reset();
        setSelectedEvent('create', null);
        hidePromotionForms();
    });

    btnCancelPromotionUpdate?.addEventListener('click', () => {
        updateForm.reset();
        setSelectedEvent('update', null);
        hidePromotionForms();
    });

    btnSelectEventCreate?.addEventListener('click', () => openEventSelector('create'));
    btnSelectEventUpdate?.addEventListener('click', () => openEventSelector('update'));

    btnClearEventCreate?.addEventListener('click', () => setSelectedEvent('create', null));
    btnClearEventUpdate?.addEventListener('click', () => setSelectedEvent('update', null));

    createTargetTypeSelect?.addEventListener('change', () => toggleTargetIdsInput(createTargetTypeSelect, createTargetIdsInput));
    updateTargetTypeSelect?.addEventListener('change', () => toggleTargetIdsInput(updateTargetTypeSelect, updateTargetIdsInput));

    toggleTargetIdsInput(createTargetTypeSelect, createTargetIdsInput);
    toggleTargetIdsInput(updateTargetTypeSelect, updateTargetIdsInput);

    btnCloseEventSelector?.addEventListener('click', closeEventSelector);
    eventSelector?.addEventListener('click', (e) => {
        if (e.target === eventSelector) {
            closeEventSelector();
        }
    });

    eventSelectorTableBody?.addEventListener('click', (e) => {
        const btn = e.target.closest('button[data-action="pick-event"]');
        if (!btn) return;
        const eventId = Number(btn.dataset.id);
        if (Number.isNaN(eventId)) return;
        const selected = eventCache.find(item => item.id === eventId);
        setSelectedEvent(eventSelectorContext, selected ?? null);
        closeEventSelector();
    });
}

function hidePromotionForms() {
    if (promotionCreateCard) promotionCreateCard.style.display = 'none';
    if (promotionManageCard) promotionManageCard.style.display = 'none';
}

async function loadPromotions() {
    if (!promotionTableBody) return;
    try {
        const res = await fetch('/api/admin/promotions', { credentials: 'include' });
        if (!res.ok) throw new Error('프로모션 목록을 불러오지 못했습니다.');

        const payload = await res.json();
        promotionCache = payload?.data || [];

        promotionTableBody.innerHTML = '';
        promotionCache.forEach(renderPromotionRow);
    } catch (err) {
        console.error(err);
        setFeedback(err.message, true);
    }
}

function renderPromotionRow(promotion) {
    const tr = document.createElement('tr');
    const start = promotion.startDate ? promotion.startDate.slice(0, 10) : '';
    const end = promotion.endDate ? promotion.endDate.slice(0, 10) : '';
    const period = start || end ? `${start} ~ ${end}` : '';
    const eventLabel = promotion.eventId
        ? `#${promotion.eventId}${promotion.eventName ? ' ' + promotion.eventName : ''}`
        : '미연결';
    const targetCount = Array.isArray(promotion.targets) ? promotion.targets.length : 0;
    const discountValue = promotion.discountValue ?? '';

    tr.innerHTML = `
        <td>${promotion.id}</td>
        <td>${promotion.status}</td>
        <td>${promotion.discountType}</td>
        <td>${discountValue}</td>
        <td>${period}</td>
        <td>${eventLabel}</td>
        <td>${targetCount}</td>
        <td><button class="small" data-action="manage" data-id="${promotion.id}">관리</button></td>
    `;

    promotionTableBody.appendChild(tr);
}

function handlePromotionTableClick(e) {
    const btn = e.target.closest('button[data-action="manage"]');
    if (!btn) return;
    const id = Number(btn.dataset.id);
    if (Number.isNaN(id)) return;
    hidePromotionForms();
    openManageForm(id);
}

function openCreateForm() {
    setSelectedEvent('create', null);
    if (createTargetTypeSelect) {
        createTargetTypeSelect.value = 'ALL';
    }
    if (createTargetIdsInput) {
        createTargetIdsInput.value = '';
    }
    toggleTargetIdsInput(createTargetTypeSelect, createTargetIdsInput);
    if (promotionCreateCard) promotionCreateCard.style.display = 'block';
}

function openManageForm(promotionId) {
    const promotion = promotionCache.find(item => item.id === promotionId);
    if (!promotion) {
        setFeedback('선택한 프로모션을 찾을 수 없습니다.', true);
        return;
    }

    setSelectedEvent('update', promotion.eventId ? { id: promotion.eventId, name: promotion.eventName } : null);

    if (promotionManageCard) promotionManageCard.style.display = 'block';

    updateForm.promotionId.value = promotion.id;
    updateForm.status.value = promotion.status;
    updateForm.discountType.value = promotion.discountType;
    updateForm.discountValue.value = promotion.discountValue ?? '';
    updateForm.startDate.value = promotion.startDate ? formatDateForInput(promotion.startDate) : '';
    updateForm.endDate.value = promotion.endDate ? formatDateForInput(promotion.endDate) : '';

    const { targetType, targetIds } = deriveTargetFields(promotion.targets);
    if (updateTargetTypeSelect) updateTargetTypeSelect.value = targetType;
    if (updateTargetIdsInput) updateTargetIdsInput.value = targetIds;
    toggleTargetIdsInput(updateTargetTypeSelect, updateTargetIdsInput);

    if (deleteForm) {
        deleteForm.promotionId.value = promotion.id;
    }
    if (productsForm) {
        productsForm.promotionId.value = promotion.id;
        if (productsForm.productIds) {
            productsForm.productIds.value = '';
        }
    }
}

function setSelectedEvent(context, event) {
    if (!context) return;
    if (context === 'create') {
        if (createEventIdInput) createEventIdInput.value = event?.id ?? '';
        if (createEventDisplay) {
            createEventDisplay.value = event ? formatEventLabel(event) : '선택된 이벤트 없음';
        }
    }

    if (context === 'update') {
        if (updateEventIdInput) updateEventIdInput.value = event?.id ?? '';
        if (updateEventDisplay) {
            updateEventDisplay.value = event ? formatEventLabel(event) : '선택된 이벤트 없음';
        }
    }
}

async function openEventSelector(context) {
    eventSelectorContext = context;
    try {
        await ensureEventOptions();
        renderEventSelectorTable();
        if (eventSelector) eventSelector.style.display = 'flex';
    } catch (err) {
        console.error(err);
        setFeedback(err.message, true);
    }
}

function closeEventSelector() {
    if (eventSelector) {
        eventSelector.style.display = 'none';
    }
    eventSelectorContext = null;
}

async function ensureEventOptions() {
    if (!eventOptionsLoaded) {
        await loadEventOptions();
    }
}

async function loadEventOptions() {
    try {
        const res = await fetch('/api/events/admin', { credentials: 'include' });
        if (!res.ok) throw new Error('이벤트 목록을 불러오지 못했습니다.');

        const payload = await res.json();
        eventCache = payload?.data || [];
        eventOptionsLoaded = true;
    } catch (err) {
        console.error(err);
        setFeedback(err.message, true);
        throw err;
    }
}

function renderEventSelectorTable() {
    if (!eventSelectorTableBody) return;

    const rawSelection = eventSelectorContext === 'create'
        ? (createEventIdInput?.value ?? '')
        : (updateEventIdInput?.value ?? '');
    const activeSelection = rawSelection ? Number(rawSelection) : NaN;

    eventSelectorTableBody.innerHTML = '';

    eventCache.forEach(ev => {
        const tr = document.createElement('tr');
        const start = ev.startDate ? ev.startDate.slice(0, 10) : '';
        const end = ev.endDate ? ev.endDate.slice(0, 10) : '';
        const period = start || end ? `${start} ~ ${end}` : '';

        if (!Number.isNaN(activeSelection) && ev.id === activeSelection) {
            tr.style.backgroundColor = '#eef3ff';
        }

        tr.innerHTML = `
            <td>${ev.id}</td>
            <td>${ev.name}</td>
            <td>${ev.status}</td>
            <td>${period}</td>
            <td><button class="small" data-action="pick-event" data-id="${ev.id}">선택</button></td>
        `;

        eventSelectorTableBody.appendChild(tr);
    });
}

function formatEventLabel(event) {
    return `#${event.id}${event.name ? ' ' + event.name : ''}`;
}

function buildTargetsFromInputs(typeSelect, idsInput) {
    const typeRaw = typeSelect?.value ?? 'ALL';
    const idsRaw = idsInput?.value ?? '';
    const type = typeRaw.trim().toUpperCase();

    if (!type || type === 'ALL') {
        return [{ targetType: 'ALL', targetId: 0 }];
    }

    const parts = idsRaw.split(',')
        .map(part => part.trim())
        .filter(Boolean);

    if (parts.length === 0) {
        throw new Error('타겟 ID를 입력하세요.');
    }

    return parts.map(part => {
        const id = Number(part);
        if (!Number.isFinite(id)) {
            throw new Error('타겟 ID는 숫자여야 합니다.');
        }
        return { targetType: type, targetId: id };
    });
}

function toggleTargetIdsInput(typeSelect, idsInput) {
    if (!typeSelect || !idsInput) return;
    const type = typeSelect.value?.toUpperCase?.() ?? 'ALL';
    const shouldDisable = type === 'ALL';
    idsInput.disabled = shouldDisable;
    if (shouldDisable) {
        idsInput.value = '';
    }
}

function deriveTargetFields(targets) {
    if (!targets || targets.length === 0) {
        return { targetType: 'ALL', targetIds: '' };
    }
    const first = targets[0];
    const type = (first.targetType || 'ALL').toUpperCase();
    if (type === 'ALL') {
        return { targetType: 'ALL', targetIds: '' };
    }

    const baseType = (first.targetType || '').toUpperCase();
    const ids = targets
        .filter(item => (item.targetType || '').toUpperCase() === baseType)
        .map(item => item.targetId)
        .join(',');
    return { targetType: type, targetIds: ids };
}

function formatDateForInput(isoString) {
    const date = new Date(isoString);
    if (Number.isNaN(date.getTime())) return '';
    const tzOffset = date.getTimezoneOffset() * 60000;
    return new Date(date.getTime() - tzOffset).toISOString().slice(0, 16);
}
