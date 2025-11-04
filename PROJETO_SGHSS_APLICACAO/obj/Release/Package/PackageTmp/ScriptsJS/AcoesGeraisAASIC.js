// Função para desabilitar o menu de contexto em cima do elemento do gráfico
function disableRightClickOnChart(event) {
    event.preventDefault();
}

// Adicionar evento de clique com o botão direito do mouse no elemento do gráfico
window.onload = function () {
    var chartElementAASI = document.getElementById("chartAudioEmCampo"); // ID do primeiro gráfico

    if (chartElementAASI) {
        chartElementAASI.oncontextmenu = disableRightClickOnChart;
    }
};