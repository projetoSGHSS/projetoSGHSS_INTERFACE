// Salva a aba ativa no localStorage e no HiddenField
function salvarAbaAtiva(tabId) {
    localStorage.setItem('abaAtiva', tabId);
    document.getElementById('<%= hfActiveTab.ClientID %>').value = tabId;
}

// Recupera a aba ativa ao carregar a página
function restaurarAbaAtiva() {
    var abaAtiva = document.getElementById('<%= hfActiveTab.ClientID %>').value || localStorage.getItem('abaAtiva');
    if (abaAtiva) {
        $('.tab-pane').removeClass('active show'); // Remove classes das abas
        $('#' + abaAtiva).addClass('active show'); // Ativa a aba salva
    }
}

$(document).ready(function () {
    restaurarAbaAtiva();

    $('.nav-tabs a').on('click', function () {
        var tabId = $(this).attr('href').substring(1);
        salvarAbaAtiva(tabId);
    });
});
