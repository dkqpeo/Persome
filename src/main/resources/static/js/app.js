// Simple AJAX helpers and page initializers for Persome
(function () {
  const json = async (res) => {
    const text = await res.text();
    try { return text ? JSON.parse(text) : null; } catch { return text; }
  };

  async function apiGet(url) {
    const res = await fetch(url, { credentials: 'same-origin' });
    if (!res.ok) throw new Error(await res.text());
    return json(res);
  }

  async function apiPost(url, body) {
    const res = await fetch(url, {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      credentials: 'same-origin',
      body: JSON.stringify(body || {})
    });
    if (!res.ok) throw new Error(await res.text());
    return json(res);
  }

  async function apiPatch(url, body) {
    const res = await fetch(url, {
      method: 'PATCH',
      headers: { 'Content-Type': 'application/json' },
      credentials: 'same-origin',
      body: JSON.stringify(body || {})
    });
    if (!res.ok) throw new Error(await res.text());
    return json(res);
  }

  async function apiDelete(url) {
    const res = await fetch(url, { method: 'DELETE', credentials: 'same-origin' });
    if (!res.ok) throw new Error(await res.text());
    return true;
  }

  async function getCurrentUser() {
    try {
      return await apiGet('/users/me');
    } catch {
      return null;
    }
  }

  async function resolveUserId() {
    if (window.PersomeUser && window.PersomeUser.id) return window.PersomeUser.id;
    try {
      const points = await apiGet('/users/me/points');
      if (points && points.userId) return points.userId;
    } catch {}
    return null;
  }

  function formatPrice(num) {
    if (num == null) return '';
    try { return Number(num).toLocaleString('ko-KR') + '원'; } catch { return String(num); }
  }

  function firstImg(product) {
    const imgs = product.imgs || product.images || [];
    if (!imgs || !imgs.length) return '/images/banner-sample.jpg';
    const first = imgs.find(i => i.imgOrder === 0) || imgs[0];
    return first.imgUrl || '/images/banner-sample.jpg';
  }

  const HOME_EVENT_FALLBACK = [
    {
      id: 105,
      name: '슬립케어 나이트',
      description: '수면향 바디케어 & 캔들 세트 25% 할인',
      thumbnailUrl: 'https://images.pexels.com/photos/7428109/pexels-photo-7428109.jpeg?auto=compress&cs=tinysrgb&w=1920&h=1080',
      startDate: '2025-10-08T00:00:00',
      endDate: '2025-10-30T23:59:59',
      status: 'SCHEDULED'
    },
    {
      id: 101,
      name: '가을 웰니스 페어',
      description: '비타민·건강기능식품 최대 35% 세트 할인',
      thumbnailUrl: 'https://images.pexels.com/photos/6621420/pexels-photo-6621420.jpeg?auto=compress&cs=tinysrgb&w=1920&h=1080',
      startDate: '2025-09-01T00:00:00',
      endDate: '2025-10-10T23:59:59',
      status: 'ACTIVE'
    },
    {
      id: 102,
      name: '글로우 부스팅 위크',
      description: '광채 앰플·기초 세트 1+1 프로모션',
      thumbnailUrl: 'https://images.pexels.com/photos/3735659/pexels-photo-3735659.jpeg?auto=compress&cs=tinysrgb&w=1920&h=1080',
      startDate: '2025-09-08T00:00:00',
      endDate: '2025-10-03T23:59:59',
      status: 'ACTIVE'
    },
    {
      id: 103,
      name: '향기로운 홈테라피',
      description: '디퓨저와 홈퍼퓸 라인업 20% Off + 한정 굿즈',
      thumbnailUrl: 'https://images.pexels.com/photos/8154575/pexels-photo-8154575.jpeg?auto=compress&cs=tinysrgb&w=1920&h=1080',
      startDate: '2025-09-05T00:00:00',
      endDate: '2025-10-08T23:59:59',
      status: 'ACTIVE'
    },
    {
      id: 104,
      name: '컬러 팔레트 라이브',
      description: '라이브 방송 중 메이크업 팔레트 + 브러시 세트 증정',
      thumbnailUrl: 'https://images.pexels.com/photos/5938646/pexels-photo-5938646.jpeg?auto=compress&cs=tinysrgb&w=1920&h=1080',
      startDate: '2025-09-18T00:00:00',
      endDate: '2025-10-06T23:59:59',
      status: 'ACTIVE'
    },
    {
      id: 106,
      name: '홀리데이 프리뷰',
      description: '2025 홀리데이 에디션 선런칭 특가',
      thumbnailUrl: 'https://images.pexels.com/photos/1183266/pexels-photo-1183266.jpeg?auto=compress&cs=tinysrgb&w=1920&h=1080',
      startDate: '2025-10-12T00:00:00',
      endDate: '2025-11-05T23:59:59',
      status: 'SCHEDULED'
    },
    {
      id: 107,
      name: '에센스 집중 케어',
      description: '시즌 베스트 에센스 3종 번들 구성',
      thumbnailUrl: 'https://images.pexels.com/photos/3735634/pexels-photo-3735634.jpeg?auto=compress&cs=tinysrgb&w=1920&h=1080',
      startDate: '2025-10-20T00:00:00',
      endDate: '2025-11-08T23:59:59',
      status: 'SCHEDULED'
    },
    {
      id: 108,
      name: '썸머 피날레 세일',
      description: '여름 한정 뷰티 컬렉션 클리어런스',
      thumbnailUrl: 'https://images.pexels.com/photos/3735633/pexels-photo-3735633.jpeg?auto=compress&cs=tinysrgb&w=1920&h=1080',
      startDate: '2025-07-20T00:00:00',
      endDate: '2025-09-10T23:59:59',
      status: 'ENDED'
    },
    {
      id: 109,
      name: '그린 라인 위크',
      description: '친환경 포장 제품 라인 15% 할인',
      thumbnailUrl: 'https://images.pexels.com/photos/256106/pexels-photo-256106.jpeg?auto=compress&cs=tinysrgb&w=1920&h=1080',
      startDate: '2025-08-10T00:00:00',
      endDate: '2025-09-12T23:59:59',
      status: 'ENDED'
    },
    {
      id: 110,
      name: '스파 인 유어 홈',
      description: '홈스파 바디 트리트먼트 세트 사은품 증정',
      thumbnailUrl: 'https://images.pexels.com/photos/1183260/pexels-photo-1183260.jpeg?auto=compress&cs=tinysrgb&w=1920&h=1080',
      startDate: '2025-08-18T00:00:00',
      endDate: '2025-09-05T23:59:59',
      status: 'ENDED'
    }
  ];

  let homeEventCarouselHandlers = null;

  function escapeHtml(str) {
    if (str == null) return '';
    return String(str)
      .replace(/&/g, '&amp;')
      .replace(/</g, '&lt;')
      .replace(/>/g, '&gt;')
      .replace(/"/g, '&quot;')
      .replace(/'/g, '&#39;');
  }

  function mapEventStatus(status) {
    const normalized = (status || '').toUpperCase();
    switch (normalized) {
      case 'ACTIVE':
        return { text: '진행 중', className: 'event-slide__badge event-slide__badge--active' };
      case 'SCHEDULED':
        return { text: '예정', className: 'event-slide__badge event-slide__badge--scheduled' };
      case 'ENDED':
        return { text: '종료', className: 'event-slide__badge event-slide__badge--ended' };
      default:
        return { text: '', className: '' };
    }
  }

  function formatDateValue(iso) {
    if (!iso) return '';
    try {
      const [datePart] = String(iso).split('T');
      return datePart ? datePart.replace(/-/g, '.') : '';
    } catch {
      return String(iso);
    }
  }

  function formatEventRange(start, end) {
    const startText = formatDateValue(start);
    const endText = formatDateValue(end);
    if (startText && endText) return `${startText} ~ ${endText}`;
    return startText || endText || '';
  }

  function parseDateValue(value) {
    if (!value) return null;
    const d = new Date(value);
    return Number.isNaN(d.getTime()) ? null : d;
  }

  function formatCountdownTo(date) {
    const target = parseDateValue(date);
    if (!target) return '';
    const now = new Date();
    const diffMs = target.getTime() - now.getTime();
    if (diffMs <= 0) return '';

    const totalMinutes = Math.floor(diffMs / 60000);
    const days = Math.floor(totalMinutes / (60 * 24));
    const hours = Math.floor((totalMinutes % (60 * 24)) / 60);
    const minutes = totalMinutes % 60;

    if (days > 0) {
      return `이벤트 오픈까지 ${days}일 ${hours}시간 남았습니다`;
    }
    if (hours > 0) {
      return `이벤트 오픈까지 ${hours}시간 ${minutes}분 남았습니다`;
    }
    return minutes > 0
      ? `이벤트 오픈까지 ${minutes}분 남았습니다`
      : '';
  }

  function resolveEventState(evt) {
    const rawStatus = (evt && evt.status ? String(evt.status) : '').toUpperCase();
    const start = parseDateValue(evt && evt.startDate);
    const end = parseDateValue(evt && evt.endDate);
    const now = new Date();

    if (start && now < start) {
      return { status: 'SCHEDULED', countdownText: formatCountdownTo(start) };
    }

    if (end && now > end) {
      return { status: 'ENDED', countdownText: '' };
    }

    const status = rawStatus === 'ENDED' ? 'ENDED' : 'ACTIVE';
    return { status, countdownText: '' };
  }

  function eventSlideHTML(evt) {
    const state = resolveEventState(evt);
    const statusMeta = mapEventStatus(state.status);
    const badge = statusMeta.text ? `<span class="event-slide__badge ${statusMeta.className}">${statusMeta.text}</span>` : '';
    const description = escapeHtml(evt.description || '');
    const range = formatEventRange(evt.startDate, evt.endDate);
    const image = evt.thumbnailUrl || '/images/banner-sample.jpg';
    const countdown = state.countdownText
      ? `<p class="event-slide__countdown">${escapeHtml(state.countdownText)}</p>`
      : '';
    return `
      <a class="event-slide" href="/events/event-detail?id=${evt.id}">
        <img class="event-slide__image" src="${image}" alt="${escapeHtml(evt.name || '이벤트 이미지')}">
        <div class="event-slide__overlay">
          ${badge}
          ${countdown}
          <h3 class="event-slide__title">${escapeHtml(evt.name || '')}</h3>
          <p class="event-slide__description">${description}</p>
          <p class="event-slide__date">${escapeHtml(range)}</p>
        </div>
      </a>
    `;
  }

  function initHomeEventCarousel(events) {
    const track = document.getElementById('homeEventTrack');
    const prevBtn = document.getElementById('eventPrevBtn');
    const nextBtn = document.getElementById('eventNextBtn');
    const currentEl = document.getElementById('eventCurrent');
    const totalEl = document.getElementById('eventTotal');
    const indicatorWrap = document.getElementById('eventIndicators');
    if (!track || !prevBtn || !nextBtn) return;

    const viewport = track.parentElement;
    if (!viewport) return;

    const total = Array.isArray(events) ? events.length : 0;

    if (!total) {
      track.innerHTML = '';
      track.style.display = 'none';
      if (indicatorWrap) {
        indicatorWrap.innerHTML = '';
        indicatorWrap.hidden = true;
      }
      if (currentEl) currentEl.textContent = '0';
      if (totalEl) totalEl.textContent = '0';
      prevBtn.disabled = true;
      nextBtn.disabled = true;
      return;
    }

    track.style.display = 'flex';

    track.innerHTML = events.map(eventSlideHTML).join('');

    const slides = Array.from(track.children);
    viewport.scrollLeft = 0;
    if (totalEl) totalEl.textContent = String(total);
    let currentIndex = 0;
    let indicatorButtons = [];

    if (indicatorWrap) {
      indicatorWrap.innerHTML = events.map((_, idx) => (
        `<button type="button" class="event-indicator${idx === 0 ? ' is-active' : ''}" aria-label="이벤트 ${idx + 1}" data-index="${idx}" aria-pressed="${idx === 0}" ></button>`
      )).join('');
      indicatorButtons = Array.from(indicatorWrap.querySelectorAll('button'));
      indicatorWrap.hidden = indicatorButtons.length <= 1;
    }

    function updateControls() {
      if (currentEl) currentEl.textContent = String(Math.min(total, currentIndex + 1));
      prevBtn.disabled = currentIndex <= 0;
      nextBtn.disabled = currentIndex >= total - 1;
      if (indicatorButtons.length) {
        indicatorButtons.forEach((btn, idx) => {
          const active = idx === currentIndex;
          btn.classList.toggle('is-active', active);
          btn.setAttribute('aria-pressed', active ? 'true' : 'false');
        });
      }
    }

    function scrollToIndex(index) {
      const clamped = Math.max(0, Math.min(total - 1, index));
      const target = slides[clamped];
      if (!target) return;
      currentIndex = clamped;
      viewport.scrollTo({ left: target.offsetLeft, behavior: 'smooth' });
      updateControls();
    }

    let scrollRaf = null;
    function syncIndexWithScroll() {
      const scrollLeft = viewport.scrollLeft;
      let closestIndex = 0;
      let minDistance = Number.POSITIVE_INFINITY;
      slides.forEach((slide, idx) => {
        const distance = Math.abs(slide.offsetLeft - scrollLeft);
        if (distance < minDistance) {
          minDistance = distance;
          closestIndex = idx;
        }
      });
      if (closestIndex !== currentIndex) {
        currentIndex = closestIndex;
        updateControls();
      }
    }

    if (homeEventCarouselHandlers) {
      const { viewport: prevViewport, scroll, resize, indicatorWrap: prevIndicatorWrap, indicator } = homeEventCarouselHandlers;
      if (prevViewport) prevViewport.removeEventListener('scroll', scroll);
      if (resize) window.removeEventListener('resize', resize);
      if (prevIndicatorWrap && indicator) prevIndicatorWrap.removeEventListener('click', indicator);
    }

    function onViewportScroll() {
      if (scrollRaf) cancelAnimationFrame(scrollRaf);
      scrollRaf = requestAnimationFrame(syncIndexWithScroll);
    }

    function onWindowResize() {
      if (scrollRaf) cancelAnimationFrame(scrollRaf);
      scrollRaf = requestAnimationFrame(syncIndexWithScroll);
    }

    function onIndicatorClick(e) {
      const btn = e.target.closest('button');
      if (!btn) return;
      const idx = Number(btn.getAttribute('data-index'));
      if (Number.isNaN(idx)) return;
      scrollToIndex(idx);
    }

    viewport.addEventListener('scroll', onViewportScroll);
    window.addEventListener('resize', onWindowResize);
    if (indicatorWrap) indicatorWrap.addEventListener('click', onIndicatorClick);

    homeEventCarouselHandlers = {
      viewport,
      scroll: onViewportScroll,
      resize: onWindowResize,
      indicatorWrap,
      indicator: onIndicatorClick
    };

    prevBtn.onclick = () => scrollToIndex(currentIndex - 1);
    nextBtn.onclick = () => scrollToIndex(currentIndex + 1);

    // 초기 상태 반영
    syncIndexWithScroll();
    updateControls();
  }

  async function loadHomeEvents() {
    const track = document.getElementById('homeEventTrack');
    if (!track) return;
    try {
      const resp = await apiGet('/api/events');
      const events = Array.isArray(resp)
        ? resp
        : (resp && Array.isArray(resp.data) ? resp.data : []);

      const order = { ACTIVE: 0, SCHEDULED: 1, ENDED: 2 };
      const prepared = events
        .slice()
        .sort((a, b) => {
          const statusDiff = (order[(a.status || '').toUpperCase()] ?? 3) - (order[(b.status || '').toUpperCase()] ?? 3);
          if (statusDiff !== 0) return statusDiff;
          return new Date(a.startDate || 0) - new Date(b.startDate || 0);
        })
        .slice(0, 12);

      const list = prepared.length ? prepared : HOME_EVENT_FALLBACK;
      initHomeEventCarousel(list);
    } catch (e) {
      console.error('이벤트를 불러오지 못했습니다.', e);
      initHomeEventCarousel(HOME_EVENT_FALLBACK);
    }
  }

  function productCardHTML(p) {
    const img = firstImg(p);
    const id = p.product_id || p.id;
    let priceText = '';
    const prices = p.price || p.prices || [];
    if (prices.length) {
      // pick min price for display
      const min = prices.reduce((acc, cur) => acc == null || cur.price < acc ? cur.price : acc, null);
      if (min != null) priceText = formatPrice(min);
    }
    return `
      <a class="product" href="/products/${id}" style="text-decoration:none;color:inherit">
        <img src="${img}" alt="${p.name || ''}">
        <h3>${p.name || ''}</h3>
        <p>${priceText}</p>
      </a>
    `;
  }

  async function loadHomeProducts() {
    const containerPopular = document.getElementById('popularProducts');
    const containerNew = document.getElementById('newProducts');
    if (!containerPopular && !containerNew) return;
    try {
      // 홈 메인 섹션: 인기/신규 API를 병렬 호출
      const [popularData, newData] = await Promise.all([
        apiGet('/products/popular?size=10'),
        apiGet('/products/new?size=10')
      ]);
      const popular = Array.isArray(popularData) ? popularData : [];
      const fresh = Array.isArray(newData) ? newData : [];
      if (containerPopular) containerPopular.innerHTML = popular.map(productCardHTML).join('');
      if (containerNew) containerNew.innerHTML = fresh.map(productCardHTML).join('');
    } catch (e) {
      if (containerPopular) containerPopular.innerHTML = '<p>상품을 불러오지 못했습니다.</p>';
      if (containerNew) containerNew.innerHTML = '';
      console.error(e);
    }
  }

  async function updateHeaderCartCount() {
    const el = document.getElementById('cartCount');
    if (!el) return;
    try {
      const userId = await resolveUserId();
      if (!userId) return;
      const cart = await apiGet(`/users/${userId}/cart`);
      const items = (cart && cart.cartItems) || [];
      // show total quantity sum
      const totalQty = items.reduce((sum, it) => sum + (it.quantity || 0), 0);
      el.textContent = String(totalQty);
    } catch (e) {
      // ignore if not logged in
    }
  }

  // CART helpers
  async function loadCartPage() {
    const container = document.getElementById('cartItems');
    if (!container) return;
    const status = document.getElementById('cartStatus');
    try {
      const userId = await resolveUserId();
      if (!userId) {
        container.innerHTML = '<p>로그인이 필요합니다. <a href="/users/login">로그인하기</a></p>';
        return;
      }
      const cart = await apiGet(`/users/${userId}/cart`);
      const items = (cart && cart.cartItems) || [];
      if (!items.length) {
        container.innerHTML = '<p>장바구니가 비었습니다.</p>';
        return;
      }
      container.innerHTML = items.map(it => `
        <div class="cart-row" data-id="${it.cartItemId}">
          <div>옵션 ID: ${it.productOptionId}</div>
          <div>
            수량: <input type="number" min="1" value="${it.quantity}" class="qty-input" style="width:60px"> 
            <button class="btn-update">변경</button>
            <button class="btn-remove">삭제</button>
          </div>
        </div>
      `).join('');

      container.addEventListener('click', async (e) => {
        const row = e.target.closest('.cart-row');
        if (!row) return;
        const id = row.getAttribute('data-id');
        if (e.target.classList.contains('btn-remove')) {
          try {
            await apiDelete(`/users/${userId}/cart/items/${id}`);
            row.remove();
            updateHeaderCartCount();
          } catch (err) {
            alert('삭제 실패: ' + err.message);
          }
        }
        if (e.target.classList.contains('btn-update')) {
          const qty = parseInt(row.querySelector('.qty-input').value || '1', 10);
          try {
            await apiPatch(`/users/${userId}/cart/items/${id}`, { cartItemId: Number(id), updateQuantity: qty });
            updateHeaderCartCount();
            if (status) status.textContent = '수량이 변경되었습니다.';
          } catch (err) {
            alert('수정 실패: ' + err.message);
          }
        }
      });

      const clearBtn = document.getElementById('btnClearCart');
      if (clearBtn) {
        clearBtn.addEventListener('click', async () => {
          try {
            await apiDelete(`/users/${userId}/cart/items`);
            container.innerHTML = '<p>장바구니가 비었습니다.</p>';
            updateHeaderCartCount();
          } catch (err) {
            alert('비우기 실패: ' + err.message);
          }
        });
      }
    } catch (e) {
      container.innerHTML = '<p>장바구니를 불러오지 못했습니다.</p>';
    }
  }

  // PRODUCT page
  async function loadProductPage() {
    const root = document.getElementById('productDetail');
    if (!root) return;
    const params = new URLSearchParams(location.search);
    const id = params.get('id');
    if (!id) {
      root.innerHTML = '<p>상품 ID가 없습니다.</p>';
      return;
    }
    try {
      const p = await apiGet(`/products/${id}`);
      const img = firstImg({ images: p.images });
      const minPrice = (p.prices || []).reduce((acc, cur) => acc == null || cur.price < acc ? cur.price : acc, null);
      const options = p.options || [];
      root.innerHTML = `
        <div class="prod">
          <div class="left">
            <img src="${img}" alt="${p.name || ''}" style="max-width:360px;border-radius:8px;"/>
          </div>
          <div class="right">
            <h2>${p.brandName ? '[' + p.brandName + '] ' : ''}${p.name || ''}</h2>
            <div class="price">${minPrice != null ? formatPrice(minPrice) : ''}</div>
            <div class="opt">
              <label>옵션</label>
              <select id="selectOption">
                ${options.map(o => `<option value="${o.option_id}">${o.name || ('옵션 ' + o.option_id)}</option>`).join('')}
              </select>
            </div>
            <div class="qty">
              <label>수량</label>
              <input id="qty" type="number" min="1" value="1" style="width:80px" />
            </div>
            <div class="actions" style="margin-top:8px">
              <button id="btnAddCart">장바구니 담기</button>
            </div>
          </div>
        </div>
      `;

      document.getElementById('btnAddCart').addEventListener('click', async () => {
        try {
          const userId = await resolveUserId();
          if (!userId) { alert('로그인이 필요합니다.'); return; }
          const optionId = Number(document.getElementById('selectOption').value);
          const qty = Number(document.getElementById('qty').value || '1');
          await apiPost(`/users/${userId}/cart/items`, { productOptionId: optionId, quantity: qty });
          alert('장바구니에 담았습니다.');
          updateHeaderCartCount();
        } catch (e) {
          alert('장바구니 담기 실패: ' + e.message);
        }
      });
    } catch (e) {
      root.innerHTML = '<p>상품 정보를 불러오지 못했습니다.</p>';
    }
  }

  // MYPAGE
  async function loadMyPage() {
    const box = document.getElementById('myPage');
    if (!box) return;
    try {
      const me = await getCurrentUser();
      if (!me) { box.innerHTML = '<p>로그인이 필요합니다. <a href="/users/login">로그인</a></p>'; return; }

      box.querySelector('#profile').innerHTML = `
        <div><b>이름:</b> ${me.name || ''}</div>
        <div><b>아이디:</b> ${me.loginId || ''}</div>
        <div><b>이메일:</b> ${me.email || ''}</div>
      `;

      // Points summary
      try {
        const points = await apiGet('/users/me/points');
        const val = (points && (points.balance != null ? points.balance : points.currentPoint)) || 0;
        box.querySelector('#points').textContent = val;
      } catch {}

      // Orders summary
      try {
        const ordersResp = await apiGet('/orders/my');
        const orders = (ordersResp && ordersResp.data) || [];
        const list = box.querySelector('#orders');
        if (orders.length) {
          list.innerHTML = orders.map(o => `<li>주문번호 ${o.orderId} - ${o.status || ''}</li>`).join('');
        } else {
          list.innerHTML = '<li>주문 내역이 없습니다.</li>';
        }
      } catch {
        box.querySelector('#orders').innerHTML = '<li>주문 내역을 불러올 수 없습니다.</li>';
      }
    } catch (e) {
      box.innerHTML = '<p>내 정보를 불러오지 못했습니다.</p>';
    }
  }

  window.Persome = {
    apiGet, apiPost, apiPatch, apiDelete,
    loadHomeEvents,
    loadHomeProducts,
    updateHeaderCartCount,
    loadCartPage,
    loadProductPage,
    loadMyPage
  };
})();
