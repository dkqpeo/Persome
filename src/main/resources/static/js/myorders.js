// /js/myorders-status.js
(async function () {
    const apiGet = async (url) => {
        const r = await fetch(url, { credentials: "include" });
        if (!r.ok) throw new Error(await r.text());
        return r.json();
    };

    async function loadRecentOrdersStatus() {
        try {
            const res = await apiGet("/api/orders/my?size=20");
            const data = res && res.data ? res.data : null;
            if (!data) return;

            const orders = data.content || data;
            const counts = {
                "결제대기": 0,
                "결제완료": 0,
                "상품 준비중": 0,
                "배송중": 0,
                "배송완료": 0
            };

            orders.forEach(o => {
                if (counts[o.orderStatus] !== undefined) counts[o.orderStatus]++;
            });

            document.getElementById("cntPending").textContent = counts["결제대기"];
            document.getElementById("cntPaid").textContent = counts["결제완료"];
            document.getElementById("cntProcessing").textContent = counts["상품 준비중"];
            document.getElementById("cntShipping").textContent = counts["배송중"];
            document.getElementById("cntDelivered").textContent = counts["배송완료"];
        } catch (e) {
            console.error("주문 상태 불러오기 실패:", e);
        }
    }

    document.addEventListener("DOMContentLoaded", loadRecentOrdersStatus);
})();