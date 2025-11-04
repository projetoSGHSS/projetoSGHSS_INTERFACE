$(document).ready(function () {
    $('#txtDataNasc').change(function () {
        var dataNascimentoStr = $('#txtDataNasc').val();
        var dataNascimento = moment(dataNascimentoStr, 'DD/MM/YYYY', true); // Parse a data com Moment.js

        if (dataNascimento.isValid()) {
            var hoje = moment();
            var anos = hoje.diff(dataNascimento, 'years'); // Diferença em anos
            dataNascimento.add(anos, 'years'); // Avança o ponteiro de data em anos

            var meses = hoje.diff(dataNascimento, 'months'); // Diferença em meses
            dataNascimento.add(meses, 'months'); // Avança o ponteiro de data em meses

            var dias = hoje.diff(dataNascimento, 'days'); // Diferença em dias

            $('#txtIdadePaciente').val(anos + ' ano (s), ' + meses + ' mês (es), ' + dias + ' dia (s)');
        } else {
            alert('Por favor, insira uma data de nascimento válida no formato dd/MM/aaaa.');
            $('#txtDataNasc').val('');
            $('#txtIdadePaciente').val('');
        }
    });
});