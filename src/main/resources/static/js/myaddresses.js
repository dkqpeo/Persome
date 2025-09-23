async function loadAddresses() {
  const listEl = document.getElementById("addrList");
  const countEl = document.getElementById("addrCount");

  try {
    const res = await fetch("/api/users/me/addresses", { credentials: "include" });
    if (!res.ok) throw new Error("배송지 불러오기 실패");
    const result = await res.json();
    const addresses = Array.isArray(result) ? result : result.data;

    countEl.textContent = addresses.length;
    listEl.innerHTML = "";

    if (!addresses || addresses.length === 0) {
      listEl.innerHTML = `<div id="addrEmpty">등록된 배송지가 없습니다.</div>`;
      return;
    }

    addresses.forEach(addr => {
      const item = document.createElement("div");
      item.className = "addr-item";

      item.innerHTML = `
        <div class="top">
          <div>
            <b>${addr.label || "배송지"}</b>
            ${addr.isdefaultShipping ? `<span class="addr-badge">기본</span>` : ""}
          </div>
          <div class="addr-actions">
            <button type="button" class="btn btn-edit">수정</button>
            <button type="button" class="btn btn-delete">삭제</button>
          </div>
        </div>
        <div class="addr-lines">
          <div>도로명: ${addr.roadAddr || ""}</div>
          <div>지번: ${addr.jibunAddr || ""}</div>
          <div class="addr-zip">${addr.zip || ""}</div>
        </div>
        <form class="addr-edit-form">
          <input type="hidden" name="id" value="${addr.id}" />
          <input type="text" name="label" value="${addr.label || ""}" placeholder="라벨" />
          <input type="text" name="zip" value="${addr.zip || ""}" placeholder="우편번호" />
          <input type="text" name="roadAddr" value="${addr.roadAddr || ""}" placeholder="도로명 주소" />
          <input type="text" name="jibunAddr" value="${addr.jibunAddr || ""}" placeholder="지번 주소" />
          <input type="text" name="addrDetail" value="${addr.addrDetail || ""}" placeholder="상세 주소" />
          <label><input type="checkbox" name="default" ${addr.isdefaultShipping ? "checked" : ""}/> 기본배송지</label>
          <div class="form-actions">
            <button type="button" class="btn btn-save">저장</button>
            <button type="button" class="btn btn-cancel">취소</button>
            <button type="button" class="btn btn-reset">초기화</button>
          </div>
        </form>
      `;

      listEl.appendChild(item);

      const editBtn = item.querySelector(".btn-edit");
      const deleteBtn = item.querySelector(".btn-delete");
      const form = item.querySelector(".addr-edit-form");
      const cancelBtn = form.querySelector(".btn-cancel");
      const saveBtn = form.querySelector(".btn-save");
      const resetBtn = form.querySelector(".btn-reset");

      //원래 값 저장
      const originalData = { ...addr };

      //수정 버튼
      editBtn.addEventListener("click", () => {
        if (form.style.display === "none") {
          form.style.display = "block";
          //원본 데이터 저장
          form.dataset.original = JSON.stringify({
            label: form.label.value,
            zip: form.zip.value,
            roadAddr: form.roadAddr.value,
            jibunAddr: form.jibunAddr.value,
            addrDetail: form.addrDetail.value,
            isdefaultShipping: form.default.checked
          });
        } else {
          form.style.display = "none";
        }
      });

      //취소 버튼
      cancelBtn.addEventListener("click", () => {
        if (form.dataset.original) {
          form.label.value = originalData.label || "";
          form.zip.value = originalData.zip || "";
          form.roadAddr.value = originalData.roadAddr || "";
          form.jibunAddr.value = originalData.jibunAddr || "";
          form.addrDetail.value = originalData.addrDetail || "";
          form.default.checked = originalData.isdefaultShipping || false;
        }
        form.style.display = "none";
      });

      //초기화 버튼
      resetBtn.addEventListener("click", () => {
        form.label.value = "";
        form.zip.value = "";
        form.roadAddr.value = "";
        form.jibunAddr.value = "";
        form.addrDetail.value = "";
        form.default.checked = false;
      });

      //저장 버튼
      saveBtn.addEventListener("click", async () => {
        const payload = {
          label: form.label.value,
          zip: form.zip.value,
          roadAddr: form.roadAddr.value,
          jibunAddr: form.jibunAddr.value,
          addrDetail: form.addrDetail.value,
          isdefaultShipping: form.default.checked
        };

        try {
          const res = await fetch(`/api/users/me/addresses/${addr.id}`, {
            method: "PATCH",
            headers: { "Content-Type": "application/json" },
            credentials: "include",
            body: JSON.stringify(payload)
          });
          if (!res.ok) throw new Error("수정 실패");
          await loadAddresses();
        } catch (e) {
          console.error(e);
          alert("수정 중 오류가 발생했습니다.");
        }
      });

      //삭제 버튼
      deleteBtn.addEventListener("click", async () => {
        if (!confirm("정말 삭제하시겠습니까?")) return;
        try {
          const res = await fetch(`/api/users/me/addresses/${addr.id}`, {
            method: "DELETE",
            credentials: "include"
          });
          if (!res.ok) throw new Error("삭제 실패");
          await loadAddresses();
        } catch (e) {
          console.error(e);
          alert("삭제 중 오류가 발생했습니다.");
        }
      });
    });
  } catch (e) {
    console.error(e);
    listEl.innerHTML = `<div class="muted">배송지를 불러오는 중 오류가 발생했습니다.</div>`;
  }
}

document.addEventListener("DOMContentLoaded", () => {
  loadAddresses();

  const btnNew = document.getElementById("btnAddrNew");
  const newForm = document.getElementById("newAddrForm");

  if (btnNew && newForm) {
    btnNew.addEventListener("click", () => {
      newForm.style.display = newForm.style.display === "none" ? "block" : "none";
    });

    newForm.querySelector(".btn-cancel").addEventListener("click", () => {
      newForm.style.display = "none";
    });

    newForm.querySelector(".btn-reset").addEventListener("click", () => {
      newForm.reset();
    });

    newForm.querySelector(".btn-save").addEventListener("click", async () => {
      const payload = {
        label: newForm.label.value,
        zip: newForm.zip.value,
        roadAddr: newForm.roadAddr.value,
        jibunAddr: newForm.jibunAddr.value,
        addrDetail: newForm.addrDetail.value,
        isdefaultShipping: newForm.default.checked
      };

      try {
        const res = await fetch("/api/users/me/addresses", {
          method: "POST",
          headers: { "Content-Type": "application/json" },
          credentials: "include",
          body: JSON.stringify(payload)
        });
        if (!res.ok) throw new Error("추가 실패");
        await loadAddresses();
        newForm.reset();
        newForm.style.display = "none";
      } catch (e) {
        console.error(e);
        alert("저장 중 오류가 발생했습니다.");
      }
    });
  }
});

