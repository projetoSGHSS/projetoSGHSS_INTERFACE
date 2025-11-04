<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="PROJETO_SGHSS.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Página Inicial</title>

    <link rel="stylesheet" href="StylesCSS/EstilosGeraisJanelaLogin.css" />

</head>
<body class="custom-font">
    <form id="frmLogin" runat="server" style="width: 100%; height: 100%">
        <header>
            <b>SGHSS</b>
        </header>
        <div id="geral" runat="server" style="margin-top: 50px; margin-bottom: 50px; width: 100%; height: 100%; align-items: stretch; vertical-align: central">
            <asp:Table ID="tbLogin" runat="server" Width="100%" CssClass="alinhamento-text-center">
                <asp:TableHeaderRow>
                    <asp:TableHeaderCell Width="50%">
                        <br />
                        <br />
                        <asp:Image ID="imgUsuarios" runat="server" ImageUrl="~/Images/usuariosMaior.png" Width="20%" />
                        <asp:Label ID="lblModulo" runat="server" ForeColor="MidnightBlue" Font-Size="Larger">Sistema Geral</asp:Label><br />
                        <br />
                    </asp:TableHeaderCell>
                    <asp:TableHeaderCell Width="50%"></asp:TableHeaderCell>
                </asp:TableHeaderRow>
                <asp:TableRow>
                    <asp:TableCell Width="50%" CssClass="painel-Botoes">
                        <br />
                        <br />
                        <br />
                        <asp:RadioButtonList ID="rblProfissionais" runat="server" Width="100%" RepeatDirection="Horizontal" RepeatLayout="Table" TextAlign="Right" ForeColor="MidnightBlue" Font-Bold="true" BackColor="#87bdd8" BorderColor="#4682b4" BorderStyle="Solid" BorderWidth="2" CssClass="cantos-arredondados-alinhamento">
                            <asp:ListItem Text="Profissionais" Value="0"></asp:ListItem>
                            <asp:ListItem Text="Administrativo" Value="1"></asp:ListItem>
                            <asp:ListItem Text="Recepção" Value="2"></asp:ListItem>
                        </asp:RadioButtonList>
                        <br />
                        <br />
                        <asp:Button ID="btnEntrar" runat="server" Text="Acessar!" Width="80%" Height="50px" ForeColor="#1C1C1C" Font-Bold="true" Font-Size="14" CssClass="btn-Entrar" OnClick="btnEntrar_Click" />
                        <br />
                        <br />
                        <asp:Button ID="btnInstrucoes" runat="server" Text="Como usar?" Width="55%" Height="50px" ForeColor="MidnightBlue" Font-Bold="true" Font-Size="14" CssClass="btn-Como-Usar" OnClick="btnInstrucoes_Click" />
                        <label></label>
                        <asp:Button ID="btnLimpar" runat="server" Text="Reiniciar" Width="25%" Height="50px" ForeColor="#800000" Font-Bold="true" Font-Size="14" CssClass="btn-Limpar" OnClick="btnLimpar_Click" />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                    </asp:TableCell>
                    <asp:TableCell Width="50%" CssClass="painel-Botoes">
                        <asp:Image ID="imgLoading" runat="server" ImageUrl="~/Images/loadingModern.gif" Width="70%" />

                        <br />
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell Width="50%"></asp:TableCell>
                    <asp:TableCell Width="50%"></asp:TableCell>
                </asp:TableRow>
            </asp:Table>

        </div>
        <div id="parceiros" style="width: 100%; text-align: center; margin-top: -156px;">
            <asp:Button ID="btnParceiros" runat="server" ToolTip="Conheça nossos parceiros!" Width="10%" Height="100px" ForeColor="MidnightBlue" Font-Bold="true" Font-Size="10" CssClass="btn-Parceiros" OnClick="btnParceiros_Click" />
        </div>
        <footer>
            <b>Sistema de Gestão Hospitalar e de Serviços de Saúde - SGHSS. Todos os direitos reservados. 2025.</b>
        </footer>
    </form>
</body>
</html>
