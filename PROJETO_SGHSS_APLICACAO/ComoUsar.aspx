<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ComoUsar.aspx.cs" Inherits="PROJETO_SGHSS.ComoUsar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Como Usar?</title>

    <link rel="stylesheet" href="StylesCSS/EstilosGeraisJanelaComoUsar.css" />

</head>
<body class="custom-font" style="background-color: lightslategray;">
    <form id="frmLogin" runat="server" style="width: 100%; height: 100%">
        <header>
            <b>SGHSS: Como Usar?</b>
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
                            <div class="tab-button" style="width: 15%; border-style: solid; border-width: 1px; font-size: medium;" onclick="showTab('tabApres')">Apresentação</div>
                            <div class="tab-button" style="width: 15%; border-style: solid; border-width: 1px; font-size: medium;" onclick="showTab('tabCont')">Conteúdos</div>
                            <div class="tab-button" style="width: 15%; border-style: solid; border-width: 1px; font-size: medium;" onclick="showTab('tabManual')">Manual Geral</div>
                            <div class="tab-button" style="width: 15%; border-style: solid; border-width: 1px; font-size: medium;" onclick="showTab('tabReq')">Especificações</div>
                            <div class="tab-button" style="width: 15%; border-style: solid; border-width: 1px; font-size: medium;" onclick="showTab('tabSobreAutor')">Sobre a Autora</div>
                            <%--conteúdos das abas--%>
                            <div id="tabApres" class="tab-content active-tab" style="width: 100%; text-align: left; background-image: url('./Images/ '); background-position: right center; background-repeat: no-repeat; background-size: 20%;">
                                <br />
                                <div>
                                    
                                </div>
                            </div>
                            <div id="tabCont" class="tab-content" style="width: 100%;">
                                
                            </div>
                            <div id="tabManual" class="tab-content" style="width: 100%;">
                                
                            </div>
                            <div id="tabReq" class="tab-content" style="width: 100%; text-align: left; background-image: url('./Images/notebookRequisitos.png'); background-position: right top; background-repeat: no-repeat; background-size: auto;">
                                
                            </div>
                            <div id="tabSobreAutor" class="tab-content" style="width: 100%;">
                                <br />
                                
                                <br />
                                <div id="linkPortfolio">
                                    <asp:Button ID="btnLinkPortfolio" runat="server" Text="Acesse aqui o portfólio!" Width="35%" Height="50px" ForeColor="#363636" Font-Bold="true" Font-Size="14" CssClass="cantos-arredondados-alinhamento-imagem" OnClick="btnAcessarPortfolio_Click" />
                                </div>
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
