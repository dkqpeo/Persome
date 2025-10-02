const createForm = document.getElementById('form-event-create');
const updateForm = document.getElementById('form-event-update');
const deleteForm = document.getElementById('form-event-delete');
const feedback = document.getElementById('event-feedback');
const eventTableBody = document.querySelector('#event-table tbody');

// 폼 컨테이너들
const formCreateBox = document.getElementById('event-form-create');
const formUpdateBox = document.getElementById('event-form-update');
const formDeleteBox = document.getElementById('event-form-delete');
const promotionCreateCard = document.getElementById('event-promotion-create');
const promotionCreateForm = document.getElementById('form-event-promotion-create');
const couponCreateCard = document.getElementById('event-coupon-create');
const couponCreateForm = document.getElementById('form-event-coupon-create');
const promotionTargetTypeSelect = promotionCreateForm?.querySelector('select[name="targetType"]');
const promotionTargetIdsInput = promotionCreateForm?.querySelector('input[name="targetIds"]');

let activeEventDetail = null;

// 버튼
const btnCreateOpen = document.getElementById('btn-event-create-open');

function setFeedback(message, isError = false) {
    if (isError) {
        alert("❌ 오류가 발생했습니다. ");
    } else {
        alert("✅ " + message);
    }
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
    if (promotionCreateCard) promotionCreateCard.style.display = 'none';
    if (couponCreateCard) couponCreateCard.style.display = 'none';
}

function showLinkedEventForms() {
    if (promotionCreateCard) promotionCreateCard.style.display = 'block';
    if (couponCreateCard) couponCreateCard.style.display = 'block';
}

async function loadEvents() {
    try {
        const res = await fetch('/api/events/admin', {credentials: 'include'});
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
        <td>${ev.startDate?.slice(0, 10)} ~ ${ev.endDate?.slice(0, 10)}</td>
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
        promotionCreateForm?.reset();
        couponCreateForm?.reset();
        handleTargetTypeChange();

        const response = await fetch(`/api/events/admin/${eventId}/details`, {
            credentials: "include"
        });
        if (!response.ok) throw new Error("이벤트 정보를 불러올 수 없습니다.");
        const payload = await response.json();
        const data = payload.data;

        activeEventDetail = {
            id: Number(eventId),
            name: data.name || '',
            startDate: data.startDate || null,
            endDate: data.endDate || null,
            status: data.status || 'DRAFT'
        };
        applyLinkedEventDefaults();
        showLinkedEventForms();

        // 기본 값 채우기
        updateForm.querySelector('input[name="eventId"]').value = eventId;
        updateForm.querySelector('input[name="name"]').value = data.name || '';
        updateForm.querySelector('textarea[name="description"]').value = data.description || '';
        updateForm.querySelector('input[name="startDate"]').value = data.startDate ? formatDateForInput(data.startDate) : '';
        updateForm.querySelector('input[name="endDate"]').value = data.endDate ? formatDateForInput(data.endDate) : '';
        updateForm.querySelector('select[name="status"]').value = data.status || 'DRAFT';

        // 썸네일 표시
        renderExistingThumbnail(data.thumbnailUrl);

        // 기존 썸네일 dataset에 저장
        updateForm.dataset.existingThumbnail = data.thumbnailUrl || "";

        // 이미지 표시
        renderExistingImages(data.images);

        //기존 이미지 JSON으로 저장
        updateForm.dataset.existingImages = JSON.stringify(
            (data.images || []).map((img, idx) => {
                if (typeof img === "string") {
                    return { url: img, order: idx + 1 };
                } else if (img && img.url) {
                    return { url: img.url, order: img.order ?? (idx + 1) };
                }
                return null;
            }).filter(Boolean)
        );

        // 프로모션 표시
        renderExistingPromotionInfo(data.promotions);
        renderExistingCouponInfo(data.coupons);

        clearPreview("update-event-thumbnail-preview");
        clearPreview("update-event-images-preview");
    } catch (err) {
        console.error(err);
        setFeedback(err.message, true);
        activeEventDetail = null;
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

// ---------- 생성용 이미지 상태 ----------
let createImagesState = [];

// 이벤트 생성
async function createEvent(e) {
    e.preventDefault();
    try {
        let thumbnailUrl = null;
        let images = [];

        // 썸네일 업로드
        if (createForm.thumbnail && createForm.thumbnail.files.length > 0) {
            thumbnailUrl = await uploadFile(createForm.thumbnail.files[0]);
        }

        // 이미지 업로드 (상태 배열 기준)
        if (createImagesState.length > 0) {
            const uploadedUrls = await uploadFiles(createImagesState);
            images = uploadedUrls.map((url, idx) => ({
                url,
                order: idx + 1
            }));
        }

        const payload = {
            name: createForm.name.value.trim(),
            description: createForm.description.value.trim(),
            startDate: createForm.startDate.value,
            endDate: createForm.endDate.value,
            status: createForm.status.value,
            thumbnailUrl,
            images
        };
        const res = await fetch('/api/events/admin', {
            method: 'POST',
            headers: {'Content-Type': 'application/json'},
            credentials: 'include',
            body: JSON.stringify(payload)
        });
        await ensureSuccess(res, '이벤트 등록 실패');
        setFeedback('이벤트 등록 성공');
        createForm.reset();
        createImagesState = []; // 상태 초기화
        document.getElementById("create-event-thumbnail-preview").innerHTML = "";
        document.getElementById("create-event-images-preview").innerHTML = "";
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

        let thumbnailUrl = updateForm.dataset.existingThumbnail || null;
        let images = [];

        // 기존 이미지 유지
        if (updateForm.dataset.existingImages) {
            images = JSON.parse(updateForm.dataset.existingImages);
        }

        // 썸네일 업로드
        if (updateForm.thumbnail && updateForm.thumbnail.files.length > 0) {
            thumbnailUrl = await uploadFile(updateForm.thumbnail.files[0]);
        }

        // 새로 업로드한 이미지 추가
        if (updateForm.images && updateForm.images.files.length > 0) {
            const uploadedUrls = await uploadFiles(Array.from(updateForm.images.files));
            const startOrder = images.length + 1;
            uploadedUrls.forEach((url, i) => {
                images.push({
                    url,
                    order: startOrder + i
                });
            });
        }

        const payload = {
            name: updateForm.name.value.trim(),
            description: updateForm.description.value.trim(),
            startDate: updateForm.startDate.value,
            endDate: updateForm.endDate.value,
            status: updateForm.status.value,
            thumbnailUrl,
            images
        };

        const res = await fetch(`/api/events/admin/${id}`, {
            method: 'PUT',
            headers: {'Content-Type': 'application/json'},
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

async function createPromotionForEvent(e) {
    e.preventDefault();
    if (!promotionCreateForm) return;

    const formData = new FormData(promotionCreateForm);

    try {
        const eventIdRaw = formData.get('eventId');
        if (!eventIdRaw) {
            throw new Error('이벤트가 선택되지 않았습니다.');
        }
        const eventId = Number(eventIdRaw);
        const payload = {
            status: formData.get('status'),
            discountType: formData.get('discountType'),
            discountValue: parseNumberInput(formData.get('discountValue'), '할인 값', { positive: true }),
            startDate: toISOStringOrThrow(formData.get('startDate'), '시작일'),
            endDate: toISOStringOrThrow(formData.get('endDate'), '종료일'),
            eventId,
            targets: buildPromotionTargets(formData.get('targetType'), formData.get('targetIds'))
        };

        const res = await fetch('/admin/promotions', {
            method: 'POST',
            headers: { 'Content-Type': 'application/json' },
            credentials: 'include',
            body: JSON.stringify(payload)
        });
        await ensureSuccess(res, '프로모션 등록 실패');
        setFeedback('프로모션 등록 성공');
        promotionCreateForm.reset();
        applyLinkedEventDefaults();
        handleTargetTypeChange();
        loadEventDetail(eventId);
    } catch (err) {
        console.error(err);
        setFeedback(err.message, true);
    }
}

async function createCouponForEvent(e) {
    e.preventDefault();
    if (!couponCreateForm) return;

    const formData = new FormData(couponCreateForm);

    try {
        const eventIdRaw = formData.get('eventId');
        if (!eventIdRaw) {
            throw new Error('이벤트가 선택되지 않았습니다.');
        }
        const eventId = Number(eventIdRaw);
        const name = (formData.get('name') || '').trim();
        const code = (formData.get('code') || '').trim();
        const status = formData.get('status');
        if (!name) throw new Error('쿠폰 이름을 입력하세요.');
        if (!code) throw new Error('쿠폰 코드를 입력하세요.');
        if (!status) throw new Error('쿠폰 상태를 선택하세요.');

        const payload = {
            name,
            code,
            discountType: formData.get('discountType'),
            discountValue: parseNumberInput(formData.get('discountValue'), '할인 값', { positive: true }),
            minOrderPrice: parseNumberInput(formData.get('minOrderPrice'), '최소 주문 금액', { min: 0 }),
            maxDiscountPrice: parseNumberInput(formData.get('maxDiscountPrice'), '최대 할인 금액', { min: 0, positive: false }),
            limitIssueCount: parseIntegerInput(formData.get('limitIssueCount'), '발급 한도', { min: 1 }),
            startDate: toISOStringOrThrow(formData.get('startDate'), '시작일'),
            endDate: toISOStringOrThrow(formData.get('endDate'), '종료일'),
            status,
            eventId
        };

        const res = await fetch('/admin/coupons', {
            method: 'POST',
            headers: { 'Content-Type': 'application/json' },
            credentials: 'include',
            body: JSON.stringify(payload)
        });
        await ensureSuccess(res, '쿠폰 등록 실패');
        setFeedback('쿠폰 등록 성공');
        couponCreateForm.reset();
        applyLinkedEventDefaults();
        loadEventDetail(eventId);
    } catch (err) {
        console.error(err);
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
        showLinkedEventForms();
        updateForm.eventId.value = id;
        loadEventDetail(id);
    }

    if (btn.dataset.action === 'delete') {
        hideAllForms();
        formDeleteBox.style.display = 'block';
        deleteForm.eventId.value = id;
    }
}

export function initEventPanel() {
    loadEvents();

    if (createForm) createForm.addEventListener('submit', createEvent);
    if (updateForm) updateForm.addEventListener('submit', updateEvent);
    if (deleteForm) deleteForm.addEventListener('submit', deleteEvent);
    if (promotionCreateForm) promotionCreateForm.addEventListener('submit', createPromotionForEvent);
    if (couponCreateForm) couponCreateForm.addEventListener('submit', createCouponForEvent);

    eventTableBody.addEventListener('click', handleTableClick);

    btnCreateOpen.addEventListener('click', () => {
        hideAllForms();
        formCreateBox.style.display = 'block';
    });
    createForm.thumbnail.addEventListener("change", (e) => {
        renderCreateThumbnailPreview(e.target.files[0]);
    });

    createForm.images.addEventListener("change", (e) => {
        createImagesState.push(...Array.from(e.target.files));
        renderCreateImagesPreview();
        e.target.value = ""; // input 초기화
    });

    //썸네일 삭제
    document.getElementById("btn-delete-thumbnail")?.addEventListener("click", () => {
        updateForm.dataset.existingThumbnail = "";
        renderExistingThumbnail("");
    });

    //취소 버튼 동작
    document.getElementById("btn-cancel-update")?.addEventListener("click", () => {
        updateForm.reset();
        hideAllForms();
    });
    document.getElementById("btn-cancel-delete")?.addEventListener("click", () => {
        deleteForm.reset();
        hideAllForms();
    });
    document.getElementById("btn-cancel-create")?.addEventListener("click", () => {
        createForm.reset();
        createImagesState = [];
        document.getElementById("create-event-thumbnail-preview").innerHTML = "";
        document.getElementById("create-event-images-preview").innerHTML = "";
        hideAllForms();
    });

    if (promotionTargetTypeSelect) {
        promotionTargetTypeSelect.addEventListener('change', handleTargetTypeChange);
        handleTargetTypeChange();
    }
}

async function uploadFile(file) {
    const formData = new FormData();
    formData.append("file", file);
    const res = await fetch("/api/files/upload", {
        method: "POST",
        body: formData,
        credentials: "include"
    });
    await ensureSuccess(res, "파일 업로드 실패");
    const data = await res.json();
    return data.url; // 서버에서 반환한 url
}

async function uploadFiles(files) {
    const formData = new FormData();
    files.forEach(f => formData.append("files", f));
    const res = await fetch("/api/files/upload/multiple", {
        method: "POST",
        body: formData,
        credentials: "include"
    });
    await ensureSuccess(res, "파일 업로드 실패");
    const data = await res.json();
    return data.map(d => d.url);
}


// ---------------- 유틸 함수들 ----------------
function formatDateForInput(dateStr) {
    const d = new Date(dateStr);
    if (isNaN(d.getTime())) return '';
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

    if (url) {
        container.innerHTML = `
            <img src="${url}" alt="썸네일" style="max-width:150px; border:1px solid #ddd; border-radius:6px;">
        `;
        updateForm.dataset.existingThumbnail = url;
    } else {
        container.innerHTML = `<span>등록된 썸네일 없음</span>`;
        updateForm.dataset.existingThumbnail = "";
    }
}

function renderExistingImages(images) {
    const container = document.getElementById("update-event-images-existing");
    if (!container) return;
    container.innerHTML = "";

    if (images && images.length > 0) {
        images.forEach((img, idx) => {
            const url = typeof img === "string" ? img : img.url;
            const wrapper = document.createElement("div");
            wrapper.style.display = "inline-block";
            wrapper.style.position = "relative";
            wrapper.style.marginRight = "8px";

            const imageEl = document.createElement("img");
            imageEl.src = url;
            imageEl.alt = "이벤트 이미지";
            imageEl.style.maxWidth = "120px";
            imageEl.style.border = "1px solid #ddd";
            imageEl.style.borderRadius = "4px";

            const delBtn = document.createElement("button");
            delBtn.textContent = "X";
            delBtn.style.position = "absolute";
            delBtn.style.top = "2px";
            delBtn.style.right = "2px";
            delBtn.style.background = "rgba(0,0,0,0.6)";
            delBtn.style.color = "#fff";
            delBtn.style.border = "none";
            delBtn.style.borderRadius = "50%";
            delBtn.style.cursor = "pointer";
            delBtn.onclick = () => {
                let current = JSON.parse(updateForm.dataset.existingImages || "[]");
                current = current.filter(item => item.url !== url);
                updateForm.dataset.existingImages = JSON.stringify(current);
                renderExistingImages(current);
            };

            wrapper.appendChild(imageEl);
            wrapper.appendChild(delBtn);
            container.appendChild(wrapper);
        });

        updateForm.dataset.existingImages = JSON.stringify(
            images.map((img, idx) => ({
                url: typeof img === "string" ? img : img.url,
                order: idx + 1
            }))
        );
    } else {
        container.textContent = "등록된 추가 이미지 없음";
        updateForm.dataset.existingImages = "[]";
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
                `[${p.discountType}] ${p.discountValue} | ${p.startDate.slice(0, 10)} ~ ${p.endDate.slice(0, 10)}`;
            container.appendChild(div);
        });
    } else {
        container.textContent = "연결된 프로모션 없음";
    }
}

function renderExistingCouponInfo(coupons) {
    const container = document.getElementById("update-event-coupons-existing");
    if (!container) return;
    container.innerHTML = "";

    if (coupons && coupons.length > 0) {
        coupons.forEach(coupon => {
            const div = document.createElement("div");
            div.classList.add("coupon-item");
            const period = coupon.startDate && coupon.endDate
                ? `${coupon.startDate.slice(0, 10)} ~ ${coupon.endDate.slice(0, 10)}`
                : "기간 정보 없음";
            div.textContent = `${coupon.name} (${coupon.code}) • ${coupon.discountType} ${coupon.discountValue} | ${period} | 상태 ${coupon.status}`;
            container.appendChild(div);
        });
    } else {
        container.textContent = "연결된 쿠폰 없음";
    }
}

// 파일 미리보기 (생성용)
function renderCreateThumbnailPreview(file) {
    const container = document.getElementById("create-event-thumbnail-preview");
    container.innerHTML = "";

    if (!file) return;

    const wrapper = document.createElement("div");
    wrapper.style.position = "relative";
    wrapper.style.display = "inline-block";

    const img = document.createElement("img");
    img.src = URL.createObjectURL(file);
    img.style.maxWidth = "150px";
    img.style.border = "1px solid #ddd";
    img.style.borderRadius = "6px";

    const delBtn = document.createElement("button");
    delBtn.textContent = "X";
    delBtn.style.position = "absolute";
    delBtn.style.top = "2px";
    delBtn.style.right = "2px";
    delBtn.style.background = "rgba(0,0,0,0.6)";
    delBtn.style.color = "#fff";
    delBtn.style.border = "none";
    delBtn.style.borderRadius = "50%";
    delBtn.style.cursor = "pointer";

    delBtn.onclick = () => {
        container.innerHTML = "";
        createForm.thumbnail.value = "";
    };

    wrapper.appendChild(img);
    wrapper.appendChild(delBtn);
    container.appendChild(wrapper);
}

// 여러 장 이미지 미리보기 (생성용)
function renderCreateImagesPreview() {
    const container = document.getElementById("create-event-images-preview");
    container.innerHTML = "";

    createImagesState.forEach((file, idx) => {
        const wrapper = document.createElement("div");
        wrapper.style.position = "relative";
        wrapper.style.display = "inline-block";
        wrapper.style.marginRight = "8px";

        const img = document.createElement("img");
        img.src = URL.createObjectURL(file);
        img.style.maxWidth = "120px";
        img.style.border = "1px solid #ddd";
        img.style.borderRadius = "4px";

        const delBtn = document.createElement("button");
        delBtn.textContent = "X";
        delBtn.style.position = "absolute";
        delBtn.style.top = "2px";
        delBtn.style.right = "2px";
        delBtn.style.background = "rgba(0,0,0,0.6)";
        delBtn.style.color = "#fff";
        delBtn.style.border = "none";
        delBtn.style.borderRadius = "50%";
        delBtn.style.cursor = "pointer";

        delBtn.onclick = () => {
            createImagesState.splice(idx, 1);
            renderCreateImagesPreview();
        };

        wrapper.appendChild(img);
        wrapper.appendChild(delBtn);
        container.appendChild(wrapper);
    });
}

function applyLinkedEventDefaults() {
    if (!activeEventDetail) return;
    hydratePromotionFormFromEvent(activeEventDetail);
    hydrateCouponFormFromEvent(activeEventDetail);
}

function hydratePromotionFormFromEvent(detail) {
    if (!promotionCreateForm) return;
    const eventIdInput = promotionCreateForm.querySelector('input[name="eventId"]');
    if (eventIdInput) {
        eventIdInput.value = detail.id ?? '';
    }
    const summaryInput = promotionCreateForm.querySelector('[data-field="selected-event"]');
    if (summaryInput) {
        summaryInput.value = detail.id ? `#${detail.id} ${detail.name || ''}`.trim() : '';
    }
    const statusSelect = promotionCreateForm.querySelector('select[name="status"]');
    if (statusSelect) {
        const available = Array.from(statusSelect.options).map(opt => opt.value);
        const preferred = available.includes(detail.status) ? detail.status : (available[0] || 'DRAFT');
        statusSelect.value = preferred;
    }
    setDateInputValue(promotionCreateForm.querySelector('input[name="startDate"]'), detail.startDate);
    setDateInputValue(promotionCreateForm.querySelector('input[name="endDate"]'), detail.endDate);
    if (promotionTargetTypeSelect) {
        promotionTargetTypeSelect.value = 'ALL';
    }
    handleTargetTypeChange();
}

function hydrateCouponFormFromEvent(detail) {
    if (!couponCreateForm) return;
    const eventIdInput = couponCreateForm.querySelector('input[name="eventId"]');
    if (eventIdInput) {
        eventIdInput.value = detail.id ?? '';
    }
    const summaryInput = couponCreateForm.querySelector('[data-field="selected-event"]');
    if (summaryInput) {
        summaryInput.value = detail.id ? `#${detail.id} ${detail.name || ''}`.trim() : '';
    }
    const statusSelect = couponCreateForm.querySelector('select[name="status"]');
    if (statusSelect) {
        const available = Array.from(statusSelect.options).map(opt => opt.value);
        const defaultStatus = detail.status === 'ENDED'
            ? (available.includes('INACTIVE') ? 'INACTIVE' : available[0])
            : (available.includes('ACTIVE') ? 'ACTIVE' : available[0]);
        if (defaultStatus) {
            statusSelect.value = defaultStatus;
        }
    }
    setDateInputValue(couponCreateForm.querySelector('input[name="startDate"]'), detail.startDate);
    setDateInputValue(couponCreateForm.querySelector('input[name="endDate"]'), detail.endDate);
}

function setDateInputValue(input, isoString) {
    if (!input) return;
    input.value = isoString ? formatDateForInput(isoString) : '';
}

function toISOStringOrThrow(value, label) {
    if (!value) {
        throw new Error(`${label}을(를) 입력하세요.`);
    }
    const date = new Date(value);
    if (Number.isNaN(date.getTime())) {
        throw new Error(`${label} 형식이 올바르지 않습니다.`);
    }
    return date.toISOString();
}

function parseNumberInput(raw, label, options = {}) {
    const { min = null, positive = false } = options;
    const text = typeof raw === 'string' ? raw.trim() : '';
    if (!text) {
        throw new Error(`${label}을(를) 입력하세요.`);
    }
    const value = Number(text);
    if (!Number.isFinite(value)) {
        throw new Error(`${label}은(는) 숫자여야 합니다.`);
    }
    if (positive && value <= 0) {
        throw new Error(`${label}은(는) 0보다 커야 합니다.`);
    }
    if (min !== null && value < min) {
        throw new Error(`${label}은(는) ${min} 이상이어야 합니다.`);
    }
    return value;
}

function parseIntegerInput(raw, label, options = {}) {
    const { min = null } = options;
    const text = typeof raw === 'string' ? raw.trim() : '';
    if (!text) {
        throw new Error(`${label}을(를) 입력하세요.`);
    }
    const value = Number.parseInt(text, 10);
    if (Number.isNaN(value)) {
        throw new Error(`${label}은(는) 정수여야 합니다.`);
    }
    if (min !== null && value < min) {
        throw new Error(`${label}은(는) ${min} 이상이어야 합니다.`);
    }
    return value;
}

function buildPromotionTargets(type, idsRaw) {
    if (!type) {
        return null;
    }
    const normalizedType = type.trim().toUpperCase();
    if (normalizedType === 'ALL') {
        return [{ targetType: normalizedType, targetId: 0 }];
    }

    const idsText = typeof idsRaw === 'string' ? idsRaw : '';
    const idList = idsText.split(',')
        .map(part => part.trim())
        .filter(Boolean);

    if (idList.length === 0) {
        throw new Error('타겟 ID를 입력하세요.');
    }

    return idList.map(part => {
        const id = Number(part);
        if (!Number.isFinite(id)) {
            throw new Error('타겟 ID는 숫자여야 합니다.');
        }
        return { targetType: normalizedType, targetId: id };
    });
}

function handleTargetTypeChange() {
    if (!promotionTargetTypeSelect || !promotionTargetIdsInput) return;
    const type = promotionTargetTypeSelect.value;
    if (!type || type === 'ALL') {
        promotionTargetIdsInput.value = '';
        promotionTargetIdsInput.disabled = true;
        promotionTargetIdsInput.placeholder = '전체 적용';
    } else {
        promotionTargetIdsInput.disabled = false;
        promotionTargetIdsInput.placeholder = 'ID를 콤마로 구분해 입력하세요';
    }
}
