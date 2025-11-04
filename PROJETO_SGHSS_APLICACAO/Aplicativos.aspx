<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Aplicativos.aspx.cs" Inherits="PROJETO_SGHSS.Aplicativos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Aplicativos</title>

    <link rel="stylesheet" href="StylesCSS/EstilosGeraisJanelaAplicativos.css" />

</head>
<body class="custom-font" style="background-color: lightslategray;">
    <form id="form1" runat="server" style="width: 100%; height: 100%">
        <header>
            <div class="container" style="width: 100%; display: flex;">
                <div class="box" style="flex: 1;">
                    <b>Menu Inicial</b>
                </div>
                <div class="box" style="flex: 1;"></div>
                <div class="box" style="flex: 1;">
                    <asp:Button ID="encerraSistema" runat="server" OnClick="btnEncerraSistema" ToolTip="Sair do sistema" CssClass="btn-Encerra-Sistema" />
                </div>
            </div>
        </header>
        <div id="geral" runat="server" style="margin-top: 50px; margin-bottom: 50px; width: 100%; height: 100%; align-items: center; vertical-align: central">
            <br />
            <div class="container" style="text-align: right; width: 100%;">
                <asp:Label ID="lblBoasVindas" runat="server" ForeColor="White" Font-Bold="true" Font-Size="Large"></asp:Label>
            </div>
            <br />
            <asp:Table ID="tbAplicativosPrimeiro" runat="server" Width="100%" CssClass="painel-Botoes">
                <asp:TableHeaderRow Width="100%">
                    <asp:TableHeaderCell Width="20%" Height="50px" BackColor="#cccccc" Font-Bold="true" Font-Size="18" BorderColor="#191970" BorderStyle="Solid" BorderWidth="2px" CssClass="cantos-arredondados-alinhamento-center">Prontuário</asp:TableHeaderCell>
                    <asp:TableHeaderCell Width="20%" Height="50px" BackColor="#cccccc" Font-Bold="true" Font-Size="18" BorderColor="#191970" BorderStyle="Solid" BorderWidth="2px" CssClass="cantos-arredondados-alinhamento-center">Receituário</asp:TableHeaderCell>
                    <asp:TableHeaderCell Width="20%" Height="50px" BackColor="#cccccc" Font-Bold="true" Font-Size="18" BorderColor="#191970" BorderStyle="Solid" BorderWidth="2px" CssClass="cantos-arredondados-alinhamento-center">Exames</asp:TableHeaderCell>
                    <asp:TableHeaderCell Width="20%" Height="50px" BackColor="#cccccc" Font-Bold="true" Font-Size="18" BorderColor="#191970" BorderStyle="Solid" BorderWidth="2px" CssClass="cantos-arredondados-alinhamento-center">Conservação Auditiva</asp:TableHeaderCell>
                    <asp:TableHeaderCell Width="20%" Height="50px"></asp:TableHeaderCell>
                </asp:TableHeaderRow>
                <asp:TableRow Width="100%">
                    <asp:TableCell Width="20%" Height="150px">
                        <asp:Button ID="btnProntuario" runat="server" Width="100%" Height="100%" OnClick="btnProntuario_Click" CssClass="btn-Prontuario" />
                    </asp:TableCell>
                    <asp:TableCell Width="20%" Height="150px">
                        <asp:Button ID="btnReceituario" runat="server" Width="100%" Height="100%" OnClick="btnReceituario_Click" CssClass="btn-Receituario" Enabled="false" ToolTip="Botão Inativo" />
                    </asp:TableCell>
                    <asp:TableCell Width="20%" Height="150px">
                        <asp:Button ID="btnExames" runat="server" Width="100%" Height="100%" OnClick="btnExames_Click" CssClass="btn-Exames" Enabled="false" ToolTip="Botão Inativo"/>
                    </asp:TableCell>
                    <asp:TableCell Width="20%" Height="150px">
                        <asp:Button ID="btnConservacaoAuditiva" runat="server" Width="100%" Height="100%" OnClick="btnConservacaoAuditiva_Click" CssClass="btn-Conservacao-Auditiva" Enabled="false" ToolTip="Botão Inativo" />
                    </asp:TableCell>
                    <asp:TableCell Width="20%" Height="150px">
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
            <br />
            <asp:Table ID="tbAplicativosSegundo" runat="server" Width="100%" CssClass="painel-Botoes">
                <asp:TableHeaderRow Width="100%">
                    <asp:TableHeaderCell Width="20%" Height="50px"></asp:TableHeaderCell>
                    <asp:TableHeaderCell Width="20%" Height="50px" BackColor="#cccccc" Font-Bold="true" Font-Size="18" BorderColor="#191970" BorderStyle="Solid" BorderWidth="2px" CssClass="cantos-arredondados-alinhamento-center">Agenda</asp:TableHeaderCell>
                    <asp:TableHeaderCell Width="20%" Height="50px" BackColor="#cccccc" Font-Bold="true" Font-Size="18" BorderColor="#191970" BorderStyle="Solid" BorderWidth="2px" CssClass="cantos-arredondados-alinhamento-center">Recepção</asp:TableHeaderCell>
                    <asp:TableHeaderCell Width="20%" Height="50px" BackColor="#cccccc" Font-Bold="true" Font-Size="18" BorderColor="#191970" BorderStyle="Solid" BorderWidth="2px" CssClass="cantos-arredondados-alinhamento-center">Faturamento</asp:TableHeaderCell>
                    <asp:TableHeaderCell Width="20%" Height="50px" BackColor="#cccccc" Font-Bold="true" Font-Size="18" BorderColor="#191970" BorderStyle="Solid" BorderWidth="2px" CssClass="cantos-arredondados-alinhamento-center">Estoque</asp:TableHeaderCell>
                </asp:TableHeaderRow>
                <asp:TableRow Width="100%">
                    <asp:TableCell Width="20%" Height="150px">  
                    </asp:TableCell>
                    <asp:TableCell Width="20%" Height="150px">
                        <asp:Button ID="btnAgenda" runat="server" Width="100%" Height="100%" OnClick="btnAgenda_Click" CssClass="btn-Agenda" Enabled="false" ToolTip="Botão Inativo" />
                    </asp:TableCell>
                    <asp:TableCell Width="20%" Height="150px">
                        <asp:Button ID="Recepcao" runat="server" Width="100%" Height="100%" OnClick="btnRecepcao_Click" CssClass="btn-Recepcao" Enabled="false" ToolTip="Botão Inativo" />
                    </asp:TableCell>
                    <asp:TableCell Width="20%" Height="150px">
                        <asp:Button ID="btnFaturamento" runat="server" Width="100%" Height="100%" OnClick="btnFaturamento_Click" CssClass="btn-Faturamento" Enabled="false" ToolTip="Botão Inativo" />
                    </asp:TableCell>
                    <asp:TableCell Width="20%" Height="150px">
                        <asp:Button ID="btnEstoque" runat="server" Width="100%" Height="100%" OnClick="btnEstoque_Click" CssClass="btn-Estoque" Enabled="false" ToolTip="Botão Inativo" />
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </div>
        <footer>
            <b>Sistema de Gestão Hospitalar e de Serviços de Saúde - SGHSS. Todos os direitos reservados. 2025.</b>
        </footer>
    </form>

</body>
</html>
