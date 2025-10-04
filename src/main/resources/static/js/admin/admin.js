import { initUserPanel } from './users.js';
import { initProductPanel } from './products.js';
import { initInventoryPanel } from './inventory.js';
import { initOrderPanel } from './orders.js';
import { initEventPanel } from './events.js';
import { initPromotionPanel } from './promotions.js';
import { initCouponPanel } from './coupons.js';

const panelInitializers = {
    users: initUserPanel,
    products: initProductPanel,
    inventories: initInventoryPanel,
    orders: initOrderPanel,
    events: initEventPanel,
    promotions: initPromotionPanel,
    coupons: initCouponPanel
};

const initializedPanels = new Set();
let currentPanel = null;

function showPanel(target) {
    document.querySelectorAll('.nav-btn').forEach(btn => {
        btn.classList.toggle('active', btn.dataset.target === target);
    });
    document.querySelectorAll('.admin-panel').forEach(panel => {
        panel.classList.toggle('active', panel.id === `panel-${target}`);
    });

    if (!initializedPanels.has(target)) {
        const init = panelInitializers[target];
        if (typeof init === 'function') {
            init();
            initializedPanels.add(target);
        }
    }

    currentPanel = target;
}

document.querySelectorAll('.nav-btn').forEach(btn => {
    btn.addEventListener('click', () => showPanel(btn.dataset.target));
});

function focusForm(targetId) {
    const element = document.getElementById(targetId);
    if (!element) {
        return;
    }

    const highlightTarget = element.closest('.card') ?? element;
    highlightTarget.scrollIntoView({ behavior: 'smooth', block: 'start' });
    highlightTarget.classList.add('scroll-highlight');
    setTimeout(() => highlightTarget.classList.remove('scroll-highlight'), 1500);
}

document.querySelectorAll('[data-scroll-target]').forEach(btn => {
    btn.addEventListener('click', () => {
        const panel = btn.dataset.panel;
        const targetId = btn.dataset.scrollTarget;

        if (panel && panel !== currentPanel) {
            showPanel(panel);
        }

        requestAnimationFrame(() => focusForm(targetId));
    });
});

// bootstrap first panel
showPanel('users');
