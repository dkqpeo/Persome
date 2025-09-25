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

    let faqListEl;
    let faqEmptyEl;
    let noticeTableBodyEl;
    let noticeEmptyEl;
    let noticeFiltersEl;

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

    function initModeButtons() {
        const buttons = document.querySelectorAll('.mode-button');
        const desc = document.querySelector('.mode-desc');
        const copy = {
            online: '가장 궁금해하시는 질문 10개',
            store: '매장 서비스 이용 안내 질문'
        };

        buttons.forEach(button => {
            button.addEventListener('click', () => {
                buttons.forEach(btn => btn.classList.toggle('is-active', btn === button));
                const key = button.dataset.target;
                if (desc && copy[key]) {
                    desc.textContent = copy[key];
                }
            });
        });
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

            renderNotices();
        });
    }

    async function loadFaqs() {
        try {
            const response = await fetch('/api/faq', { headers: { 'Accept': 'application/json' } });
            if (!response.ok) {
                throw new Error(`FAQ 응답 오류 ${response.status}`);
            }
            const payload = await response.json();
            const data = Array.isArray(payload?.data) ? payload.data : [];
            faqItems = data.filter(item => item && item.active !== false);
        } catch (error) {
            console.error('[help] FAQ 목록 로딩 실패', error);
            faqItems = [];
        }
        renderFaqs();
    }

    async function loadNotices() {
        try {
            const response = await fetch('/api/notices', { headers: { 'Accept': 'application/json' } });
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
        const limited = sorted.slice(0, 20);

        limited.forEach((faq, index) => {
            const item = buildFaqItem(faq, index);
            faqListEl.appendChild(item);
        });

        const hasFaq = limited.length > 0;
        faqEmptyEl?.toggleAttribute('hidden', hasFaq);
    }

    function buildFaqItem(faq, index) {
        const item = document.createElement('li');
        item.className = 'faq-item';

        const header = document.createElement('div');
        header.className = 'faq-header';

        const rankEl = document.createElement('div');
        rankEl.className = 'faq-rank';
        rankEl.textContent = String(index + 1).padStart(2, '0');

        const labelEl = document.createElement('div');
        labelEl.className = 'faq-label';
        labelEl.textContent = index < 10 ? 'TOP10' : 'FAQ';

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
        noticeEmptyEl?.toggleAttribute('hidden', hasNotice);
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
        initModeButtons();
        initNoticeFilters();

        await Promise.all([loadFaqs(), loadNotices()]);
    }

    if (document.readyState === 'loading') {
        document.addEventListener('DOMContentLoaded', bootstrap);
    } else {
        bootstrap();
    }
})();
