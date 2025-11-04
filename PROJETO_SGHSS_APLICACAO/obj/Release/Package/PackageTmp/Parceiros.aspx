<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Parceiros.aspx.cs" Inherits="SISTEMASLUASAUDE_APLICACAO.Parceiros" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Nossos Parceiros</title>
    
    <link rel="stylesheet" href="StylesCSS/EstilosGeraisJanelaLoginSeg.css"/>

</head>
<body class="custom-font">
    <form id="frmLogin" runat="server" style="width: 100%; height: 100%">
        <header>
            <b>Nossos Parceiros</b>
        </header>
        <div id="geral" runat="server" style="margin-top: 40px; margin-bottom: 50px; width: 100%; height: 100%; align-items: stretch; vertical-align: central">
            <asp:Table ID="tbParceiros" runat="server" Width="100%" CssClass="alinhamento-text-center">
                <asp:TableHeaderRow>
                    <asp:TableHeaderCell Width="50%">
                        <br />
                        <br />
                        <br />
                        <br />
                    </asp:TableHeaderCell>
                    <asp:TableHeaderCell Width="50%">
                        <br />
                        <br />
                        <br />
                        <br />
                    </asp:TableHeaderCell>
                </asp:TableHeaderRow>
                <asp:TableRow>
                    <asp:TableCell Width="50%" CssClass="painel-Botoes">
                        <br />
                        <br />
                        <asp:Button ID="btnParceiroCEMEL" runat="server" Width="70%" Height="100px" ToolTip="Acesse o site!" OnClick="btnParceiroCEMEL_Click" CssClass="btn-CEMEL"/>
                        <br />
                        <br />
                    </asp:TableCell>
                    <asp:TableCell Width="50%" CssClass="painel-Botoes">
                        <br />
                        <br />
                        <asp:Button ID="btnParceiroAGBetim" runat="server" Text="Em breve, mais um cliente!" Width="70%" Height="100px" ForeColor="MidnightBlue" Font-Size="Larger" CssClass="btn-AGBetim" OnClick="btnParceiroAGBetim_Click" />
                        <br />
                        <br />
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell Width="50%" CssClass="painel-Botoes">
                        <br />
                        <br />
                        <asp:Button ID="btnParceiroCEFernandaAmorim" runat="server" Text="Em breve, mais um cliente!" Width="70%" Height="100px" ForeColor="MidnightBlue" Font-Size="Larger" CssClass="btn-CEFernandaAmorim" OnClick="btnParceiroCEFernandaAmorim_Click" />
                        <br />
                        <br />
                    </asp:TableCell>
                    <asp:TableCell Width="50%" CssClass="painel-Botoes">
                        <br />
                        <br />
                        <br />
                        <br />
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </div>
        <footer>
            <b>Sistemas Lua de Gerenciamento EIRELI. CNPJ: 34.648.108/0001-07. Todos os direitos reservados. 2024. <a href="https://portfoliodivulgacao.my.canva.site/portfolioinicial" style="color: yellow; text-decoration: none;">Sobre o desenvolvedor. Contato</a></b>
        </footer>
    </form>

    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="ScriptsJS/keepSessionAlive.js"></script>

</body>
</html>
