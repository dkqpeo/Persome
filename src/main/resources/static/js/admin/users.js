const statusFilter = document.getElementById('user-status-filter');
const refreshBtn = document.getElementById('btn-user-refresh');
const tableBody = document.querySelector('#user-table tbody');
const gradeForm = document.getElementById('form-user-grade');
const roleForm = document.getElementById('form-user-role');
const feedback = document.getElementById('user-feedback');

function setFeedback(message, isError = false) {
    feedback.textContent = message;
    feedback.classList.toggle('error', isError);
}

async function fetchUsers() {
    const status = statusFilter.value;
    let url = '/api/admin/users';
    if (status) {
        url += `?status=${encodeURIComponent(status)}`;
    }
    try {
        setFeedback('회원 정보를 불러오는 중입니다...', false);
        const res = await fetch(url, { credentials: 'include' });
        if (!res.ok) throw new Error(`회원 조회 실패 (${res.status})`);
        const users = await res.json();
        renderUsers(users);
        setFeedback(`총 ${users.length}명의 회원을 불러왔습니다.`);
    } catch (err) {
        console.error(err);
        setFeedback(err.message, true);
    }
}

function renderUsers(users = []) {
    if (!Array.isArray(users) || users.length === 0) {
        tableBody.innerHTML = '<tr><td colspan="8">표시할 데이터가 없습니다.</td></tr>';
        return;
    }
    const rows = users.map(user => {
        const createdAt = user.createdAt ? new Date(user.createdAt).toLocaleString('ko-KR') : '-';
        const lastLogin = user.lastLoginAt ? new Date(user.lastLoginAt).toLocaleString('ko-KR') : '-';
        return `
            <tr data-login-id="${user.loginId ?? ''}">
                <td>${user.id}</td>
                <td>${user.loginId ?? ''}</td>
                <td>${user.name ?? ''}</td>
                <td>${user.membershipLevel ?? ''}</td>
                <td>${user.status ?? ''}</td>
                <td>${user.admin ? 'Y' : 'N'}</td>
                <td>${createdAt}</td>
                <td>${lastLogin}</td>
            </tr>
        `;
    }).join('');
    tableBody.innerHTML = rows;
}

async function submitGrade(event) {
    event.preventDefault();
    const formData = new FormData(gradeForm);
    const loginId = (formData.get('loginId') ?? '').trim();
    if (!loginId) {
        setFeedback('로그인 ID를 입력하세요.', true);
        return;
    }
    const membershipLevel = formData.get('membershipLevel');
    try {
        const res = await fetch(`/api/admin/users/${encodeURIComponent(loginId)}/grade`, {
            method: 'PATCH',
            headers: { 'Content-Type': 'application/json' },
            credentials: 'include',
            body: JSON.stringify({ membershipLevel })
        });
        if (!res.ok) throw new Error('회원 등급 변경에 실패했습니다.');
        setFeedback('회원 등급이 업데이트되었습니다.');
        await fetchUsers();
        gradeForm.reset();
    } catch (err) {
        console.error(err);
        setFeedback(err.message, true);
    }
}

async function submitRole(event) {
    event.preventDefault();
    const formData = new FormData(roleForm);
    const loginId = (formData.get('loginId') ?? '').trim();
    if (!loginId) {
        setFeedback('로그인 ID를 입력하세요.', true);
        return;
    }
    const admin = formData.get('admin') === 'on';
    try {
        const res = await fetch(`/api/admin/users/${encodeURIComponent(loginId)}/role`, {
            method: 'PATCH',
            headers: { 'Content-Type': 'application/json' },
            credentials: 'include',
            body: JSON.stringify({ admin })
        });
        if (!res.ok) throw new Error('관리자 권한 변경에 실패했습니다.');
        setFeedback('관리자 권한이 업데이트되었습니다.');
        await fetchUsers();
        roleForm.reset();
    } catch (err) {
        console.error(err);
        setFeedback(err.message, true);
    }
}

export function initUserPanel() {
    refreshBtn.addEventListener('click', fetchUsers);
    statusFilter.addEventListener('change', fetchUsers);
    gradeForm.addEventListener('submit', submitGrade);
    roleForm.addEventListener('submit', submitRole);
    tableBody.addEventListener('click', event => {
        const row = event.target.closest('tr[data-login-id]');
        if (!row) return;
        const loginId = row.dataset.loginId;
        if (loginId) {
            gradeForm.loginId.value = loginId;
            roleForm.loginId.value = loginId;
        }
    });
    fetchUsers();
}
