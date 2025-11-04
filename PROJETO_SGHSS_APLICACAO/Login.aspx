<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="PROJETO_SGHSS.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Página Inicial</title>
    
    <link rel="stylesheet" href="StylesCSS/EstilosGeraisJanelaLoginSeg.css"/>

</head>
<body class="custom-font">
    <form id="frmLogin" runat="server" style="width: 100%; height: 100%">
        <header>
            <b>SGHSS</b>
        </header>
        <div id="geral" runat="server" style="margin-top: 40px; margin-bottom: 50px; width: 100%; height: 100%; align-items: stretch; vertical-align: central">
            <asp:Table ID="tbLogin" runat="server" Width="100%" CssClass="alinhamento-text-center">
                <asp:TableHeaderRow>
                    <asp:TableHeaderCell Width="50%">
                        <br /><br />
                        <asp:Image ID="imgUsuarios" runat="server" ImageUrl="~/Images/usuariosMaior.png" Width="20%" />
                        <asp:Label ID="lblModulo" runat="server" ForeColor="MidnightBlue" Font-Size="Larger">Sistema Geral</asp:Label><br /><br />
                    </asp:TableHeaderCell>
                    <asp:TableHeaderCell Width="50%"></asp:TableHeaderCell>
                </asp:TableHeaderRow>
                <asp:TableRow>
                    <asp:TableCell Width="50%" CssClass="painel-Botoes">
                        <br />
                        <asp:TextBox ID="txtUsuario" runat="server" TextMode="SingleLine" placeholder="Digite o usuário..." Width="50%" Height="50px" Font-Bold="true" Font-Size="14" CssClass="cantos-arredondados-alinhamento"></asp:TextBox>
                        <br />
                        <br />
                        <asp:TextBox ID="txtSetor" runat="server" TextMode="SingleLine" placeholder="Digite o setor..." Width="50%" Height="50px" Font-Bold="true" Font-Size="14" CssClass="cantos-arredondados-alinhamento"></asp:TextBox>
                        <br />
                        <br />
                        <asp:TextBox ID="txtSenha" runat="server" TextMode="Password" placeholder="Digite a senha..." Width="50%" Height="50px" Font-Bold="true" Font-Size="14" CssClass="cantos-arredondados-alinhamento"></asp:TextBox>
                        <br />
                        <br />
                        <asp:Button ID="btnEntrar" runat="server" Text="Entrar" Width="35%" Height="50px" ForeColor="#363636" Font-Bold="true" Font-Size="14" CssClass="btn-Entrar" OnClick="btnEntrar_Click" />
                        <br />
                        <br />
                    </asp:TableCell>
                    <asp:TableCell Width="50%" CssClass="painel-Botoes">
                        <asp:Image ID="imgLoading" runat="server" ImageUrl="~/Images/loadingModern.gif" Width="70%" />
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
