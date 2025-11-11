<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProntuarioClinico.aspx.cs" Inherits="PROJETO_SGHSS.ProntuarioClinico" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Prontuário Clínico</title>

    <link rel="stylesheet" href="StylesCSS/EstilosGeraisJanelaCadastroUsuario.css" />

</head>
<body class="custom-font" style="background-color: lightslategray;">
    <form id="frmLogin" runat="server" style="width: 100%; height: 100%">
        <header>
            <b>SGHSS: Prontuário Clínico</b>
        </header>
        <div id="geral" runat="server" style="margin-top: 40px; margin-bottom: 50px; width: 100%; height: 100%; align-items: stretch; vertical-align: central">
            <asp:Table ID="tbComoUsar" runat="server" Width="100%" CssClass="alinhamento-text-center">
                <asp:TableHeaderRow>
                    <asp:TableHeaderCell Width="100%">
                        <asp:Image ID="imgUsuarios" runat="server" ImageUrl="~/Images/usuariosMaior.png" Width="10%" />
                    </asp:TableHeaderCell>
                </asp:TableHeaderRow>
                <asp:TableHeaderRow>
                    <asp:TableHeaderCell Width="100%">
                        <div style="width: 100%;">
                            <%--abas--%>
                            
                            <div class="tab-button" style="width: 95%; border-style: solid; border-width: 1px; font-size: large;" onclick="showTab('tabCadastroUsuario')">Cadastro de Usuário</div>
                            
                            <%--conteúdos das abas--%>
                            
                            <div id="tabCadastrousuario" class="tab-content active-tab" style="width: 100%;">
                                <asp:Button ID="btnFinalizarCadastro" runat="server" Text="Finalizar o cadastro" Width="35%" Height="50px" ForeColor="#363636" Font-Bold="true" Font-Size="14" CssClass="cantos-arredondados-alinhamento-imagem" OnClick="btnFinalizarCadastro_Click" />
                            </div>
                            
                        </div>
                    </asp:TableHeaderCell>
                </asp:TableHeaderRow>
            </asp:Table>
        </div>
        <footer>
            <b>Sistema de Gestão Hospitalar e de Serviços de Saúde - SGHSS. Todos os direitos reservados. 2025.</b>
        </footer>
    </form>

    <script src="ScriptsJS/AcoesAbas.js"></script>

</body>
</html>
