function showTab(tabId) {
    // Esconder todas as abas
    var tabs = document.querySelectorAll('.tab-content');
    tabs.forEach(function (tab) {
        tab.classList.remove('active-tab');
    });

    // Mostrar a aba selecionada
    var selectedTab = document.getElementById(tabId);
    selectedTab.classList.add('active-tab');
}