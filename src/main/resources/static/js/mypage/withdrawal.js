(function() {
  function allChecked(checks) {
    return checks.every((cb) => cb.checked);
  }

  function toggleButtonState(button, checks) {
    button.disabled = !allChecked(checks);
  }

  async function requestWithdrawal() {
    try {
      const res = await fetch('/api/users/me', {
        method: 'DELETE',
        credentials: 'include'
      });

      if (!res.ok) {
        let message = '회원 탈퇴 중 오류가 발생했습니다.';
        try {
          const err = await res.json();
          message = err?.message || message;
        } catch (_) {
          // ignore parse errors
        }
        alert(message);
        return;
      }

      let successMessage = '회원 탈퇴가 완료되었습니다.';
      try {
        const body = await res.json();
        successMessage = body?.message || successMessage;
      } catch (_) {
        // ignore parse errors
      }
      alert(successMessage);
      window.location.href = '/users/logout';
    } catch (e) {
      console.error('회원 탈퇴 요청 실패', e);
      alert('일시적인 오류로 탈퇴에 실패했습니다. 잠시 후 다시 시도해주세요.');
    }
  }

  function init() {
    const confirmButton = document.getElementById('btnWithdrawConfirm');
    const cancelButton = document.getElementById('btnCancel');
    const checkboxes = [
      document.getElementById('chkPoints'),
      document.getElementById('chkOrder'),
      document.getElementById('chkData'),
      document.getElementById('chkRejoin'),
      document.getElementById('chkSupport')
    ].filter(Boolean);

    if (!confirmButton || checkboxes.length === 0) {
      return;
    }

    checkboxes.forEach((cb) => {
      cb.addEventListener('change', () => toggleButtonState(confirmButton, checkboxes));
    });

    cancelButton?.addEventListener('click', () => {
      if (window.history.length > 1) {
        window.history.back();
      } else {
        window.location.href = '/mypage';
      }
    });

    confirmButton.addEventListener('click', () => {
      if (!allChecked(checkboxes)) {
        alert('모든 동의 항목에 체크해야 탈퇴를 진행할 수 있습니다.');
        return;
      }
      const sure = window.confirm('정말로 회원 탈퇴를 진행하시겠습니까?\n탈퇴 후에는 모든 혜택과 데이터가 삭제됩니다.');
      if (!sure) {
        return;
      }
      requestWithdrawal();
    });

    toggleButtonState(confirmButton, checkboxes);
  }

  document.addEventListener('DOMContentLoaded', init);
})();
