// 📌 주문 상태 카운트
async function loadRecentOrdersStatus(months) {
    try {
        const today = new Date();
        const fromDate = new Date();
        fromDate.setMonth(today.getMonth() - months);

        const fromDateStr = fromDate.toISOString().split("T")[0];
        const res = await fetch(`/api/orders/my/range?fromDate=${fromDateStr}`, {
            credentials: "include"
        });
        if (!res.ok) throw new Error("주문 상태 조회 실패");

        const data = await res.json();
        const countsData = data.data || [];

        const counts = { "결제대기": 0, "결제완료": 0, "상품 준비중": 0, "배송중": 0, "배송완료": 0 };
        countsData.forEach(c => { counts[c.status] = c.count; });

        document.getElementById("cntPending").textContent = counts["결제대기"];
        document.getElementById("cntPaid").textContent = counts["결제완료"];
        document.getElementById("cntProcessing").textContent = counts["상품 준비중"];
        document.getElementById("cntShipping").textContent = counts["배송중"];
        document.getElementById("cntDelivered").textContent = counts["배송완료"];
    } catch (e) {
        console.error("주문 상태 불러오기 실패:", e);
    }
}

// 📌 주문 목록 (페이징)
let currentPage = 0;
const pageSize = 10;

async function loadOrders(page = 0, months = 12) {
    const container = document.getElementById("orderList");
    const pagination = document.getElementById("pagination");
    container.innerHTML = "<p>불러오는 중...</p>";

    try {
        const today = new Date();
        const fromDate = new Date();
        fromDate.setMonth(today.getMonth() - months);

        const fromDateStr = fromDate.toISOString().split("T")[0];
        const res = await fetch(`/api/orders/my?fromDate=${fromDateStr}&page=${page}&size=${pageSize}`, {
            credentials: "include"
        });
        if (!res.ok) throw new Error("주문 목록 조회 실패");

        const data = await res.json();
        const orders = data.data.content || [];
        const totalPages = data.data.totalPages || 1;

        if (orders.length === 0) {
            container.innerHTML = `<div class="empty">주문 내역이 없습니다.</div>`;
            pagination.innerHTML = "";
            return;
        }

        let html = `
          <table>
            <thead>
              <tr>
                <th>주문번호</th>
                <th>주문일자</th>
                <th>주문상태</th>
                <th>총 금액</th>
                <th>상세보기</th>
              </tr>
            </thead>
            <tbody>
        `;
        orders.forEach(order => {
            const date = new Date(order.orderDate).toLocaleString("ko-KR");
            const totalPrice = new Intl.NumberFormat("ko-KR").format(order.totalPrice);
            html += `
                <tr>
                  <td>${order.orderId}</td>
                  <td>${date}</td>
                  <td>${order.orderStatus}</td>
                  <td>${totalPrice}원</td>
                  <td><a href="/orders/detail?orderId=${order.orderId}" class="btn-detail">상세보기</a></td>
                </tr>
            `;
        });
        html += "</tbody></table>";
        container.innerHTML = html;

        // 페이지네이션
        let pageHtml = `
            <button onclick="changePage(${page-1},${months})" ${page <= 0 ? "disabled" : ""}>이전</button>
        `;
        for (let i = 0; i < totalPages; i++) {
            pageHtml += `
              <button onclick="changePage(${i},${months})" class="${i === page ? "active" : ""}">
                ${i+1}
              </button>
            `;
        }
        pageHtml += `
            <button onclick="changePage(${page+1},${months})" ${page >= totalPages-1 ? "disabled" : ""}>다음</button>
        `;
        pagination.innerHTML = pageHtml;

        currentPage = page;
    } catch (err) {
        console.error(err);
        container.innerHTML = `<div class="empty">주문 내역을 불러오는 중 오류가 발생했습니다.</div>`;
    }
}

function changePage(page, months = 12) {
    loadOrders(page, months);
}