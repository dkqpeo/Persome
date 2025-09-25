// myinfo.js
(async function () {
  const apiGet = async (url) => {
    const r = await fetch(url, { credentials: "include" });
    if (!r.ok) throw new Error(await r.text());
    return r.json();
  };

  const apiPatch = async (url, body) => {
    const r = await fetch(url, {
      method: "PATCH",
      headers: { "Content-Type": "application/json" },
      credentials: "include",
      body: JSON.stringify(body),
    });
    if (!r.ok) throw new Error(await r.text());
    return r.json();
  };

  let originalData = null;

  // 데이터 불러오기
  async function loadUserInfo() {
    try {
      const res = await apiGet("/api/users/me");
      const data = res.data || res; // 응답 형식이 data로 감쌌는지 아닌지 모두 대응

      if (!data) throw new Error("회원 정보를 불러올 수 없습니다.");
      originalData = data;

      // 보기 모드 값
      document.getElementById("v_name").textContent = data.name || "-";
      document.getElementById("v_loginId").textContent = data.loginId || "-";
      document.getElementById("v_email").textContent = data.email || "-";
      document.getElementById("v_birth").textContent = data.birthDate || "-";

      // 수정 모드 값
      document.getElementById("i_name").value = data.name || "";
      document.getElementById("i_email").value = data.email || "";
      document.getElementById("i_birth").value = data.birthDate || "";
    } catch (e) {
      alert(e.message);
      location.href = "/users/login";
    }
  }

  // 수정 모드 전환
  function toggleEditMode(editing) {
    const viewEls = document.querySelectorAll(".view-mode");
    const inputEls = document.querySelectorAll(".edit-mode");

    viewEls.forEach((el) => (el.style.display = editing ? "none" : "inline"));
    inputEls.forEach((el) => (el.style.display = editing ? "inline" : "none"));

    const actions = document.getElementById("infoActions");
    if (editing) {
      actions.innerHTML = `
      <button id="btnSave" class="btn">저장</button>
      <button id="btnCancel" class="btn btn-cancel">취소</button>
      <button class="btn" onclick="location.href='/mypage/password'">비밀번호 변경</button>
    `;
      document.getElementById("btnSave").addEventListener("click", saveUserInfo);
      document.getElementById("btnCancel").addEventListener("click", cancelEdit);
    } else {
      actions.innerHTML = `
      <button id="btnEdit" class="btn">수정</button>
      <button class="btn" onclick="location.href='/mypage/password'">비밀번호 변경</button>
    `;
      document.getElementById("btnEdit").addEventListener("click", () => toggleEditMode(true));
    }
  }


  // 저장
  async function saveUserInfo() {
    const payload = {
      name: document.getElementById("i_name").value,
      email: document.getElementById("i_email").value,
      birthDate: document.getElementById("i_birth").value,
    };

    try {
      const updated = await apiPatch("/api/users/me", payload);
      alert("회원 정보가 수정되었습니다.");
      originalData = updated;
      toggleEditMode(false);
      loadUserInfo();
    } catch (e) {
      alert("수정 실패: " + e.message);
    }
  }

  // 취소
  function cancelEdit() {
    if (!originalData) return;
    document.getElementById("i_name").value = originalData.name || "";
    document.getElementById("i_email").value = originalData.email || "";
    document.getElementById("i_birth").value = originalData.birthDate || "";
    toggleEditMode(false);
  }

  document.addEventListener("DOMContentLoaded", () => {
    loadUserInfo();
    toggleEditMode(false);
  });
})();