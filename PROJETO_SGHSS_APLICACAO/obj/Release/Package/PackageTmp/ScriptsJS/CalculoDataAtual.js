$(document).ready(function () {
    // Obtém a data atual
    var dataAtual = new Date();

    // Formata a data no formato desejado (dd/MM/yyyy)
    var dia = String(dataAtual.getDate()).padStart(2, '0');
    var mes = String(dataAtual.getMonth() + 1).padStart(2, '0'); // Adiciona 1 ao mês, pois os meses são baseados em zero
    var ano = dataAtual.getFullYear();

    var dataFormatada = dia + '/' + mes + '/' + ano;

    // Exibe a data atual no TextBox
    $('#txtDataHoje').val(dataFormatada);
});