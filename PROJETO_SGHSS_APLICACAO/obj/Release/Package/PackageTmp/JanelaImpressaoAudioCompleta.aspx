<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="JanelaImpressaoAudioCompleta.aspx.cs" Inherits="SISTEMASLUASAUDE_APLICACAO.JanelaImpressaoAudioCompleta" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Janela de Impressão</title>

    <link rel="stylesheet" href="StylesCSS/EstilosGeraisJanelasExames.css" />

</head>
<body class="custom-font" style="background-color: lightslategray; overflow-y: hidden;">
    <form id="frmImpressao" runat="server">
        <header>
            <div class="container" style="width: 100%;">
                <div class="box" style="width: 20%;">
                </div>
                <div class="box" style="width: 60%;">
                    <b>Imprimir laudo:</b>
                </div>
                <div class="box" style="width: 20%;">
                </div>
            </div>
        </header>
        <br />
        <br />
        <br />
        <br />
        <br />
        <div>
            <asp:RadioButtonList ID="rbTipoLaudo" runat="server" Style="margin-top: -3px; text-align: center;" RepeatDirection="Horizontal" ForeColor="Black" BackColor="White" Font-Bold="true" Font-Size="12" Width="467px">
                <asp:ListItem Text="Sintético" Value="0"></asp:ListItem>
                <asp:ListItem Text="Analítico" Value="1"></asp:ListItem>
            </asp:RadioButtonList>
        </div>
        <br />
        <br />
        <br />
        <div>
            <asp:Button ID="btnImprimir" runat="server" Text="Confirmar" Font-Size="20px" Font-Bold="true" Width="100%" Height="50px" OnClick="btnImprimir_Click" CssClass="cantos-arredondados-hand" />
        </div>
    </form>

    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="ScriptsJS/keepSessionAlive.js"></script>

</body>
</html>
