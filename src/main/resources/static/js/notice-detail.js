(function () {
    const CATEGORY_LABELS = {
        NORMAL: '일반',
        MARKET: '매장',
        DELIVERY: '배송',
        EVENT: '이벤트'
    };

    const CATEGORY_TAG_CLASS = {
        NORMAL: 'is-green',
        MARKET: 'is-purple',
        DELIVERY: 'is-blue',
        EVENT: 'is-pink'
    };

    const loadingEl = document.getElementById('notice-loading');
    const contentEl = document.getElementById('notice-content');
    const emptyEl = document.getElementById('notice-empty');
    const titleEl = document.getElementById('notice-title');
    const categoryEl = document.getElementById('notice-category');
    const dateEl = document.getElementById('notice-date');
    const viewsEl = document.getElementById('notice-views');
    const metaEl = document.getElementById('notice-meta');

    function parseNoticeId() {
        const match = window.location.pathname.match(/\/help\/notices\/(\d+)/);
        return match ? match[1] : null;
    }

    function formatDate(value) {
        if (!value) {
            return '-';
        }
        const date = new Date(value);
        if (Number.isNaN(date.getTime())) {
            return '-';
        }
        const year = date.getFullYear();
        const month = String(date.getMonth() + 1).padStart(2, '0');
        const day = String(date.getDate()).padStart(2, '0');
        return `${year}.${month}.${day}`;
    }

    async function loadNotice(noticeId) {
        try {
            const response = await fetch(`/api/notices/${noticeId}`, { headers: { 'Accept': 'application/json' } });
            if (!response.ok) {
                throw new Error(`요청 실패: ${response.status}`);
            }
            const payload = await response.json();
            return payload?.data ?? null;
        } catch (error) {
            console.error('[notice-detail] 공지사항 조회 실패', error);
            return null;
        }
    }

    function renderNotice(notice) {
        if (!notice) {
            showEmpty();
            return;
        }

        titleEl.textContent = notice.title ?? '공지사항';
        document.title = `${notice.title ?? '공지사항'} | Persome`;

        const categoryKey = notice.category;
        const categoryLabel = CATEGORY_LABELS[categoryKey] || categoryKey || '공지';
        categoryEl.textContent = categoryLabel;
        categoryEl.className = `tag ${CATEGORY_TAG_CLASS[categoryKey] ?? ''}`.trim();

        dateEl.textContent = formatDate(notice.createdAt);
        viewsEl.textContent = typeof notice.viewCount === 'number' ? notice.viewCount.toLocaleString() : '0';

        const content = notice.content ?? '';
        contentEl.innerHTML = '';

        const fragment = document.createDocumentFragment();
        const lines = content.split('\n');
        let hasContent = false;

        lines.forEach(line => {
            if (line.trim() === '') {
                const spacer = document.createElement('div');
                spacer.className = 'notice-content__spacer';
                fragment.appendChild(spacer);
                return;
            }

            const paragraph = document.createElement('p');
            paragraph.className = 'notice-content__paragraph';
            paragraph.textContent = line;
            fragment.appendChild(paragraph);
            hasContent = true;
        });

        if (!hasContent) {
            const fallback = document.createElement('p');
            fallback.className = 'notice-content__paragraph';
            fallback.textContent = '등록된 내용이 없습니다.';
            fragment.appendChild(fallback);
        }

        contentEl.appendChild(fragment);

        loadingEl?.setAttribute('hidden', 'true');
        emptyEl?.setAttribute('hidden', 'true');
        contentEl?.removeAttribute('hidden');
        metaEl?.removeAttribute('hidden');
    }

    function showEmpty() {
        loadingEl?.setAttribute('hidden', 'true');
        contentEl?.setAttribute('hidden', 'true');
        emptyEl?.removeAttribute('hidden');
        titleEl.textContent = '공지사항을 찾지 못했습니다';
    }

    async function bootstrap() {
        const noticeId = parseNoticeId();
        if (!noticeId) {
            showEmpty();
            return;
        }

        const notice = await loadNotice(noticeId);
        renderNotice(notice);
    }

    if (document.readyState === 'loading') {
        document.addEventListener('DOMContentLoaded', bootstrap);
    } else {
        bootstrap();
    }
})();
