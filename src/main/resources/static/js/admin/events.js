const createForm = document.getElementById('form-event-create');
const updateForm = document.getElementById('form-event-update');
const deleteForm = document.getElementById('form-event-delete');
const feedback = document.getElementById('event-feedback');
const eventTableBody = document.querySelector('#event-table tbody');

// 폼 컨테이너들
const formCreateBox = document.getElementById('event-form-create');
const formUpdateBox = document.getElementById('event-form-update');
const formDeleteBox = document.getElementById('event-form-delete');

// 버튼
const btnCreateOpen = document.getElementById('btn-event-create-open');

function setFeedback(message, isError = false) {
    feedback.textContent = message;
    feedback.classList.toggle('error', Boolean(isError));
}

async function extractErrorMessage(response) {
    try {
        const contentType = response.headers.get('content-type') || '';
        if (contentType.includes('application/json')) {
            const data = await response.json();
            return data?.message || data?.error || null;
        }
        return await response.text();
    } catch {
        return null;
    }
}

async function ensureSuccess(response, fallbackMessage) {
    if (response.ok) return;
    const message = await extractErrorMessage(response);
    throw new Error(message || fallbackMessage);
}

function hideAllForms() {
    formCreateBox.style.display = 'none';
    formUpdateBox.style.display = 'none';
    formDeleteBox.style.display = 'none';
}

async function loadEvents() {
    try {
        const res = await fetch('/api/events/admin', { credentials: 'include' });
        await ensureSuccess(res, '이벤트 목록 불러오기 실패');
        const payload = await res.json();
        const events = payload?.data || [];
        eventTableBody.innerHTML = '';

        events.forEach(ev => {
            const tr = document.createElement('tr');
            tr.innerHTML = `
        <td>${ev.id}</td>
        <td>${ev.name}</td>
        <td>${ev.status}</td>
        <td>${ev.startDate?.slice(0,10)} ~ ${ev.endDate?.slice(0,10)}</td>
        <td>
          <button class="small" data-action="edit" data-id="${ev.id}">수정</button>
          <button class="small danger" data-action="delete" data-id="${ev.id}">삭제</button>
        </td>
      `;
            eventTableBody.appendChild(tr);
        });
    } catch (err) {
        setFeedback(err.message, true);
    }
}

async function loadEventDetail(eventId) {
    try {
        const response = await fetch(`/api/events/admin/${eventId}/details`, {
            credentials: "include"
        });
        if (!response.ok) throw new Error("이벤트 정보를 불러올 수 없습니다.");
        const payload = await response.json();
        const data = payload.data;

        // 기본 값 채우기
        updateForm.querySelector('input[name="eventId"]').value = eventId;
        updateForm.querySelector('input[name="name"]').value = data.name || '';
        updateForm.querySelector('textarea[name="description"]').value = data.description || '';
        updateForm.querySelector('input[name="startDate"]').value = data.startDate ? formatDateForInput(data.startDate) : '';
        updateForm.querySelector('input[name="endDate"]').value = data.endDate ? formatDateForInput(data.endDate) : '';
        updateForm.querySelector('select[name="status"]').value = data.status || 'DRAFT';

        // 썸네일 표시
        renderExistingThumbnail(data.thumbnailUrl);

        // 이미지 표시
        renderExistingImages(data.images);

        // 프로모션 표시
        renderExistingPromotionInfo(data.promotions);

        clearPreview("update-event-thumbnail-preview");
        clearPreview("update-event-images-preview");
    } catch (err) {
        console.error(err);
        setFeedback(err.message, true);
    }
}

// 이벤트 ID 입력 후 포커스 아웃 시 실행
const eventIdInput = updateForm.querySelector('input[name="eventId"]');
if (eventIdInput) {
    eventIdInput.addEventListener('blur', () => {
        const value = eventIdInput.value.trim();
        if (value) {
            loadEventDetail(value);
        }
    });
}

async function createEvent(e) {
    e.preventDefault();
    try {
        const payload = {
            name: createForm.name.value.trim(),
            description: createForm.description.value.trim(),
            startDate: createForm.startDate.value,
            endDate: createForm.endDate.value,
            status: createForm.status.value
        };
        const res = await fetch('/api/events/admin', {
            method: 'POST',
            headers: { 'Content-Type': 'application/json' },
            credentials: 'include',
            body: JSON.stringify(payload)
        });
        await ensureSuccess(res, '이벤트 등록 실패');
        setFeedback('이벤트 등록 성공');
        createForm.reset();
        hideAllForms();
        loadEvents();
    } catch (err) {
        setFeedback(err.message, true);
    }
}

async function updateEvent(e) {
    e.preventDefault();
    try {
        const id = updateForm.eventId.value.trim();
        if (!id) return setFeedback('이벤트 ID를 입력하세요.', true);

        const payload = {
            name: updateForm.name.value.trim(),
            description: updateForm.description.value.trim(),
            startDate: updateForm.startDate.value,
            endDate: updateForm.endDate.value,
            status: updateForm.status.value
        };

        const res = await fetch(`/api/events/admin/${id}`, {
            method: 'PUT',
            headers: { 'Content-Type': 'application/json' },
            credentials: 'include',
            body: JSON.stringify(payload)
        });
        await ensureSuccess(res, '이벤트 수정 실패');
        setFeedback('이벤트 수정 성공');
        updateForm.reset();
        hideAllForms();
        loadEvents();
    } catch (err) {
        setFeedback(err.message, true);
    }
}

async function deleteEvent(e) {
    e.preventDefault();
    try {
        const id = deleteForm.eventId.value.trim();
        if (!id) return setFeedback('이벤트 ID를 입력하세요.', true);
        if (!confirm(`${id}번 이벤트를 삭제하시겠습니까?`)) return;

        const res = await fetch(`/api/events/admin/${id}`, {
            method: 'DELETE',
            credentials: 'include'
        });
        await ensureSuccess(res, '이벤트 삭제 실패');
        setFeedback('이벤트 삭제 성공');
        deleteForm.reset();
        hideAllForms();
        loadEvents();
    } catch (err) {
        setFeedback(err.message, true);
    }
}

function handleTableClick(e) {
    const btn = e.target.closest('button[data-action]');
    if (!btn) return;
    const id = btn.dataset.id;

    if (btn.dataset.action === 'edit') {
        hideAllForms();
        formUpdateBox.style.display = 'block';
        updateForm.eventId.value = id;
        setFeedback(`${id}번 이벤트 수정`);

        // 이벤트 상세 정보 로딩 추가
        loadEventDetail(id);
    }

    if (btn.dataset.action === 'delete') {
        hideAllForms();
        formDeleteBox.style.display = 'block';
        deleteForm.eventId.value = id;
        setFeedback(`${id}번 이벤트 삭제`);
    }
}

export function initEventPanel() {
    loadEvents();

    if (createForm) createForm.addEventListener('submit', createEvent);
    if (updateForm) updateForm.addEventListener('submit', updateEvent);
    if (deleteForm) deleteForm.addEventListener('submit', deleteEvent);

    eventTableBody.addEventListener('click', handleTableClick);

    btnCreateOpen.addEventListener('click', () => {
        hideAllForms();
        formCreateBox.style.display = 'block';
    });
}

// ---------------- 유틸 함수들 ----------------
function formatDateForInput(dateStr) {
    const d = new Date(dateStr);
    if (isNaN(d.getTime())) return '';
    // datetime-local 은 "YYYY-MM-DDTHH:MM"
    return d.toISOString().slice(0, 16);
}

function clearPreview(containerId) {
    const container = document.getElementById(containerId);
    if (container) {
        container.innerHTML = "";
    }
}

function renderExistingThumbnail(url) {
    const container = document.getElementById("update-event-thumbnail-existing");
    if (!container) return;
    container.innerHTML = url
        ? `<img src="${url}" alt="썸네일" style="max-width:150px; border:1px solid #ddd; border-radius:6px;">`
        : `<span>등록된 썸네일 없음</span>`;
}

function renderExistingImages(images) {
    const container = document.getElementById("update-event-images-existing");
    if (!container) return;
    container.innerHTML = "";
    if (images && images.length > 0) {
        images.forEach(src => {
            const img = document.createElement("img");
            img.src = src;
            img.alt = "이벤트 이미지";
            img.style.maxWidth = "120px";
            img.style.marginRight = "8px";
            img.style.border = "1px solid #ddd";
            img.style.borderRadius = "4px";
            container.appendChild(img);
        });
    } else {
        container.textContent = "등록된 추가 이미지 없음";
    }
}

function renderExistingPromotionInfo(promotions) {
    const container = document.getElementById("update-event-promotions-existing");
    if (!container) return;
    container.innerHTML = "";
    if (promotions && promotions.length > 0) {
        promotions.forEach(p => {
            const div = document.createElement("div");
            div.classList.add("promotion-item");
            div.textContent =
                `[${p.discountType}] ${p.discountValue} | ${p.startDate.slice(0,10)} ~ ${p.endDate.slice(0,10)}`;
            container.appendChild(div);
        });
    } else {
        container.textContent = "연결된 프로모션 없음";
    }
}