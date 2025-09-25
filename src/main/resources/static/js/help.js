(function () {
    const FAQ_CATEGORY_LABELS = {
        MEMBER_MEMBERSHIP: '회원/멤버십',
        ORDER_PAYMENT: '주문/결제',
        DELIVERY: '배송문의',
        CANCEL_EXCHANGE_REFUND: '취소/교환/환불',
        EVENT: '이벤트'
    };

    const NOTICE_CATEGORY_LABELS = {
        NORMAL: '일반',
        MARKET: '매장',
        DELIVERY: '배송',
        EVENT: '이벤트'
    };

    const NOTICE_TAG_CLASS = {
        NORMAL: 'is-green',
        DELIVERY: 'is-blue',
        EVENT: 'is-pink',
        MARKET: 'is-purple'
    };

    const FAQ_CHANNEL_MAP = {
        online: 'ONLINE',
        store: 'STORE'
    };

    const MODE_DESCRIPTION_COPY = {
        ONLINE: '가장 궁금해하시는 질문 10개',
        STORE: '매장 서비스 이용 안내 질문'
    };

    const faqFilterState = {
        channel: 'ONLINE',
        category: null,
        keyword: ''
    };

    const noticeFilterState = {
        category: null
    };

    let faqListEl;
    let faqEmptyEl;
    let noticeTableBodyEl;
    let noticeEmptyEl;
    let noticeFiltersEl;

    let faqSearchInputEl;
    let faqSearchButtonEl;
    let faqKeywordButtons = [];
    let faqModeButtons = [];
    let faqModeDescEl;

    let faqItems = [];
    let noticeItems = [];
    let activeNoticeCategory = 'ALL';

    function selectTab(tab) {
        const tabs = document.querySelectorAll('.help-tab');
        const target = tab.dataset.target;
        const targetPanel = document.getElementById(`panel-${target}`);

        tabs.forEach(btn => {
            const isActive = btn === tab;
            btn.classList.toggle('is-active', isActive);
            btn.setAttribute('aria-selected', isActive ? 'true' : 'false');
        });

        document.querySelectorAll('.help-panel').forEach(panel => {
            const isActive = panel === targetPanel;
            panel.toggleAttribute('hidden', !isActive);
            panel.classList.toggle('is-active', isActive);
        });
    }

    function initTabs() {
        document.querySelectorAll('.help-tab').forEach(tab => {
            tab.addEventListener('click', () => selectTab(tab));
        });
    }

    function initFaqModeButtons() {
        const container = document.getElementById('faq-mode-toggle');
        if (!container) {
            return;
        }

        faqModeButtons = Array.from(container.querySelectorAll('.mode-button'));
        faqModeDescEl = container.querySelector('.faq-mode-desc');

        if (!faqModeButtons.length) {
            return;
        }

        faqModeButtons.forEach(button => {
            button.addEventListener('click', () => handleFaqModeButtonClick(button));
        });

        const initialButton = faqModeButtons.find(btn => FAQ_CHANNEL_MAP[btn.dataset.target] === faqFilterState.channel)
            || faqModeButtons[0];
        updateFaqModeSelection(initialButton);
    }

    function handleFaqModeButtonClick(button) {
        if (!button) {
            return;
        }

        const channelKey = FAQ_CHANNEL_MAP[button.dataset.target];
        if (!channelKey) {
            return;
        }

        if (faqFilterState.channel === channelKey && button.classList.contains('is-active')) {
            return;
        }

        faqFilterState.channel = channelKey;
        updateFaqModeSelection(button);
        loadFaqs();
    }

    function updateFaqModeSelection(activeButton) {
        if (!activeButton) {
            return;
        }

        faqModeButtons.forEach(btn => {
            const isActive = btn === activeButton;
            btn.classList.toggle('is-active', isActive);
            btn.setAttribute('aria-pressed', isActive ? 'true' : 'false');
            btn.setAttribute('aria-selected', isActive ? 'true' : 'false');
            btn.setAttribute('tabindex', isActive ? '0' : '-1');
        });

        updateFaqModeDescription();
    }

    function initFaqSearchBar() {
        faqSearchInputEl = document.getElementById('help-search-input');
        faqSearchButtonEl = document.getElementById('help-search-button');

        if (faqSearchButtonEl) {
            faqSearchButtonEl.addEventListener('click', () => {
                const value = faqSearchInputEl ? faqSearchInputEl.value : '';
                performFaqSearch(value);
            });
        }

        if (!faqSearchInputEl) {
            return;
        }

        faqSearchInputEl.addEventListener('keydown', event => {
            if (event.key === 'Enter') {
                event.preventDefault();
                performFaqSearch(faqSearchInputEl.value);
            } else if (event.key === 'Escape' && faqSearchInputEl.value) {
                event.preventDefault();
                performFaqSearch('');
            }
        });

        faqSearchInputEl.addEventListener('search', () => {
            performFaqSearch(faqSearchInputEl.value);
        });
    }

    function initFaqKeywordButtons() {
        const container = document.getElementById('faq-keywords');
        if (!container) {
            return;
        }

        faqKeywordButtons = Array.from(container.querySelectorAll('.keyword'));
        if (!faqKeywordButtons.length) {
            return;
        }

        faqKeywordButtons.forEach(button => {
            button.setAttribute('aria-pressed', 'false');
            button.addEventListener('click', () => {
                const keywordValue = button.dataset.keyword || button.textContent || '';
                const normalizedTarget = getNormalizedKeyword(keywordValue);
                const normalizedCurrent = getNormalizedKeyword(faqFilterState.keyword);

                if (normalizedTarget && normalizedTarget === normalizedCurrent) {
                    performFaqSearch('');
                } else {
                    performFaqSearch(keywordValue);
                }
            });
        });
    }

    function performFaqSearch(rawValue) {
        const nextKeyword = (rawValue || '').trim();
        const isSameFaqKeyword = faqFilterState.keyword === nextKeyword;

        faqFilterState.keyword = nextKeyword;

        if (faqSearchInputEl) {
            faqSearchInputEl.value = nextKeyword;
        }

        updateFaqKeywordChipSelection();

        if (!isSameFaqKeyword) {
            loadFaqs();
        }
    }

    function updateFaqKeywordChipSelection() {
        if (!faqKeywordButtons.length) {
            return;
        }

        const normalizedCurrent = getNormalizedKeyword(faqFilterState.keyword);
        faqKeywordButtons.forEach(button => {
            const keywordValue = button.dataset.keyword || button.textContent || '';
            const normalizedKeyword = getNormalizedKeyword(keywordValue);
            const isActive = normalizedCurrent !== '' && normalizedCurrent === normalizedKeyword;
            button.classList.toggle('is-active', isActive);
            button.setAttribute('aria-pressed', isActive ? 'true' : 'false');
        });
    }

    function getNormalizedKeyword(value) {
        return (value || '')
            .toString()
            .trim()
            .replace(/^#+/, '')
            .toLowerCase();
    }

    function updateFaqModeDescription() {
        if (!faqModeDescEl) {
            const container = document.getElementById('faq-mode-toggle');
            faqModeDescEl = container ? container.querySelector('.faq-mode-desc') : null;
        }

        if (!faqModeDescEl) {
            return;
        }

        if (faqFilterState.keyword) {
            const count = Array.isArray(faqItems) ? faqItems.length : 0;
            faqModeDescEl.textContent = `검색 결과 ${count}개`;
            return;
        }

        const copy = MODE_DESCRIPTION_COPY[faqFilterState.channel] || MODE_DESCRIPTION_COPY.ONLINE;
        faqModeDescEl.textContent = copy;
    }

    function initNoticeFilters() {
        if (!noticeFiltersEl) {
            return;
        }

        noticeFiltersEl.addEventListener('click', (event) => {
            const button = event.target.closest('.filter');
            if (!button || !noticeFiltersEl.contains(button)) {
                return;
            }

            const category = button.dataset.category || 'ALL';
            if (activeNoticeCategory === category) {
                return;
            }

            activeNoticeCategory = category;
            noticeFiltersEl.querySelectorAll('.filter').forEach(filterButton => {
                const isActive = filterButton === button;
                filterButton.classList.toggle('is-active', isActive);
                filterButton.setAttribute('aria-selected', isActive ? 'true' : 'false');
            });

            noticeFilterState.category = category === 'ALL' ? null : category;
            loadNotices();
        });
    }

    async function loadFaqs() {
        const params = new URLSearchParams();
        if (faqFilterState.category) {
            params.append('category', faqFilterState.category);
        }
        if (faqFilterState.channel) {
            params.append('channel', faqFilterState.channel);
        }
        if (faqFilterState.keyword) {
            params.append('keyword', faqFilterState.keyword);
        }

        const queryString = params.toString();
        const url = queryString ? `/api/faq?${queryString}` : '/api/faq';

        try {
            const response = await fetch(url, { headers: { 'Accept': 'application/json' } });
            if (!response.ok) {
                throw new Error(`FAQ 응답 오류 ${response.status}`);
            }
            const payload = await response.json();
            const data = Array.isArray(payload?.data) ? payload.data : [];
            faqItems = data.filter(item => {
                if (!item) {
                    return false;
                }
                if (item.active === false || item.isActive === false) {
                    return false;
                }
                return true;
            });
        } catch (error) {
            console.error('[help] FAQ 목록 로딩 실패', error);
            faqItems = [];
        }

        renderFaqs();
    }

    async function loadNotices() {
        const params = new URLSearchParams();
        if (noticeFilterState.category) {
            params.append('category', noticeFilterState.category);
        }

        const queryString = params.toString();
        const url = queryString ? `/api/notices?${queryString}` : '/api/notices';

        try {
            const response = await fetch(url, { headers: { 'Accept': 'application/json' } });
            if (!response.ok) {
                throw new Error(`공지사항 응답 오류 ${response.status}`);
            }
            const payload = await response.json();
            const data = Array.isArray(payload?.data) ? payload.data : [];
            noticeItems = data.filter(item => item && item.active !== false);
        } catch (error) {
            console.error('[help] 공지사항 로딩 실패', error);
            noticeItems = [];
        }
        renderNotices();
    }

    function renderFaqs() {
        if (!faqListEl) {
            return;
        }

        faqListEl.innerHTML = '';
        const sorted = [...faqItems].sort((a, b) => {
            const orderA = typeof a?.sortOrder === 'number' ? a.sortOrder : Number.MAX_SAFE_INTEGER;
            const orderB = typeof b?.sortOrder === 'number' ? b.sortOrder : Number.MAX_SAFE_INTEGER;
            if (orderA !== orderB) {
                return orderA - orderB;
            }
            return (a?.id || 0) - (b?.id || 0);
        });
        const isSearchMode = Boolean(faqFilterState.keyword);
        const list = isSearchMode ? sorted : sorted.slice(0, 20);

        list.forEach((faq, index) => {
            const item = buildFaqItem(faq, index, isSearchMode);
            faqListEl.appendChild(item);
        });

        const hasFaq = list.length > 0;
        if (faqEmptyEl) {
            faqEmptyEl.textContent = faqFilterState.keyword ? '검색 결과가 없습니다.' : '등록된 FAQ가 없습니다.';
            faqEmptyEl.toggleAttribute('hidden', hasFaq);
        }

        updateFaqModeDescription();
    }

    function buildFaqItem(faq, index, isSearchMode) {
        const item = document.createElement('li');
        item.className = 'faq-item';

        const header = document.createElement('div');
        header.className = 'faq-header';

        const rankEl = document.createElement('div');
        rankEl.className = 'faq-rank';
        rankEl.textContent = String(index + 1).padStart(2, '0');

        const labelEl = document.createElement('div');
        labelEl.className = 'faq-label';
        labelEl.textContent = isSearchMode ? '검색' : (index < 10 ? 'TOP10' : 'FAQ');

        const questionEl = document.createElement('div');
        questionEl.className = 'faq-question';
        const rawQuestion = faq?.question?.trim() ?? '';
        const categoryText = FAQ_CATEGORY_LABELS[faq?.category] || faq?.category || 'FAQ';
        const hasCustomPrefix = rawQuestion.startsWith('[');
        questionEl.textContent = hasCustomPrefix ? rawQuestion : `[${categoryText}] ${rawQuestion}`;

        const toggleBtn = document.createElement('button');
        toggleBtn.type = 'button';
        toggleBtn.className = 'faq-toggle';
        toggleBtn.setAttribute('aria-label', `${faq?.question ?? 'FAQ'} 답변 열기`);
        toggleBtn.setAttribute('aria-expanded', 'false');

        const answerId = `faq-answer-${faq?.id ?? `idx-${index}`}`;
        toggleBtn.setAttribute('aria-controls', answerId);

        const answerEl = document.createElement('div');
        answerEl.className = 'faq-answer';
        answerEl.id = answerId;
        answerEl.hidden = true;
        answerEl.textContent = faq?.answer ?? '답변이 준비 중입니다.';

        toggleBtn.addEventListener('click', () => {
            const isOpen = item.classList.toggle('is-open');
            toggleBtn.setAttribute('aria-expanded', isOpen ? 'true' : 'false');
            answerEl.hidden = !isOpen;
        });

        header.appendChild(rankEl);
        header.appendChild(labelEl);
        header.appendChild(questionEl);
        header.appendChild(toggleBtn);
        item.appendChild(header);
        item.appendChild(answerEl);

        return item;
    }

    function renderNotices() {
        if (!noticeTableBodyEl) {
            return;
        }

        noticeTableBodyEl.innerHTML = '';
        const filtered = (activeNoticeCategory === 'ALL')
            ? noticeItems
            : noticeItems.filter(notice => notice?.category === activeNoticeCategory);

        const sorted = [...filtered].sort((a, b) => {
            const dateA = new Date(a?.createdAt || 0).getTime();
            const dateB = new Date(b?.createdAt || 0).getTime();
            if (dateA !== dateB) {
                return dateB - dateA;
            }
            return (b?.id || 0) - (a?.id || 0);
        });

        sorted.forEach(notice => {
            const row = document.createElement('tr');

            const numberCell = document.createElement('td');
            numberCell.className = 'col-number';
            numberCell.textContent = notice?.important ? '중요' : (notice?.id ?? '');

            const categoryCell = document.createElement('td');
            const tag = document.createElement('span');
            const categoryKey = notice?.category;
            tag.className = `tag ${NOTICE_TAG_CLASS[categoryKey] ?? 'is-green'}`;
            tag.textContent = NOTICE_CATEGORY_LABELS[categoryKey] || categoryKey || '';
            categoryCell.appendChild(tag);

            const titleCell = document.createElement('td');
            const link = document.createElement('a');
            const href = `/help/notices/${notice?.id ?? ''}`;
            link.href = href;
            link.className = 'notice-link';
            link.textContent = notice?.title ?? '';
            link.addEventListener('click', event => event.stopPropagation());
            titleCell.appendChild(link);

            const dateCell = document.createElement('td');
            dateCell.textContent = formatDate(notice?.createdAt);

            row.appendChild(numberCell);
            row.appendChild(categoryCell);
            row.appendChild(titleCell);
            row.appendChild(dateCell);

            if (notice?.id) {
                row.classList.add('notice-row');
                row.dataset.href = href;
                row.addEventListener('click', () => {
                    window.location.href = href;
                });
                row.addEventListener('keydown', event => {
                    if (event.key === 'Enter' || event.key === ' ') {
                        event.preventDefault();
                        window.location.href = href;
                    }
                });
                row.tabIndex = 0;
            }

            noticeTableBodyEl.appendChild(row);
        });

        const hasNotice = sorted.length > 0;
        if (noticeEmptyEl) {
            noticeEmptyEl.textContent = '등록된 공지사항이 없습니다.';
            noticeEmptyEl.toggleAttribute('hidden', hasNotice);
        }
    }

    function formatDate(value) {
        if (!value) {
            return '';
        }
        const date = new Date(value);
        if (Number.isNaN(date.getTime())) {
            return '';
        }
        const year = date.getFullYear();
        const month = String(date.getMonth() + 1).padStart(2, '0');
        const day = String(date.getDate()).padStart(2, '0');
        return `${year}.${month}.${day}`;
    }

    async function bootstrap() {
        faqListEl = document.getElementById('faq-list');
        faqEmptyEl = document.getElementById('faq-empty');
        noticeTableBodyEl = document.getElementById('notice-table-body');
        noticeEmptyEl = document.getElementById('notice-empty');
        noticeFiltersEl = document.getElementById('notice-filters');

        initTabs();
        initFaqSearchBar();
        initFaqKeywordButtons();
        initFaqModeButtons();
        initNoticeFilters();
        updateFaqKeywordChipSelection();

        await Promise.all([loadFaqs(), loadNotices()]);
    }

    if (document.readyState === 'loading') {
        document.addEventListener('DOMContentLoaded', bootstrap);
    } else {
        bootstrap();
    }
})();
