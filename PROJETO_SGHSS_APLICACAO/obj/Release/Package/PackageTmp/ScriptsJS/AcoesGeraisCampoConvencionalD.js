// Função para desabilitar o menu de contexto em cima do elemento do gráfico
function disableRightClickOnChart(event) {
    event.preventDefault();
}

// Adicionar evento de clique com o botão direito do mouse no elemento do gráfico
window.onload = function () {
    var chartElementOD = document.getElementById("chartCampoConvenOD"); // ID do primeiro gráfico
    var chartElementOE = document.getElementById("chartCampoConvenOE"); // ID do segundo gráfico

    if (chartElementOD) {
        chartElementOD.oncontextmenu = disableRightClickOnChart;
    }

    if (chartElementOE) {
        chartElementOE.oncontextmenu = disableRightClickOnChart;
    }
};