(function () {
    var sessionTimeout = 230; // Tempo em minutos (ajuste para menos que o timeout do web.config)
    var keepAliveInterval = (sessionTimeout - 5) * 60 * 1000; // Chama 5 min antes de expirar

    function keepSessionAlive() {
        $.ajax({
            type: "POST",
            url: "/SessionHelper.asmx/KeepSessionAlive", // URL do WebMethod
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (response) {
                console.log("Sessão renovada:", response.d);
            },
            error: function (xhr, status, error) {
                console.log("Erro ao renovar sessão:", error);
            }
        });
    }

    // Chama a função periodicamente
    setInterval(keepSessionAlive, keepAliveInterval);
})();
