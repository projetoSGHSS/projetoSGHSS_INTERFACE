<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CadastrarUsuario.aspx.cs" Inherits="PROJETO_SGHSS.CadastrarUsuario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Cadastro de Usuário</title>

    <link rel="stylesheet" href="StylesCSS/EstilosGeraisJanelaCadastroUsuario.css" />

</head>
<body class="custom-font" style="background-color: lightslategray;">
    <form id="frmLogin" runat="server" style="width: 100%; height: 100%">
        <header>
            <b>SGHSS: Cadastro de Usuário</b>
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
                            
                            <div class="tab-button" style="width: 75%; border-style: solid; border-width: 1px; font-size: large;" onclick="showTab('tabCadastroUsuario')">Cadastro de Usuário</div>
                            
                            <%--conteúdos das abas--%>
                            
                            <div id="tabCadastroUsuario" class="tab-content active-tab" style="width: 100%; text-align: left">
                                <br/ />
                                <br/ />
                                <div id="tabCadastroUsuarioSeg" style="margin-left: 180px;">
                                <asp:Label ID="lblUsuario" runat="server">Nome do usuário:</asp:Label><br />
                                <asp:TextBox ID="txtNomeUsuario" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Solid" BorderWidth="1" ForeColor="Black" Font-Bold="true" Font-Size="12" Width="78%" Height="38px" CssClass="cantos-arredondados-alinhamento-left "></asp:TextBox><br /><br />
                                <asp:Label ID="lblProfissional" runat="server">Profissional ou setor:</asp:Label><br />
                                <asp:DropDownList ID="ddlTipoProfissional" runat="server" Width="79%" Height="38px" BorderColor="Black" BorderStyle="Solid" BorderWidth="1" ForeColor="black" Font-Bold="true" Font-Size="14" ></asp:DropDownList><br /><br />
                                <asp:Label ID="lblMatriculaProfissional" runat="server">Matrícula do usuário:</asp:Label><br />
                                <asp:TextBox ID="txtMatriculaProfissional" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Solid" BorderWidth="1" ForeColor="Black" Font-Bold="true" Font-Size="12" Width="78%" Height="38px" CssClass="cantos-arredondados-alinhamento-left "></asp:TextBox><br /><br />
                                <asp:Label ID="lblSenhaProfissional" runat="server">Senha do usuário:</asp:Label><br />
                                <asp:TextBox ID="txtSenhaProfissional" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Solid" BorderWidth="1" ForeColor="Black" Font-Bold="true" Font-Size="12" Width="78%" Height="38px" CssClass="cantos-arredondados-alinhamento-left "></asp:TextBox><br /><br /><br /><br />
                                <asp:Button ID="btnFinalizarCadastro" runat="server" Text="Finalizar o cadastro" Width="35%" Height="50px" ForeColor="#363636" Font-Bold="true" Font-Size="14" CssClass="cantos-arredondados-alinhamento-imagem" OnClick="btnFinalizarCadastro_Click" />
                                </div>
                            </div>
                        </div>
                    </asp:TableHeaderCell>
                </asp:TableHeaderRow>
                <asp:TableRow >
                    <asp:TableCell Width="100%">
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table><br /><br />
            <div style="width: 100%;">
                <asp:GridView ID="dgvCadastroUsuario" runat="server" Width="100%" AutoGenerateColumns="true" CssClass="table table-striped" GridLines="Horizontal" CellPadding="5" OnRowCreated="dgvCadastroUsuario_RowCreated">
                    <%--<Columns>
                        <asp:BoundField DataField="Usuario" HeaderText="Nome do usuário" />
                        <asp:BoundField DataField="Profissional" HeaderText="Profissional cadastrado" />
                        <asp:BoundField DataField="Matricula" HeaderText="Matrícula do usuário" />
                        <asp:BoundField DataField="Senha" HeaderText="Senha do usuário" />
                    </Columns>--%>
                </asp:GridView>
            </div>
        </div>
        <footer>
            <b>Sistema de Gestão Hospitalar e de Serviços de Saúde - SGHSS. Todos os direitos reservados. 2025.</b>
        </footer>
    </form>

    <script src="ScriptsJS/AcoesAbas.js"></script>

</body>
</html>
