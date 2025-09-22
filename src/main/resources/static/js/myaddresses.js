// Dedicated Address management page (list + form)
(function(){
  const json = async (res) => { const t = await res.text(); try { return t ? JSON.parse(t) : null; } catch { return t; } };
  function $id(id){ return document.getElementById(id); }
  function alertMsg(m){ const el=$id('addrAlert'); if(el) el.textContent=m||''; }
  function uidSync(){ return (window.PersomeUser && window.PersomeUser.id) ? window.PersomeUser.id : null; }
  async function resolveUserId(){
    const id = uidSync();
    if (id) return id;
    try {
      const r = await fetch('/users/me/points', { credentials:'same-origin' });
      if (r.ok) { const d = await r.json(); if (d && d.userId) return d.userId; }
    } catch {}
    return null;
  }

  let currentEditId = null;
  let currentEditButton = null;
  function showForm(show){ const f=$id('addrForm'); if(f) f.style.display = show ? 'block' : 'none'; }
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
  function collect(){
    const trim = (s,max) => {
      if (!s) return null;
      const v = String(s).trim();
      return v.length > max ? v.slice(0,max) : v;
    };
    return {
      label: trim($id('a_label').value, 50),
      zip: trim($id('a_zip').value, 20),
      roadAddr: trim($id('a_road').value, 255),
      jibunAddr: trim($id('a_jibun').value, 255),
      addrDetail: trim($id('a_detail').value, 255),
      isdefaultShipping: $id('a_default').checked
    };
  }

  function renderAddressList(list){
    const container = $id('addrList');
    const empty = $id('addrEmpty');
    if (!Array.isArray(list)) {
      // handle single object
      list = list && list.id ? [list] : [];
    }
    if (!list.length) {
      empty.style.display = 'block';
      $id('addrItem').style.display = 'none';
      $id('addrCount').textContent = '0';
      return;
    }
    empty.style.display = 'none';
    $id('addrCount').textContent = String(list.length);
    // Simple render: show first item in the template box, and create additional boxes for others
    // Clear old dynamic items
    container.querySelectorAll('.addr-item.dynamic').forEach(el => el.remove());

    function fill(box, a){
      box.style.display = 'block';
      box.querySelector('#v_label').textContent = a.label || '-';
      box.querySelector('#v_default').style.display = a.isdefaultShipping ? 'inline-block' : 'none';
      box.querySelector('#v_zip').textContent = a.zip ? `(${a.zip})` : '';
      box.querySelector('#v_road').textContent = a.roadAddr || '';
      box.querySelector('#v_jibun').textContent = a.jibunAddr || '';
      box.querySelector('#v_detail').textContent = a.addrDetail || '';
      box.dataset.id = a.id;
      box.dataset.label = a.label || '';
      box.dataset.zip = a.zip || '';
      box.dataset.road = a.roadAddr || '';
      box.dataset.jibun = a.jibunAddr || '';
      box.dataset.detail = a.addrDetail || '';
      box.dataset.isdefault = a.isdefaultShipping ? 'true' : 'false';
    }

    // First item into the static template
    fill($id('addrItem'), list[0]);
    // Additional items
    const template = $id('addrItem');
    for (let i = 1; i < list.length; i++) {
      const a = list[i];
      const clone = template.cloneNode(true);
      clone.classList.add('dynamic');
      // Remove duplicate id on the clone root
      if (clone.hasAttribute('id')) clone.removeAttribute('id');
      fill(clone, a);
      // fix ids inside clone to avoid duplicates
      clone.querySelectorAll('[id]').forEach(el=> el.removeAttribute('id'));
      container.appendChild(clone);
    }
  }

  async function loadAddress(){
    const id = await resolveUserId(); if(!id) return;
    try {
      const r = await fetch(`/users/${id}/addresses`, { credentials:'same-origin' });
      if (!r.ok) throw new Error(await r.text());
      const a = await r.json();
      renderAddressList(a);
    } catch {
      renderAddressList([]);
      resetForm();
    }
  }

  function bindEvents(){
    const newBtn = $id('btnAddrNew'); if (newBtn) newBtn.addEventListener('click', (e)=>{
      e.preventDefault();
      resetForm();
      const t=$id('addrFormTitle'); if (t) t.textContent='새 배송지';
      if (currentEditButton) { currentEditButton.textContent='수정'; currentEditButton.classList.remove('active'); currentEditButton=null; }
      currentEditId=null;
      showForm(true);
    });
    // Delegate edit/delete on list
    const listEl = $id('addrList');
    if (listEl) {
      listEl.addEventListener('click', async (e) => {
        const editBtn = e.target.closest('.btn-edit');
        const delBtn = e.target.closest('.btn-delete');
        const item = e.target.closest('.addr-item');
        if (!item) return;
        const addrId = item.dataset.id;

        if (editBtn) {
          e.preventDefault();
          const form = $id('addrForm');
          // Toggle if clicking same item while form visible
          const visible = form && form.style.display !== 'none';
          if (visible && currentEditId === addrId) {
            showForm(false);
            currentEditId = null;
            if (currentEditButton) { currentEditButton.textContent='수정'; currentEditButton.classList.remove('active'); currentEditButton=null; }
            const t=$id('addrFormTitle'); if (t) t.textContent='새 배송지';
            return;
          }

          // Move form just below the clicked item
          if (form && item.nextSibling !== form) {
            item.insertAdjacentElement('afterend', form);
          }

          // fill form from dataset
          $id('addrId').value = addrId || '';
          $id('a_label').value = item.dataset.label || '';
          $id('a_zip').value = item.dataset.zip || '';
          $id('a_road').value = item.dataset.road || '';
          $id('a_jibun').value = item.dataset.jibun || '';
          $id('a_detail').value = item.dataset.detail || '';
          $id('a_default').checked = item.dataset.isdefault === 'true';
          showForm(true);
          currentEditId = addrId;
          if (currentEditButton) { currentEditButton.textContent='수정'; currentEditButton.classList.remove('active'); }
          currentEditButton = editBtn;
          currentEditButton.textContent = '수정 취소';
          currentEditButton.classList.add('active');
          const t=$id('addrFormTitle'); if (t) t.textContent='수정 배송지';
          return;
        }

        if (delBtn) {
          e.preventDefault();
          if (!addrId) return;
          if (!confirm('정말 삭제하시겠습니까?')) return;
          try {
            const uid = await resolveUserId(); if (!uid) throw new Error('로그인이 필요합니다.');
            const r = await fetch(`/users/${uid}/addresses/${addrId}`, { method:'DELETE', credentials:'same-origin' });
            if (!r.ok) throw new Error(await r.text());
            showForm(false);
            await loadAddress();
          } catch (err) { alert(err.message || '삭제 실패'); }
          return;
        }
      });
    }

    $id('btnAddrSave').addEventListener('click', async (e)=>{
      e.preventDefault();
      const addressId = $id('addrId').value;
      const body = collect();
      try {
        const uid = await resolveUserId(); if (!uid) throw new Error('로그인이 필요합니다.');
        if (addressId) {
          const r = await fetch(`/users/${uid}/addresses/${addressId}`, { method:'PATCH', headers:{'Content-Type':'application/json'}, credentials:'same-origin', body: JSON.stringify(body) });
          if (!r.ok) throw new Error(await r.text());
          const updated = await json(r);
        } else {
          const r = await fetch(`/users/${uid}/addresses`, { method:'POST', headers:{'Content-Type':'application/json'}, credentials:'same-origin', body: JSON.stringify(body) });
          if (!r.ok) throw new Error(await r.text());
          const data = await r.json();
        }
        showForm(false);
        currentEditId=null;
        if (currentEditButton) { currentEditButton.textContent='수정'; currentEditButton.classList.remove('active'); currentEditButton=null; }
        const t=$id('addrFormTitle'); if (t) t.textContent='새 배송지';
        // Ensure latest from server
        await loadAddress();
      } catch(e) {
        alert(e.message || '저장 실패');
      }
    });

    $id('btnAddrDelete').addEventListener('click', async (e)=>{
      e.preventDefault();
      const addressId = $id('addrId').value;
      if (!addressId) { alert('삭제할 배송지가 없습니다.'); return; }
      if (!confirm('정말 삭제하시겠습니까?')) return;
      try {
        const uid = await resolveUserId(); if (!uid) throw new Error('로그인이 필요합니다.');
        const r = await fetch(`/users/${uid}/addresses/${addressId}`, { method:'DELETE', credentials:'same-origin' });
        if (!r.ok) throw new Error(await r.text());
        showForm(false);
        currentEditId=null;
        if (currentEditButton) { currentEditButton.textContent='수정'; currentEditButton.classList.remove('active'); currentEditButton=null; }
        const t=$id('addrFormTitle'); if (t) t.textContent='새 배송지';
        await loadAddress();
      } catch(e) { alert(e.message || '삭제 실패'); }
    });

    $id('btnAddrReset').addEventListener('click', (e)=>{ e.preventDefault(); resetForm(); });
  }

  document.addEventListener('DOMContentLoaded', ()=>{ loadAddress(); bindEvents(); });
})();
