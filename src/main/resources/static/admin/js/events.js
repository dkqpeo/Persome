const createForm = document.getElementById('form-event-create');
const updateForm = document.getElementById('form-event-update');
const deleteForm = document.getElementById('form-event-delete');
const feedback = document.getElementById('event-feedback');

function setFeedback(message, isError = false) {
    if (!feedback) return;
    feedback.textContent = message;
    feedback.classList.toggle('error', Boolean(isError));
}

function formatDateForInput(value) {
    if (!value) return '';
    const date = new Date(value);
    if (Number.isNaN(date.getTime())) return '';
    const offset = date.getTimezoneOffset();
    const local = new Date(date.getTime() - offset * 60000);
    return local.toISOString().slice(0, 16);
}

function resolveImageUrl(url) {
    if (!url) return null;
    if (url.startsWith('http://') || url.startsWith('https://') || url.startsWith('data:')) {
        return url;
    }
    if (url.startsWith('/')) {
        return url;
    }
    return `/${url}`.replace(/\/+/g, '/');
}

async function extractErrorMessage(response) {
    try {
        const contentType = response.headers.get('content-type') || '';
        if (contentType.includes('application/json')) {
            const data = await response.json();
            return data?.message || data?.error || null;
        }
        const text = await response.text();
        return text || null;
    } catch (err) {
        return null;
    }
}

async function ensureSuccess(response, fallbackMessage) {
    if (response.ok) return;
    const message = await extractErrorMessage(response);
    throw new Error(message || fallbackMessage);
}

function clearPreview(previewId) {
    const container = document.getElementById(previewId);
    if (container) {
        container.innerHTML = '';
    }
}

function bindFileInputPreview(input, previewId) {
    if (!input) return;
    const container = document.getElementById(previewId);
    if (!container) return;

    input.addEventListener('change', () => {
        container.innerHTML = '';
        const files = Array.from(input.files || []).filter(file => file && file.size > 0);
        if (!files.length) {
            return;
        }
        const list = document.createElement('ul');
        files.forEach((file, index) => {
            const item = document.createElement('li');
            item.textContent = `${index + 1}. ${file.name}`;
            list.appendChild(item);
        });
        container.appendChild(list);
    });
}

function renderExistingThumbnail(url) {
    const container = document.getElementById('event-thumbnail-current');
    if (!container) return;
    container.innerHTML = '';

    const resolved = resolveImageUrl(url);
    if (resolved) {
        const img = document.createElement('img');
        img.src = resolved;
        img.alt = '현재 등록된 썸네일';
        container.appendChild(img);
    } else {
        container.textContent = '등록된 썸네일이 없습니다.';
    }
}

function renderExistingImages(urls) {
    const container = document.getElementById('event-images-current');
    if (!container) return;
    container.innerHTML = '';

    if (!Array.isArray(urls) || urls.length === 0) {
        container.textContent = '등록된 이벤트 이미지가 없습니다.';
        return;
    }

    urls.forEach((url, index) => {
        const wrapper = document.createElement('div');
        const resolved = resolveImageUrl(url);
        if (resolved) {
            const img = document.createElement('img');
            img.src = resolved;
            img.alt = `이벤트 이미지 ${index + 1}`;
            wrapper.appendChild(img);
        }
        const caption = document.createElement('div');
        caption.className = 'form-note';
        caption.textContent = `${index + 1}. ${url}`;
        wrapper.appendChild(caption);
        container.appendChild(wrapper);
    });
}

function renderExistingPromotionInfo(promotions) {
    const container = document.getElementById('event-promotions-current');
    if (!container) return;
    container.innerHTML = '';

    if (!Array.isArray(promotions) || promotions.length === 0) {
        container.textContent = '연결된 프로모션이 없습니다.';
        return;
    }

    promotions.forEach((promotion, index) => {
        const block = document.createElement('div');
        block.className = 'form-note';
        const lines = [];
        lines.push(`${index + 1}. 상태: ${promotion.status}`);
        lines.push(`   할인유형: ${promotion.discountType}, 값: ${promotion.discountValue}`);
        if (promotion.startDate) {
            lines.push(`   시작: ${new Date(promotion.startDate).toLocaleString('ko-KR')}`);
        }
        if (promotion.endDate) {
            lines.push(`   종료: ${new Date(promotion.endDate).toLocaleString('ko-KR')}`);
        }
        if (Array.isArray(promotion.targets) && promotion.targets.length > 0) {
            const targetSummary = promotion.targets
                .map(target => target.targetType === 'ALL'
                    ? 'ALL'
                    : `${target.targetType}:${target.targetId}`)
                .join(', ');
            lines.push(`   타깃: ${targetSummary}`);
        } else {
            lines.push('   타깃: ALL');
        }
        block.textContent = lines.join('\n');
        container.appendChild(block);
    });
}

function applyPromotionToForm(promotions) {
    if (!updateForm) return;
    const statusEl = updateForm.querySelector('select[name="promotionStatus"]');
    const typeEl = updateForm.querySelector('select[name="promotionDiscountType"]');
    const valueEl = updateForm.querySelector('input[name="promotionDiscountValue"]');
    const startEl = updateForm.querySelector('input[name="promotionStartDate"]');
    const endEl = updateForm.querySelector('input[name="promotionEndDate"]');
    const targetTypeEl = updateForm.querySelector('select[name="promotionTargetType"]');
    const targetIdsEl = updateForm.querySelector('input[name="promotionTargetIds"]');

    const promotion = Array.isArray(promotions) && promotions.length > 0 ? promotions[0] : null;

    if (promotion) {
        if (statusEl) statusEl.value = promotion.status ?? 'ACTIVE';
        if (typeEl) typeEl.value = promotion.discountType ?? 'RATE';
        if (valueEl) valueEl.value = promotion.discountValue ?? '';
        if (startEl) startEl.value = promotion.startDate ? formatDateForInput(promotion.startDate) : '';
        if (endEl) endEl.value = promotion.endDate ? formatDateForInput(promotion.endDate) : '';

        if (Array.isArray(promotion.targets) && promotion.targets.length > 0) {
            const firstTarget = promotion.targets[0];
            if (targetTypeEl) targetTypeEl.value = firstTarget.targetType ?? 'ALL';
            if (targetIdsEl) {
                if (firstTarget.targetType === 'ALL') {
                    targetIdsEl.value = '';
                } else {
                    const ids = promotion.targets.map(t => t.targetId).filter(id => id != null && id !== 0);
                    targetIdsEl.value = ids.join(',');
                }
            }
        } else {
            if (targetTypeEl) targetTypeEl.value = 'ALL';
            if (targetIdsEl) targetIdsEl.value = '';
        }
    } else {
        if (statusEl) statusEl.value = '';
        if (typeEl) typeEl.value = '';
        if (valueEl) valueEl.value = '';
        if (startEl) startEl.value = '';
        if (endEl) endEl.value = '';
        if (targetTypeEl) targetTypeEl.value = 'ALL';
        if (targetIdsEl) targetIdsEl.value = '';
    }
}

function buildEventFormData(form) {
    const formData = new FormData();

    const name = form.querySelector('input[name="name"]').value.trim();
    if (!name) throw new Error('이벤트 이름을 입력하세요.');
    formData.append('name', name);

    const description = form.querySelector('textarea[name="description"]').value.trim();
    if (!description) throw new Error('이벤트 설명을 입력하세요.');
    formData.append('description', description);

    const startDate = form.querySelector('input[name="startDate"]').value;
    if (!startDate) throw new Error('시작일을 입력하세요.');
    formData.append('startDate', startDate);

    const endDate = form.querySelector('input[name="endDate"]').value;
    if (!endDate) throw new Error('종료일을 입력하세요.');
    formData.append('endDate', endDate);

    const status = form.querySelector('select[name="status"]').value.trim();
    if (!status) throw new Error('이벤트 상태를 선택하세요.');
    formData.append('status', status.toUpperCase());

    const thumbnailInput = form.querySelector('input[name="thumbnail"]');
    if (thumbnailInput && thumbnailInput.files.length > 0) {
        const file = thumbnailInput.files[0];
        if (file && file.size > 0) {
            formData.append('thumbnail', file);
        }
    }

    const imagesInput = form.querySelector('input[name="images"]');
    if (imagesInput && imagesInput.files.length > 0) {
        Array.from(imagesInput.files)
            .filter(file => file && file.size > 0)
            .forEach(file => formData.append('images', file));
    }

    const promoStatusEl = form.querySelector('select[name="promotionStatus"]');
    if (promoStatusEl && promoStatusEl.value) {
        formData.append('promotionStatus', promoStatusEl.value.toUpperCase());
    }

    const promoTypeEl = form.querySelector('select[name="promotionDiscountType"]');
    if (promoTypeEl && promoTypeEl.value) {
        formData.append('promotionDiscountType', promoTypeEl.value.toUpperCase());
    }

    const promoValueEl = form.querySelector('input[name="promotionDiscountValue"]');
    if (promoValueEl && promoValueEl.value) {
        formData.append('promotionDiscountValue', promoValueEl.value);
    }

    const promoStartEl = form.querySelector('input[name="promotionStartDate"]');
    if (promoStartEl && promoStartEl.value) {
        formData.append('promotionStartDate', promoStartEl.value);
    }

    const promoEndEl = form.querySelector('input[name="promotionEndDate"]');
    if (promoEndEl && promoEndEl.value) {
        formData.append('promotionEndDate', promoEndEl.value);
    }

    const promoTargetTypeEl = form.querySelector('select[name="promotionTargetType"]');
    if (promoTargetTypeEl && promoTargetTypeEl.value) {
        formData.append('promotionTargetType', promoTargetTypeEl.value.toUpperCase());
    }

    const promoTargetIdsEl = form.querySelector('input[name="promotionTargetIds"]');
    if (promoTargetIdsEl && promoTargetIdsEl.value) {
        formData.append('promotionTargetIds', promoTargetIdsEl.value);
    }

    return formData;
}

async function createEvent(event) {
    event.preventDefault();
    try {
        const formData = buildEventFormData(createForm);
        const response = await fetch('/admin/events', {
            method: 'POST',
            credentials: 'include',
            body: formData
        });
        await ensureSuccess(response, '이벤트 생성에 실패했습니다.');
        setFeedback('이벤트가 등록되었습니다.');
        createForm.reset();
        clearPreview('create-event-thumbnail-preview');
        clearPreview('create-event-images-preview');
    } catch (err) {
        console.error(err);
        setFeedback(err.message, true);
    }
}

async function updateEvent(event) {
    event.preventDefault();
    const eventIdInput = updateForm.querySelector('input[name="eventId"]');
    const eventId = eventIdInput?.value.trim();
    if (!eventId) {
        setFeedback('이벤트 ID를 입력하세요.', true);
        return;
    }

    try {
        const formData = buildEventFormData(updateForm);
        const response = await fetch(`/admin/events/${eventId}`, {
            method: 'PATCH',
            credentials: 'include',
            body: formData
        });
        await ensureSuccess(response, '이벤트 수정에 실패했습니다.');
        setFeedback('이벤트가 수정되었습니다.');
        const thumbnailInput = updateForm.querySelector('input[name="thumbnail"]');
        const imagesInput = updateForm.querySelector('input[name="images"]');
        if (thumbnailInput) thumbnailInput.value = '';
        if (imagesInput) imagesInput.value = '';
        clearPreview('update-event-thumbnail-preview');
        clearPreview('update-event-images-preview');
        await loadEventDetail(eventId, { silent: true });
    } catch (err) {
        console.error(err);
        setFeedback(err.message, true);
    }
}

async function deleteEvent(event) {
    event.preventDefault();
    const eventId = new FormData(deleteForm).get('eventId');
    if (!eventId) {
        setFeedback('삭제할 이벤트 ID를 입력하세요.', true);
        return;
    }
    if (!confirm(`이벤트 ${eventId}을(를) 삭제하시겠습니까?`)) return;

    try {
        const response = await fetch(`/admin/events/${eventId}`, {
            method: 'DELETE',
            credentials: 'include'
        });
        await ensureSuccess(response, '이벤트 삭제에 실패했습니다.');
        setFeedback('이벤트가 삭제되었습니다.');
        deleteForm.reset();
    } catch (err) {
        console.error(err);
        setFeedback(err.message, true);
    }
}

async function loadEventDetail(eventId, { silent = false } = {}) {
    if (!eventId) return;
    try {
        if (!silent) {
            setFeedback('이벤트 정보를 불러오는 중입니다...');
        }
        const response = await fetch(`/api/events/admin/${eventId}/details`, {
            credentials: 'include'
        });
        if (!response.ok) {
            const message = await extractErrorMessage(response);
            throw new Error(message || '이벤트 정보를 불러오지 못했습니다.');
        }
        const payload = await response.json();
        const data = payload?.data;
        if (!data) {
            throw new Error('이벤트 정보를 찾을 수 없습니다.');
        }

        updateForm.name.value = data.name ?? '';
        updateForm.description.value = data.description ?? '';
        updateForm.startDate.value = data.startDate ? formatDateForInput(data.startDate) : '';
        updateForm.endDate.value = data.endDate ? formatDateForInput(data.endDate) : '';
        updateForm.status.value = data.status ?? 'DRAFT';

        renderExistingThumbnail(data.thumbnailUrl);
        renderExistingImages(data.images);
        renderExistingPromotionInfo(data.promotions);
        applyPromotionToForm(data.promotions);
        clearPreview('update-event-thumbnail-preview');
        clearPreview('update-event-images-preview');

        if (!silent) {
            setFeedback('이벤트 정보를 불러왔습니다.');
        }
    } catch (err) {
        console.error(err);
        setFeedback(err.message, true);
    }
}

export function initEventPanel() {
    if (createForm) {
        createForm.addEventListener('submit', createEvent);
        bindFileInputPreview(createForm.querySelector('input[name="thumbnail"]'), 'create-event-thumbnail-preview');
        bindFileInputPreview(createForm.querySelector('input[name="images"]'), 'create-event-images-preview');
    }

    if (updateForm) {
        updateForm.addEventListener('submit', updateEvent);
        bindFileInputPreview(updateForm.querySelector('input[name="thumbnail"]'), 'update-event-thumbnail-preview');
        bindFileInputPreview(updateForm.querySelector('input[name="images"]'), 'update-event-images-preview');

        const eventIdInput = updateForm.querySelector('input[name="eventId"]');
        if (eventIdInput) {
            eventIdInput.addEventListener('blur', () => {
                const value = eventIdInput.value.trim();
                if (value) {
                    loadEventDetail(value);
                }
            });
        }
    }

    if (deleteForm) {
        deleteForm.addEventListener('submit', deleteEvent);
    }
}
