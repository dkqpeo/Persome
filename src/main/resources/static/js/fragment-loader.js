async function includeFragment(targetId, url) {
    try {
        const res = await fetch(url, { credentials: "include" });
        if (!res.ok) throw new Error("Fragment load failed");
        const html = await res.text();
        document.getElementById(targetId).innerHTML = html;
    } catch (e) {
        console.error("Fragment include error:", e);
    }
}

document.addEventListener("DOMContentLoaded", () => {
    includeFragment("hero", "/fragments/hero.html");
    includeFragment("kpi", "/fragments/kpi.html");
    includeFragment("sidebar", "/fragments/sidebar.html");
});
