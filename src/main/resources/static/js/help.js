(function () {
    function selectTab(tab) {
        const tabs = document.querySelectorAll('.help-tab');
        const target = tab.dataset.target;
        const targetPanel = document.getElementById(`panel-${target}`);

        tabs.forEach(btn => {
            btn.classList.toggle('is-active', btn === tab);
            btn.setAttribute('aria-selected', btn === tab ? 'true' : 'false');
        });

        document.querySelectorAll('.help-panel').forEach(panel => {
            const isActive = panel === targetPanel;
            panel.toggleAttribute('hidden', !isActive);
            panel.classList.toggle('is-active', isActive);
        });
    }

    function initTabs() {
        const tabs = document.querySelectorAll('.help-tab');
        tabs.forEach(tab => {
            tab.addEventListener('click', () => selectTab(tab));
        });
    }

    function initModeButtons() {
        const buttons = document.querySelectorAll('.mode-button');
        const desc = document.querySelector('.mode-desc');
        const copy = {
            online: '가장 궁금해하시는 질문 10개',
            today: '오늘드림 서비스 관련 자주 묻는 질문',
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

    function initFilters() {
        const filters = document.querySelectorAll('.notice-filter .filter');
        filters.forEach(filter => {
            filter.addEventListener('click', () => {
                filters.forEach(btn => btn.classList.toggle('is-active', btn === filter));
            });
        });
    }

    document.addEventListener('DOMContentLoaded', function () {
        initTabs();
        initModeButtons();
        initFilters();
    });
})();
