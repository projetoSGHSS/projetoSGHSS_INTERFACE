<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CadastroInicial.aspx.cs" Inherits="PROJETO_SGHSS.CadastroInicial" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Cadastro Inicial</title>

    <link rel="stylesheet" href="StylesCSS/EstilosGeraisJanelaCadastroInicial.css" />

</head>
<body class="custom-font" style="background-color: lightslategray;">
    <form id="form1" runat="server" style="width: 100%; height: 100%">
        <header>
            <div class="container" style="width: 100%; display: flex;">
                <div class="box" style="flex: 1;">
                    <b>Cadastro Inicial</b>
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
            <asp:Panel ID="pnlFundoGeral" runat="server" CssClass="painel-Botoes"><br /><br />
                <asp:Table ID="tdDadosPaciente" runat="server" Width="100%">
                    <asp:TableHeaderRow Width="100%">
                        <asp:TableHeaderCell Width="100%" Height="50px" BackColor="#cccccc" Font-Bold="true" Font-Size="18" BorderColor="#191970" BorderStyle="Solid" BorderWidth="2px" CssClass="cantos-arredondados-alinhamento-center">Dados do Paciente</asp:TableHeaderCell>
                    </asp:TableHeaderRow>
                </asp:Table>
                <asp:Table ID="tbDadosPacientePrimeiraParte" runat="server" Width="100%">
                    <asp:TableHeaderRow Width="100%">
                        <asp:TableHeaderCell Text="Nome do Paciente:" Width="20%" Height="25px" BackColor="#cccccc" Font-Bold="true" Font-Size="14" BorderColor="#cccccc" BorderStyle="Solid" BorderWidth="1"></asp:TableHeaderCell>
                        <asp:TableHeaderCell Width="60%" Height="25px" BorderColor="#cccccc" BorderStyle="Solid" BorderWidth="1">
                            <asp:TextBox ID="txtNomePaciente" runat="server" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1" ForeColor="Black" Font-Bold="true" Font-Size="12" Width="99.3%" Height="25px" CssClass="cantos-arredondados-alinhamento"></asp:TextBox>
                        </asp:TableHeaderCell>
                        <asp:TableHeaderCell Text="D. N.:" Width="10%" Height="25px" BackColor="#cccccc" Font-Bold="true" Font-Size="14" BorderColor="#cccccc" BorderStyle="Solid" BorderWidth="1"></asp:TableHeaderCell>
                        <asp:TableHeaderCell Width="10%" Height="25px" BorderColor="#cccccc" BorderStyle="Solid" BorderWidth="1">
                            <asp:TextBox ID="txtDataNasc" runat="server" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1" ForeColor="Black" Font-Bold="true" Font-Size="12" Width="96%" Height="25px" ClientIDMode="Static" ToolTip="No formato dd/mm/aaaa" CssClass="cantos-arredondados-alinhamento"></asp:TextBox>
                        </asp:TableHeaderCell>
                    </asp:TableHeaderRow>
                </asp:Table>
                <asp:Table ID="tbDadosPacienteNomeSocial" runat="server" Width="100%">
                    <asp:TableHeaderRow Width="100%">
                        <asp:TableHeaderCell Text="Nome Social:" Width="10%" Height="25px" BackColor="#cccccc" Font-Bold="true" Font-Size="14" BorderColor="#cccccc" BorderStyle="Solid" BorderWidth="1"></asp:TableHeaderCell>
                        <asp:TableHeaderCell Width="40%" Height="25px" BorderColor="#cccccc" BorderStyle="Solid" BorderWidth="1">
                            <asp:TextBox ID="txtNomeSocial" runat="server" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1" ForeColor="Black" Font-Bold="true" Font-Size="12" Width="99%" Height="25px" CssClass="cantos-arredondados-alinhamento"></asp:TextBox>
                        </asp:TableHeaderCell>
                        <asp:TableHeaderCell Text="Idade:" Width="10%" Height="25px" BackColor="#cccccc" Font-Bold="true" Font-Size="14" BorderColor="#cccccc" BorderStyle="Solid" BorderWidth="1"></asp:TableHeaderCell>
                        <asp:TableHeaderCell Width="20%" Height="25px" BorderColor="#cccccc" BorderStyle="Solid" BorderWidth="1">
                            <asp:TextBox ID="txtIdade" runat="server" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1" ForeColor="Black" Font-Bold="true" Font-Size="12" Width="98%" Height="25px" ToolTip="Digite a D.N. para calcular a idade." ClientIDMode="Static" CssClass="cantos-arredondados-alinhamento"></asp:TextBox>
                        </asp:TableHeaderCell>
                    </asp:TableHeaderRow>
                </asp:Table>
                <asp:Table ID="tbDadosPacienteSegundaParte" runat="server" Width="100%">
                    <asp:TableHeaderRow Width="100%">
                        <asp:TableHeaderCell Text="Data:" Width="10%" Height="25px" BackColor="#cccccc" Font-Bold="true" Font-Size="14" BorderColor="#cccccc" BorderStyle="Solid" BorderWidth="1"></asp:TableHeaderCell>
                        <asp:TableHeaderCell Width="10%" Height="25px" BorderColor="#cccccc" BorderStyle="Solid" BorderWidth="1">
                            <asp:TextBox ID="txtDataHoje" runat="server" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1" ForeColor="Black" Font-Bold="true" Font-Size="12" Width="95%" Height="25px" CssClass="cantos-arredondados-alinhamento"></asp:TextBox>
                        </asp:TableHeaderCell>
                        <asp:TableHeaderCell Text="Documento:" Width="15%" Height="25px" BackColor="#cccccc" Font-Bold="true" Font-Size="14" BorderColor="#cccccc" BorderStyle="Solid" BorderWidth="1"></asp:TableHeaderCell>
                        <asp:TableHeaderCell Width="15%" Height="25px" BorderColor="#cccccc" BorderStyle="Solid" BorderWidth="1">
                            <asp:TextBox ID="txtDocumento" runat="server" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1" ForeColor="Black" Font-Bold="true" Font-Size="12" Width="97%" Height="25px" CssClass="cantos-arredondados-alinhamento"></asp:TextBox>
                        </asp:TableHeaderCell>
                        <asp:TableHeaderCell Text="Inspeção M. A. E.:" Width="10%" Height="25px" BackColor="#cccccc" Font-Bold="true" Font-Size="14" BorderColor="#cccccc" BorderStyle="Solid" BorderWidth="1"></asp:TableHeaderCell>
                        <asp:TableHeaderCell Width="15%" Height="25px" BorderColor="#cccccc" BorderStyle="Solid" BorderWidth="1">
                            <asp:TextBox ID="txtInspeMAE" runat="server" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1" ForeColor="Black" Font-Bold="true" Font-Size="12" Width="96%" Height="25px" CssClass="cantos-arredondados-alinhamento"></asp:TextBox>
                        </asp:TableHeaderCell>
                    </asp:TableHeaderRow>
                </asp:Table>
                <asp:Table ID="tbDadosPacienteTerceiraParte" runat="server" Width="100%">
                    <asp:TableHeaderRow Width="100%">
                        <asp:TableHeaderCell Text="Queixa (s) Clínica (s):" Width="20%" Height="25px" BackColor="#cccccc" Font-Bold="true" Font-Size="14" BorderColor="#cccccc" BorderStyle="Solid" BorderWidth="1"></asp:TableHeaderCell>
                        <asp:TableHeaderCell Width="80%" Height="25px" BorderColor="#cccccc" BorderStyle="Solid" BorderWidth="1">
                            <asp:TextBox ID="txtQueixasClinicas" runat="server" TextMode="MultiLine" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1" ForeColor="Black" Font-Bold="true" Font-Size="12" Width="99.5%" Height="22px" CssClass="cantos-arredondados-alinhamento"></asp:TextBox>
                        </asp:TableHeaderCell>
                    </asp:TableHeaderRow>
                </asp:Table>
                <br />
                <asp:Table ID="tbBotaoVai" runat="server" Width="100%">
                    <asp:TableHeaderRow Width="100%">
                        <asp:TableHeaderCell Width="20%"></asp:TableHeaderCell>
                        <asp:TableHeaderCell Width="20%" Height="50px"></asp:TableHeaderCell>
                        <asp:TableHeaderCell Width="20%" Height="50px"></asp:TableHeaderCell>
                        <asp:TableHeaderCell Width="20%" Height="50px"></asp:TableHeaderCell>
                        <asp:TableHeaderCell Width="20%" Height="50px"></asp:TableHeaderCell>
                    </asp:TableHeaderRow>
                    <asp:TableRow Width="100%">
                        <asp:TableCell Width="20%" Height="150px">
                        </asp:TableCell>
                        <asp:TableCell Width="20%" Height="150px">
                        </asp:TableCell>
                        <asp:TableCell Width="20%" Height="150px">
                            <asp:Button ID="btnVai" runat="server" Width="100%" Height="100%" OnClick="btnVai_Click" CssClass="btn-Caracol" ToolTip="Vai!" />
                        </asp:TableCell>
                        <asp:TableCell Width="20%" Height="150px">
                        </asp:TableCell>
                        <asp:TableCell Width="20%" Height="150px">
                        </asp:TableCell>
                    </asp:TableRow>
                </asp:Table><br /><br />
                </asp:Panel>
        </div>
        <footer>
            <b>Sistema de Gestão Hospitalar e de Serviços de Saúde - SGHSS. Todos os direitos reservados. 2025.</b>
        </footer>
    </form>

    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.1/moment.min.js"></script>
    <%--Para o cálculo da idade do paciente--%>
    <script type="text/javascript" src="ScriptsJS/CalculoIdadePaciente.js"></script>
    <%--Para a exibição da data atual--%>
    <script type="text/javascript" src="ScriptsJS/CalculoDataAtual.js"></script>
</body>
</html>
