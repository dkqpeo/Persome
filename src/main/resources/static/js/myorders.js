// /js/myorders-status.js
(async function () {
    const apiGet = async (url) => {
        const r = await fetch(url, { credentials: "include" });
        if (!r.ok) throw new Error(await r.text());
        return r.json();
    };

    async function loadRecentOrdersStatus() {
        try {
            // 최근 1년 기준 날짜 계산
            const today = new Date();
            const fromDate = new Date(today);
            fromDate.setFullYear(today.getFullYear() - 1);

            const fromDateStr = fromDate.toISOString().split("T")[0]; // yyyy-MM-dd

            // 날짜 기준 API 호출
            const res = await apiGet(`/api/orders/my/range?fromDate=${fromDateStr}`);
            const orders = res && res.data ? res.data : [];

            // 상태 카운트 초기화
            const counts = {
                "결제대기": 0,
                "결제완료": 0,
                "상품 준비중": 0,
                "배송중": 0,
                "배송완료": 0
            };

            // 상태별 카운트
            orders.forEach(o => {
                const status = o.orderStatus;
                if (counts[status] !== undefined) counts[status]++;
            });

            // DOM 반영
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