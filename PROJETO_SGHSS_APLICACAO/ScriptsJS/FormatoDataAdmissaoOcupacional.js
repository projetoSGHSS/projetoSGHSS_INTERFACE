$(document).ready(function () {
    $('#txtAdmissao').change(function () {
        var dataAdmissaoStr = $('#txtAdmissao').val();
        var dataAdmissao = moment(dataAdmissaoStr, 'DD/MM/YYYY', true); // Parse a data com Moment.js

        if (!dataAdmissao.isValid()) {
            alert('Por favor, insira uma data de admissão válida no formato dd/MM/aaaa.');
            $('#txtAdmissao').val(''); // Limpa o campo após o alert
        }
    });
});