// My Info page: load user profile + address CRUD
(function(){
  const json = async (res) => { const t = await res.text(); try { return t ? JSON.parse(t) : null; } catch { return t; } };
  const apiGet = async (url) => { const r = await fetch(url, { credentials:'same-origin' }); if(!r.ok) throw new Error(await r.text()); return json(r); };

  function $id(id){ return document.getElementById(id); }
  function alertMsg(m){ const el=$id('addrAlert'); if(el) el.textContent=m||''; }
  function uid(){ return (window.PersomeUser && window.PersomeUser.id) ? window.PersomeUser.id : null; }

  async function loadProfile(){
    try {
      const me = await apiGet('/users/me');
      $id('u_name').value = me.name || '';
      $id('u_loginId').value = me.loginId || '';
      $id('u_email').value = me.email || '';
      $id('u_birth').value = me.birthDate || '';
    } catch {
      // not logged in or error
    }
  }

  async function loadAddress(){
    const id = uid(); if(!id) return;
    try {
      const r = await fetch(`/users/${id}/addresses`, { credentials:'same-origin' });
      if (!r.ok) throw new Error(await r.text());
      const a = await r.json();
      $id('addrId').value = a.id || '';
      $id('a_label').value = a.label || '';
      $id('a_zip').value = a.zip || '';
      $id('a_road').value = a.roadAddr || '';
      $id('a_jibun').value = a.jibunAddr || '';
      $id('a_detail').value = a.addrDetail || '';
      $id('a_default').checked = !!a.isdefaultShipping;
      alertMsg('');

      // render single item in list
      if (a && a.id) {
        $id('addrEmpty').style.display = 'none';
        const item = $id('addrItem');
        item.style.display = 'block';
        $id('v_label').textContent = a.label || '-';
        $id('v_default').style.display = a.isdefaultShipping ? 'inline-block' : 'none';
        $id('v_zip').textContent = a.zip ? `(${a.zip})` : '';
        $id('v_road').textContent = a.roadAddr || '';
        $id('v_jibun').textContent = a.jibunAddr || '';
        $id('v_detail').textContent = a.addrDetail || '';
        $id('addrCount').textContent = '1';
      } else {
        $id('addrEmpty').style.display = 'block';
        $id('addrItem').style.display = 'none';
        $id('addrCount').textContent = '0';
      }
    } catch {
      $id('addrId').value = '';
      $id('a_label').value = '';
      $id('a_zip').value = '';
      $id('a_road').value = '';
      $id('a_jibun').value = '';
      $id('a_detail').value = '';
      $id('a_default').checked = false;
      alertMsg('배송지를 등록해주세요.');
      $id('addrEmpty').style.display = 'block';
      $id('addrItem').style.display = 'none';
      $id('addrCount').textContent = '0';
    }
  }

  function collect(){
    return {
      label: $id('a_label').value || null,
      zip: $id('a_zip').value || null,
      roadAddr: $id('a_road').value || null,
      jibunAddr: $id('a_jibun').value || null,
      addrDetail: $id('a_detail').value || null,
      isdefaultShipping: $id('a_default').checked
    };
  }

  function resetForm(){
    $id('addrId').value='';
    $id('a_label').value='';
    $id('a_zip').value='';
    $id('a_road').value='';
    $id('a_jibun').value='';
    $id('a_detail').value='';
    $id('a_default').checked=false;
    alertMsg('');
  }

  function bindEvents(){
    const id = uid(); if(!id) return;
    function showForm(show){ $id('addrForm').style.display = show ? 'block' : 'none'; }
    const newBtn = $id('btnAddrNew'); if (newBtn) newBtn.addEventListener('click', (e)=>{ e.preventDefault(); resetForm(); showForm(true); });
    const editBtn = $id('v_edit'); if (editBtn) editBtn.addEventListener('click', (e)=>{ e.preventDefault(); showForm(true); });
    $id('btnAddrSave').addEventListener('click', async () => {
      const addressId = $id('addrId').value;
      const body = collect();
      try {
        if (addressId) {
          const r = await fetch(`/users/${id}/addresses/${addressId}`, { method:'PATCH', headers:{'Content-Type':'application/json'}, credentials:'same-origin', body: JSON.stringify(body) });
          if (!r.ok) throw new Error(await r.text());
          alertMsg('수정되었습니다.');
          loadAddress();
          showForm(false);
        } else {
          const r = await fetch(`/users/${id}/addresses`, { method:'POST', headers:{'Content-Type':'application/json'}, credentials:'same-origin', body: JSON.stringify(body) });
          if (!r.ok) throw new Error(await r.text());
          const data = await r.json();
          $id('addrId').value = (data && data.id) || '';
          alertMsg('저장되었습니다.');
          loadAddress();
          showForm(false);
        }
      } catch(e) {
        alertMsg(e.message || '저장 실패');
      }
    });

    $id('btnAddrDelete').addEventListener('click', async () => {
      const addressId = $id('addrId').value;
      if (!addressId) { alertMsg('삭제할 배송지가 없습니다.'); return; }
      if (!confirm('정말 삭제하시겠습니까?')) return;
      try {
        const r = await fetch(`/users/${id}/addresses/${addressId}`, { method:'DELETE', credentials:'same-origin' });
        if (!r.ok) throw new Error(await r.text());
        resetForm();
        alertMsg('삭제되었습니다.');
        loadAddress();
        showForm(false);
      } catch(e) {
        alertMsg(e.message || '삭제 실패');
      }
    });

    $id('btnAddrReset').addEventListener('click', resetForm);
  }

  document.addEventListener('DOMContentLoaded', () => {
    loadProfile();
    loadAddress();
    bindEvents();
  });
})();
