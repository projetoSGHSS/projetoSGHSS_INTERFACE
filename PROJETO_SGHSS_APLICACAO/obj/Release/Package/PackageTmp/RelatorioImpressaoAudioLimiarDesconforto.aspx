<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RelatorioImpressaoAudioLimiarDesconforto.aspx.cs" Inherits="SISTEMASLUASAUDE_APLICACAO.RelatorioImpressaoAudioLimiarDesconforto" Debug="true" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Relatório de Impressão</title>
    
    <link rel="stylesheet" href="StylesCSS/JanelasImpressao.css"/>

</head>
<body class="custom-font" style="background-color: white; height: 100%" >
    <form id="frmLogin" runat="server" style="width: 100%; height: 100%">
        <header>
            <b>Relatório de Impressão: Audiometria Limiar Desconforto</b>
        </header>
        <div id="geral" runat="server" style="margin-top: 40px; margin-bottom: 50px; width: 100%; height: 100%; align-items: stretch; vertical-align: central">
            <asp:ScriptManager ID="smRelatorio" runat="server"></asp:ScriptManager>
            <rsweb:ReportViewer ID="rpvRelatorioImpressaoAudioLimiarDesconforto" runat="server" Width="100%" Height="570px" BackColor="White" AsyncRendering="false" ClientIDMode="AutoID" HighlightBackgroundColor="" InternalBorderColor="204, 204, 204" InternalBorderStyle="Solid" InternalBorderWidth="1px" LinkActiveColor="" LinkActiveHoverColor="" LinkDisabledColor="" PrimaryButtonBackgroundColor="" PrimaryButtonForegroundColor="" PrimaryButtonHoverBackgroundColor="" PrimaryButtonHoverForegroundColor="" SecondaryButtonBackgroundColor="" SecondaryButtonForegroundColor="" SecondaryButtonHoverBackgroundColor="" SecondaryButtonHoverForegroundColor="" SplitterBackColor="" ToolbarDividerColor="" ToolbarForegroundColor="" ToolbarForegroundDisabledColor="" ToolbarHoverBackgroundColor="" ToolbarHoverForegroundColor="" ToolBarItemBorderColor="" ToolBarItemBorderStyle="Solid" ToolBarItemBorderWidth="1px" ToolBarItemHoverBackColor="" ToolBarItemPressedBorderColor="51, 102, 153" ToolBarItemPressedBorderStyle="Solid" ToolBarItemPressedBorderWidth="1px" ToolBarItemPressedHoverBackColor="153, 187, 226">
                <LocalReport ReportPath="RelatoriosImpressao\rltAudioLimiarDesconforto.rdlc">
                </LocalReport>
            </rsweb:ReportViewer>
        </div>
    </form>

    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="ScriptsJS/keepSessionAlive.js"></script>

</body>
</html>
