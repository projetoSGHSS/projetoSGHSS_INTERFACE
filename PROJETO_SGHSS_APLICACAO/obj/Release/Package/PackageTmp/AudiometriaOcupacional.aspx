<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AudiometriaOcupacional.aspx.cs" Inherits="SISTEMASLUASAUDE_APLICACAO.AudiometriaOcupacional" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Audiometria Ocupacional</title>

    <link rel="stylesheet" href="StylesCSS/AbasPaginasJanelasAudioImp.css" />
    <link rel="stylesheet" href="StylesCSS/EstilosGeraisJanelasExames.css" />

</head>
<body class="custom-font" style="background-color: lightslategray;">
    <form id="frmAudiometriaClinica" runat="server" style="width: 100%;">
        <header>
            <div class="container" style="width: 100%;">
                <div class="box" style="width: 33%;">
                    <asp:Button ID="voltaTelaAplicativos" runat="server" OnClick="btnVoltaTelaAplicativos" ToolTip="Volta à tela de Aplicativos" CssClass="btn-Volta-Tela-Aplicativos" />
                    <asp:Button ID="voltaTelaCadastro" runat="server" OnClick="btnVoltaTelaCadastro" ToolTip="Volta à tela de Cadastro" CssClass="btn-Volta-Tela-Cadastro" />
                    <asp:Button ID="voltaTelaExames" runat="server" OnClick="btnVoltaTelaExames" ToolTip="Volta à tela de Exames" CssClass="btn-Volta-Tela-Exames" />
                </div>
                <div class="box" style="width: 34%;">
                    <b>Audiometria Ocupacional</b>
                </div>
                <div class="box" style="width: 33%;">
                    <asp:Button ID="encerraSistema" runat="server" OnClick="btnEncerraSistema" ToolTip="Sair do sistema" CssClass="btn-Encerra-Sistema" />
                </div>
            </div>
        </header>
        <div id="geral" runat="server" style="margin-top: 50px; margin-bottom: 50px; width: 100%; height: 100%; align-items: stretch; vertical-align: central">
            <asp:Label ID="lblBoasVindas" runat="server" ForeColor="White" Font-Bold="true" Font-Size="Large"></asp:Label>
            <div class="container" style="text-align: center; width: 100%;">
                <div class="box">
                    <br />
                    <div style="width: 95%; text-align: center; vertical-align: bottom;">
                        <asp:Table ID="tdDadosPaciente" runat="server" Width="100%">
                            <asp:TableHeaderRow Width="100%">
                                <asp:TableHeaderCell Width="100%" HorizontalAlign="Justify" Height="50px" BackColor="#cccccc" Font-Bold="true" Font-Size="18" BorderColor="#191970" BorderStyle="Solid" BorderWidth="2px" CssClass="cantos-arredondados-alinhamento-left">
                                    <asp:Label ID="lblNomePaciente" runat="server" Font-Bold="true" Font-Size="12" Width="48%"></asp:Label>
                                    <label>&nbsp;&nbsp;</label>
                                    <asp:Label ID="lblNomeSocialPaciente" runat="server" Font-Bold="true" Font-Size="12" Width="48%"></asp:Label>
                                    <br />
                                    <asp:TextBox ID="txtNomePaciente" runat="server" Font-Size="12" Width="48%" Height="30px" BorderColor="#191970" BorderStyle="Solid" BorderWidth="1"></asp:TextBox>
                                    <label>&nbsp;</label>
                                    <asp:TextBox ID="txtNomeSocialPaciente" runat="server" Font-Size="12" Width="48%" Height="30px" BorderColor="#191970" BorderStyle="Solid" BorderWidth="1"></asp:TextBox>
                                    <br />
                                    <asp:Label ID="lblIdadePaciente" runat="server" Font-Bold="true" Font-Size="12" Width="25.8%"></asp:Label>
                                    <label>&nbsp;&nbsp;</label>
                                    <asp:Label ID="lblDataNasc" runat="server" Font-Bold="true" Font-Size="12" Width="20%"></asp:Label>
                                    <label>&nbsp;&nbsp;</label>
                                    <asp:Label ID="lblDocumento" runat="server" Font-Bold="true" Font-Size="12" Width="25.5%"></asp:Label>
                                    <label>&nbsp;&nbsp;</label>
                                    <asp:Label ID="lblDataHoje" runat="server" Font-Bold="true" Font-Size="12" Width="20%"></asp:Label>
                                    <br />
                                    <asp:TextBox ID="txtIdadePaciente" runat="server" Font-Size="12" Width="25.8%" Height="30px" BorderColor="#191970" BorderStyle="Solid" BorderWidth="1" ToolTip="Digite a D.N. para calcular a idade." ClientIDMode="Static"></asp:TextBox>
                                    <label>&nbsp;</label>
                                    <asp:TextBox ID="txtDataNasc" runat="server" Font-Size="12" Width="20%" Height="30px" BorderColor="#191970" BorderStyle="Solid" BorderWidth="1" ClientIDMode="Static" ToolTip="No formato dd/mm/aaaa"></asp:TextBox>
                                    <label>&nbsp;</label>
                                    <asp:TextBox ID="txtDocumento" runat="server" Font-Size="12" Width="25.5%" Height="30px" BorderColor="#191970" BorderStyle="Solid" BorderWidth="1"></asp:TextBox>
                                    <label>&nbsp;</label>
                                    <asp:TextBox ID="txtDataAtual" runat="server" Font-Size="12" Width="20%" Height="30px" BorderColor="#191970" BorderStyle="Solid" BorderWidth="1"></asp:TextBox>
                                    <br />
                                    <asp:Label ID="lblInspeMAE" runat="server" Font-Bold="true" Font-Size="12" Width="48%"></asp:Label>
                                    <label>&nbsp;&nbsp;</label>
                                    <asp:Label ID="lblQueixasClinicasCabecalho" runat="server" Font-Bold="true" Font-Size="12" Width="48%"></asp:Label>
                                    <br />
                                    <asp:TextBox ID="txtInspeMAE" runat="server" Font-Size="12" Width="48%" Height="30px" BorderColor="#191970" BorderStyle="Solid" BorderWidth="1"></asp:TextBox>
                                    <label>&nbsp;</label>
                                    <asp:TextBox ID="txtQueixasClinicasCabecalho" runat="server" Font-Size="12" Width="48%" Height="30px" BorderColor="#191970" BorderStyle="Solid" BorderWidth="1"></asp:TextBox>
                                    <br /><br />
                                </asp:TableHeaderCell>
                            </asp:TableHeaderRow>
                        </asp:Table>
                    </div>
                    <div style="width: 5%; height: 5%; text-align: center; vertical-align: bottom; float: right; margin-top: -200px;">
                        <asp:Button ID="btnEditarDadosPaciente" runat="server" Width="98%" OnClick="btnEditarDadosPaciente_Click" ToolTip="Editar dados deste paciente" CssClass="btn-Edicao" /><br /><br />
                        <asp:Button ID="btnSalvarDadosPaciente" runat="server" Width="98%" OnClick="btnSalvarDadosPaciente_Click" ToolTip="Salvar dados editados deste paciente" CssClass="btn-Salvar" />
                    </div>
                    <br />
                    <asp:Table ID="tbAudiometriaClinica" runat="server" Width="100%" BorderColor="#cccccc" BorderWidth="2px" BorderStyle="Solid">
                        <asp:TableHeaderRow Width="100%">
                            <asp:TableHeaderCell BackColor="#ff0000" Font-Bold="true" Font-Size="12" ForeColor="White" Width="20%" Height="35px">Orelha Direita</asp:TableHeaderCell>
                            <asp:TableHeaderCell BackColor="#cccccc" Font-Bold="true" Font-Size="18" Width="60%" Height="35px">Audiometria Tonal</asp:TableHeaderCell>
                            <asp:TableHeaderCell BackColor="#0033cc" Font-Bold="true" Font-Size="12" ForeColor="White" Width="20%" Height="35px">Orelha Esquerda</asp:TableHeaderCell>
                        </asp:TableHeaderRow>
                        <asp:TableRow>
                            <asp:TableCell Width="20%" Height="100%" Style="vertical-align: bottom">
                                <div id="dadosAudioOD" runat="server">
                                </div>
                            </asp:TableCell>
                            <asp:TableCell Width="60%" Height="100%">
                                <div class="container" style="text-align: center;">
                                    <div class="box" id="audiogramaOD" runat="server" style="border-color: red; border-style: solid; border-width: 1px;">
                                        <asp:Chart ID="chartAudioOD" runat="server" Height="416px" Width="467px" BackColor="MistyRose" BorderColor="Red" BorderStyle="Solid" BorderWidth="1">
                                            <Series>
                                                <asp:Series ChartArea="ChartArea4" Name="Series1">
                                                </asp:Series>
                                            </Series>
                                            <ChartAreas>
                                                <asp:ChartArea Name="ChartArea4">
                                                    <AxisY Crossing="Min" Interval="10" IsReversed="True" Maximum="120" Minimum="-10" TextOrientation="Rotated270" Title="Gráfico ISO/64 frequência (Hz) por decibel nível de audição (dBNA)">
                                                    </AxisY>
                                                    <AxisX Maximum="15" Minimum="1" TextOrientation="Horizontal" Title="      125            250             500     750  1k     1,5k  2k        3k   4k       6k   8k" TitleAlignment="Near">
                                                        <MajorTickMark Enabled="False" />
                                                        <LabelStyle Enabled="False" />
                                                    </AxisX>
                                                </asp:ChartArea>
                                            </ChartAreas>
                                        </asp:Chart>
                                        <asp:RadioButtonList ID="rbBananaFalaODClinica" runat="server" Style="margin-top: -3px;" RepeatDirection="Horizontal" ForeColor="Red" BackColor="MistyRose" Font-Bold="true" Font-Size="12" Width="467px" AutoPostBack="true">
                                            <asp:ListItem Text="Exibe a Banana da Fala" Value="0"></asp:ListItem>
                                            <asp:ListItem Text="Oculta a Banana da Fala" Value="1"></asp:ListItem>
                                        </asp:RadioButtonList>
                                    </div>
                                    <div class="box" id="audiogramaOE" runat="server" style="border-color: blue; border-style: solid; border-width: 1px;">
                                        <asp:Chart ID="chartAudioOE" runat="server" Height="416px" Width="467px" BackColor="AliceBlue" BorderColor="Blue" BorderStyle="Solid" BorderWidth="1">
                                            <Series>
                                                <asp:Series ChartArea="ChartArea5" Name="Series1">
                                                </asp:Series>
                                            </Series>
                                            <ChartAreas>
                                                <asp:ChartArea Name="ChartArea5">
                                                    <AxisY Crossing="Min" Interval="10" IsReversed="True" Maximum="120" Minimum="-10" TextOrientation="Rotated270" Title="Gráfico ISO/64 frequência (Hz) por decibel nível de audição (dBNA)">
                                                    </AxisY>
                                                    <AxisX Maximum="15" Minimum="1" TextOrientation="Horizontal" Title="      125            250             500     750  1k     1,5k  2k        3k   4k       6k   8k" TitleAlignment="Near">
                                                        <MajorTickMark Enabled="False" />
                                                        <LabelStyle Enabled="False" />
                                                    </AxisX>
                                                </asp:ChartArea>
                                            </ChartAreas>
                                        </asp:Chart>
                                        <asp:RadioButtonList ID="rbBananaFalaOEClinica" runat="server" Style="margin-top: -3px;" RepeatDirection="Horizontal" ForeColor="Blue" BackColor="AliceBlue" Font-Bold="true" Font-Size="12" Width="467px" AutoPostBack="true">
                                            <asp:ListItem Text="Exibe a Banana da Fala" Value="0"></asp:ListItem>
                                            <asp:ListItem Text="Oculta a Banana da Fala" Value="1"></asp:ListItem>
                                        </asp:RadioButtonList>
                                    </div>
                                </div>
                            </asp:TableCell>
                            <asp:TableCell Width="20%" Height="100%" Style="vertical-align: bottom">
                                <div id="dadosAudioOE" runat="server">
                                </div>
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                    <br />
                    <div style="width: 100%;">
                        <%--abas--%>
                        <div class="tab-button" style="width: 15%; border-style: solid; border-width: 1px; font-size: medium;" onclick="showTab('tabAdicionais')"><b>Dados Adicionais</b></div>
                        <div class="tab-button" style="width: 15%; border-style: solid; border-width: 1px; font-size: medium;" onclick="showTab('tabAnamnese')"><b>Anamnese</b></div>
                        <div class="tab-button" style="width: 15%; border-style: solid; border-width: 1px; font-size: medium;" onclick="showTab('tabPlotar')"><b>Plotar Simbologia</b></div>
                        <div class="tab-button" style="width: 15%; border-style: solid; border-width: 1px; font-size: medium;" onclick="showTab('tabWeber')"><b>Weber e Símbolos</b></div>
                        <div class="tab-button" style="width: 15%; border-style: solid; border-width: 1px; font-size: medium;" onclick="showTab('tabImpressao')"><b>Impressão</b></div>
                        <%--conteúdos das abas--%>
                        <div id="tabAdicionais" class="tab-content active-tab" style="width: 100%; height: 850px;">
                            <asp:Table ID="tbAdicionais" runat="server" Width="100%" BorderColor="#cccccc" BorderWidth="2px" BorderStyle="Solid">
                                <asp:TableHeaderRow Width="100%">
                                    <asp:TableHeaderCell BackColor="#cccccc" Font-Bold="true" Font-Size="12" ForeColor="White" Width="15%" Height="35px"></asp:TableHeaderCell>
                                    <asp:TableHeaderCell BackColor="#cccccc" Font-Bold="true" Font-Size="18" Width="70%" Height="35px">Dados Adicionais</asp:TableHeaderCell>
                                    <asp:TableHeaderCell BackColor="#cccccc" Font-Bold="true" Font-Size="12" ForeColor="White" Width="15%" Height="35px"></asp:TableHeaderCell>
                                </asp:TableHeaderRow>
                                <asp:TableRow>
                                    <asp:TableCell Width="15%" Height="100%" Style="vertical-align: bottom">
                                        <div id="Div1" runat="server">
                                        </div>
                                    </asp:TableCell>
                                    <asp:TableCell Width="70%" Height="100%">
                                        <asp:Table ID="tbDadosAdicionais" runat="server" Width="100%" BorderColor="#cccccc" BorderWidth="2px" BorderStyle="Solid">
                                            <asp:TableHeaderRow Width="100%">
                                                <asp:TableHeaderCell Font-Bold="true" Font-Size="12" BackColor="#cccccc" ForeColor="Black" Width="20%" Height="35px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">Exame:</asp:TableHeaderCell>
                                                <asp:TableHeaderCell Font-Bold="true" Font-Size="12" ForeColor="Black" Width="20%" Height="35px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                    <asp:DropDownList ID="ddlExame" runat="server" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1" ForeColor="Black" Font-Bold="true" Font-Size="12" Width="99%" Height="38px" CssClass="cantos-arredondados-alinhamento-left"></asp:DropDownList>
                                                </asp:TableHeaderCell>
                                                <asp:TableHeaderCell Font-Bold="true" Font-Size="12" BackColor="#cccccc" ForeColor="Black" Width="20%" Height="35px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">Admissão:</asp:TableHeaderCell>
                                                <asp:TableHeaderCell Font-Bold="true" Font-Size="12" ForeColor="Black" Width="20%" Height="35px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                    <asp:TextBox ID="txtAdmissao" runat="server" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1" ForeColor="Black" Font-Bold="true" Font-Size="12" Width="98%" Height="35px" ClientIDMode="Static" ToolTip="No formato dd/mm/aaaa" CssClass="cantos-arredondados-alinhamento-left"></asp:TextBox>
                                                </asp:TableHeaderCell>
                                            </asp:TableHeaderRow>
                                            <asp:TableHeaderRow Width="100%">
                                                <asp:TableHeaderCell Font-Bold="true" Font-Size="12" BackColor="#cccccc" ForeColor="Black" Width="20%" Height="35px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">Setor:</asp:TableHeaderCell>
                                                <asp:TableHeaderCell Font-Bold="true" Font-Size="12" ForeColor="Black" Width="20%" Height="35px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                    <asp:TextBox ID="txtSetor" runat="server" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1" ForeColor="Black" Font-Bold="true" Font-Size="12" Width="97%" Height="35px" CssClass="cantos-arredondados-alinhamento-left"></asp:TextBox>
                                                </asp:TableHeaderCell>
                                                <asp:TableHeaderCell Font-Bold="true" Font-Size="12" BackColor="#cccccc" ForeColor="Black" Width="20%" Height="35px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">Função:</asp:TableHeaderCell>
                                                <asp:TableHeaderCell Font-Bold="true" Font-Size="12" ForeColor="Black" Width="20%" Height="35px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                    <asp:TextBox ID="txtFuncao" runat="server" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1" ForeColor="Black" Font-Bold="true" Font-Size="12" Width="98%" Height="35px" CssClass="cantos-arredondados-alinhamento-left"></asp:TextBox>
                                                </asp:TableHeaderCell>
                                            </asp:TableHeaderRow>
                                            <asp:TableHeaderRow Width="100%">
                                                <asp:TableHeaderCell Font-Bold="true" Font-Size="12" BackColor="#cccccc" ForeColor="Black" Width="25%" Height="35px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">Tempo na função:</asp:TableHeaderCell>
                                                <asp:TableHeaderCell Font-Bold="true" Font-Size="12" ForeColor="Black" Width="25%" Height="35px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                    <asp:TextBox ID="txtTempoFuncao" runat="server" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1" ForeColor="Black" Font-Bold="true" Font-Size="12" Width="97%" Height="35px" CssClass="cantos-arredondados-alinhamento-left"></asp:TextBox>
                                                </asp:TableHeaderCell>
                                                <asp:TableHeaderCell Font-Bold="true" Font-Size="12" BackColor="#cccccc" ForeColor="Black" Width="25%" Height="35px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">Repouso auditivo:</asp:TableHeaderCell>
                                                <asp:TableHeaderCell Font-Bold="true" Font-Size="12" ForeColor="Black" Width="25%" Height="35px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                    <asp:TextBox ID="txtRepouso" runat="server" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1" ForeColor="Black" Font-Bold="true" Font-Size="12" Width="98%" Height="35px" CssClass="cantos-arredondados-alinhamento-left"></asp:TextBox>
                                                </asp:TableHeaderCell>
                                            </asp:TableHeaderRow>
                                            <asp:TableHeaderRow Width="100%">
                                                <asp:TableHeaderCell Font-Bold="true" Font-Size="12" BackColor="#cccccc" ForeColor="Black" Width="25%" Height="35px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">Empresa:</asp:TableHeaderCell>
                                                <asp:TableHeaderCell Font-Bold="true" Font-Size="12" ForeColor="Black" Width="25%" Height="35px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                    <asp:TextBox ID="txtEmpresa" runat="server" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1" ForeColor="Black" Font-Bold="true" Font-Size="12" Width="97%" Height="35px" CssClass="cantos-arredondados-alinhamento-left"></asp:TextBox>
                                                </asp:TableHeaderCell>
                                                <asp:TableHeaderCell Font-Bold="true" Font-Size="12" BackColor="#cccccc" ForeColor="Black" Width="25%" Height="35px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">Observação:</asp:TableHeaderCell>
                                                <asp:TableHeaderCell Font-Bold="true" Font-Size="12" BackColor="#cccccc" ForeColor="Black" Width="25%" Height="35px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                    <asp:TextBox ID="txtObsercacaoOcupacional" runat="server" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1" ForeColor="Black" Font-Bold="true" Font-Size="12" Width="98%" Height="35px" CssClass="cantos-arredondados-alinhamento-left"></asp:TextBox>
                                                </asp:TableHeaderCell>
                                            </asp:TableHeaderRow>
                                        </asp:Table>
                                    </asp:TableCell>
                                    <asp:TableCell Width="15%" Height="100%" Style="vertical-align: bottom">
                                        <div id="Div2" runat="server">
                                        </div>
                                    </asp:TableCell>
                                </asp:TableRow>
                            </asp:Table>
                        </div>
                        <div id="tabAnamnese" class="tab-content" style="width: 100%; height: 850px;">
                            <asp:Table ID="tbAnamnese" runat="server" Width="100%" BorderColor="#cccccc" BorderWidth="2px" BorderStyle="Solid">
                                <asp:TableHeaderRow Width="100%">
                                    <asp:TableHeaderCell BackColor="#cccccc" Font-Bold="true" Font-Size="12" ForeColor="White" Width="15%" Height="35px"></asp:TableHeaderCell>
                                    <asp:TableHeaderCell BackColor="#cccccc" Font-Bold="true" Font-Size="18" Width="70%" Height="35px">Anamnese</asp:TableHeaderCell>
                                    <asp:TableHeaderCell BackColor="#cccccc" Font-Bold="true" Font-Size="12" ForeColor="White" Width="15%" Height="35px"></asp:TableHeaderCell>
                                </asp:TableHeaderRow>
                                <asp:TableRow>
                                    <asp:TableCell Width="15%" Height="100%" Style="vertical-align: bottom">
                                        <div id="dvAnamneseD" runat="server">
                                        </div>
                                    </asp:TableCell>
                                    <asp:TableCell Width="70%" Height="100%">
                                        <asp:Table ID="tbAnamneseAdic" runat="server" Width="100%" BorderColor="#cccccc" BorderWidth="2px" BorderStyle="Solid">
                                            <asp:TableHeaderRow Width="100%">
                                                <asp:TableHeaderCell Font-Bold="true" Font-Size="12" BackColor="#cccccc" ForeColor="Black" Width="20%" Height="35px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">Inspeção do M.A.E.:</asp:TableHeaderCell>
                                                <asp:TableHeaderCell Font-Bold="true" Font-Size="12" ForeColor="Black" Width="20%" Height="35px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                    <asp:TextBox ID="txtInspecaoMAE" runat="server" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1" ForeColor="Black" Font-Bold="true" Font-Size="12" Width="98%" Height="35px" ReadOnly="true" ToolTip="Campo preenchido na tela de Cadastro Inicial." CssClass="cantos-arredondados-alinhamento-left"></asp:TextBox>
                                                </asp:TableHeaderCell>
                                                <asp:TableHeaderCell Font-Bold="true" Font-Size="12" BackColor="#cccccc" ForeColor="Black" Width="20%" Height="35px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">Queixas clínicas:</asp:TableHeaderCell>
                                                <asp:TableHeaderCell Font-Bold="true" Font-Size="12" ForeColor="Black" Width="20%" Height="35px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                    <asp:TextBox ID="txtQueixasClinicas" runat="server" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1" ForeColor="Black" Font-Bold="true" Font-Size="12" Width="98%" Height="35px" ReadOnly="true" ToolTip="Campo preenchido na tela de Cadastro Inicial." CssClass="cantos-arredondados-alinhamento-left"></asp:TextBox>
                                                </asp:TableHeaderCell>
                                            </asp:TableHeaderRow>
                                            <asp:TableHeaderRow Width="100%">
                                                <asp:TableHeaderCell Font-Bold="true" Font-Size="12" BackColor="#cccccc" ForeColor="Black" Width="20%" Height="35px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">Tempo exposição a ruídos:</asp:TableHeaderCell>
                                                <asp:TableHeaderCell Font-Bold="true" Font-Size="12" ForeColor="Black" Width="20%" Height="35px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                    <asp:TextBox ID="txtTempoExposicaoRuidos" runat="server" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1" ForeColor="Black" Font-Bold="true" Font-Size="12" Width="97%" Height="35px" CssClass="cantos-arredondados-alinhamento-left"></asp:TextBox>
                                                </asp:TableHeaderCell>
                                                <asp:TableHeaderCell Font-Bold="true" Font-Size="12" BackColor="#cccccc" ForeColor="Black" Width="20%" Height="35px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">Zumbido?</asp:TableHeaderCell>
                                                <asp:TableHeaderCell Font-Bold="true" Font-Size="12" ForeColor="Black" Width="20%" Height="35px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                    <asp:DropDownList ID="ddlZumbido" runat="server" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1" ForeColor="Black" Font-Bold="true" Font-Size="12" Width="99%" Height="38px" CssClass="cantos-arredondados-alinhamento-left"></asp:DropDownList>
                                                </asp:TableHeaderCell>
                                            </asp:TableHeaderRow>
                                            <asp:TableHeaderRow Width="100%">
                                                <asp:TableHeaderCell Font-Bold="true" Font-Size="12" BackColor="#cccccc" ForeColor="Black" Width="25%" Height="35px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">Otite?</asp:TableHeaderCell>
                                                <asp:TableHeaderCell Font-Bold="true" Font-Size="12" ForeColor="Black" Width="25%" Height="35px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                    <asp:DropDownList ID="ddlOtite" runat="server" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1" ForeColor="Black" Font-Bold="true" Font-Size="12" Width="99%" Height="38px" CssClass="cantos-arredondados-alinhamento-left"></asp:DropDownList>
                                                </asp:TableHeaderCell>
                                                <asp:TableHeaderCell Font-Bold="true" Font-Size="12" BackColor="#cccccc" ForeColor="Black" Width="25%" Height="35px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">Trauma acústico?</asp:TableHeaderCell>
                                                <asp:TableHeaderCell Font-Bold="true" Font-Size="12" ForeColor="Black" Width="25%" Height="35px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                    <asp:DropDownList ID="ddlTraumaAcustico" runat="server" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1" ForeColor="Black" Font-Bold="true" Font-Size="12" Width="99%" Height="38px" CssClass="cantos-arredondados-alinhamento-left"></asp:DropDownList>
                                                </asp:TableHeaderCell>
                                            </asp:TableHeaderRow>
                                            <asp:TableHeaderRow Width="100%">
                                                <asp:TableHeaderCell Font-Bold="true" Font-Size="12" BackColor="#cccccc" ForeColor="Black" Width="25%" Height="35px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">Perda auditiva na família?</asp:TableHeaderCell>
                                                <asp:TableHeaderCell Font-Bold="true" Font-Size="12" ForeColor="Black" Width="25%" Height="35px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                    <asp:DropDownList ID="ddlPAfamilia" runat="server" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1" ForeColor="Black" Font-Bold="true" Font-Size="12" Width="99%" Height="38px" CssClass="cantos-arredondados-alinhamento-left"></asp:DropDownList>
                                                </asp:TableHeaderCell>
                                                <asp:TableHeaderCell Font-Bold="true" Font-Size="12" BackColor="#cccccc" ForeColor="Black" Width="25%" Height="35px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">Uso de medicamentos?</asp:TableHeaderCell>
                                                <asp:TableHeaderCell Font-Bold="true" Font-Size="12" BackColor="#cccccc" ForeColor="Black" Width="25%" Height="35px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                    <asp:DropDownList ID="ddlUsoMedicamentos" runat="server" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1" ForeColor="Black" Font-Bold="true" Font-Size="12" Width="99%" Height="38px" CssClass="cantos-arredondados-alinhamento-left"></asp:DropDownList>
                                                </asp:TableHeaderCell>
                                            </asp:TableHeaderRow>
                                            <asp:TableHeaderRow Width="100%">
                                                <asp:TableHeaderCell Font-Bold="true" Font-Size="12" BackColor="#cccccc" ForeColor="Black" Width="25%" Height="35px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">Uso de EPI's?</asp:TableHeaderCell>
                                                <asp:TableHeaderCell Font-Bold="true" Font-Size="12" ForeColor="Black" Width="25%" Height="35px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                    <asp:DropDownList ID="ddlUsoEPI" runat="server" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1" ForeColor="Black" Font-Bold="true" Font-Size="12" Width="99%" Height="38px" CssClass="cantos-arredondados-alinhamento-left"></asp:DropDownList>
                                                </asp:TableHeaderCell>
                                                <asp:TableHeaderCell Font-Bold="true" Font-Size="12" BackColor="#cccccc" ForeColor="Black" Width="25%" Height="35px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">Ruído fora do trabalho?</asp:TableHeaderCell>
                                                <asp:TableHeaderCell Font-Bold="true" Font-Size="12" BackColor="#cccccc" ForeColor="Black" Width="25%" Height="35px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                    <asp:DropDownList ID="ddlRuidoForaTrabalho" runat="server" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1" ForeColor="Black" Font-Bold="true" Font-Size="12" Width="99%" Height="38px" CssClass="cantos-arredondados-alinhamento-left"></asp:DropDownList>
                                                </asp:TableHeaderCell>
                                            </asp:TableHeaderRow>
                                        </asp:Table>
                                    </asp:TableCell>
                                    <asp:TableCell Width="15%" Height="100%" Style="vertical-align: bottom">
                                        <div id="dvAnamneseE" runat="server">
                                        </div>
                                    </asp:TableCell>
                                </asp:TableRow>
                            </asp:Table>
                        </div>
                        <div id="tabPlotar" class="tab-content" style="width: 100%; height: 850px;">
                            <asp:Table ID="tbAudiometriaClinicaPlotagem" runat="server" Width="100%" BorderColor="#cccccc" BorderWidth="2px" BorderStyle="Solid">
                                <asp:TableHeaderRow Width="100%">
                                    <asp:TableHeaderCell BackColor="#ff0000" Font-Bold="true" Font-Size="12" ForeColor="White" Width="20%" Height="35px">Orelha Direita</asp:TableHeaderCell>
                                    <asp:TableHeaderCell BackColor="#cccccc" Font-Bold="true" Font-Size="18" Width="60%" Height="35px">Plotar Simbologia</asp:TableHeaderCell>
                                    <asp:TableHeaderCell BackColor="#0033cc" Font-Bold="true" Font-Size="12" ForeColor="White" Width="20%" Height="35px">Orelha Esquerda</asp:TableHeaderCell>
                                </asp:TableHeaderRow>
                                <asp:TableRow>
                                    <asp:TableCell Width="20%" Height="100%" Style="vertical-align: bottom">
                                        <div id="dadosAudioODPlotagem" runat="server">
                                        </div>
                                    </asp:TableCell>
                                    <asp:TableCell Width="60%" Height="100%">
                                        <div class="container" style="text-align: center;">
                                            <div class="box">
                                                <asp:Panel ID="pnlGridDadosOD" runat="server" Width="467px" BackColor="MistyRose" BorderColor="Red" BorderStyle="Solid" BorderWidth="1">
                                                    <asp:Table ID="tbDadosOD" runat="server" Width="100%">
                                                        <asp:TableHeaderRow Width="100%" ForeColor="Red" Font-Bold="true" Font-Size="14">
                                                            <asp:TableHeaderCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">Hz</asp:TableHeaderCell>
                                                            <asp:TableHeaderCell Width="15%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">VA</asp:TableHeaderCell>
                                                            <asp:TableHeaderCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">M</asp:TableHeaderCell>
                                                            <asp:TableHeaderCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">L</asp:TableHeaderCell>
                                                            <asp:TableHeaderCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">A</asp:TableHeaderCell>
                                                            <asp:TableHeaderCell Width="15%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">VO</asp:TableHeaderCell>
                                                            <asp:TableHeaderCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">M</asp:TableHeaderCell>
                                                            <asp:TableHeaderCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">L</asp:TableHeaderCell>
                                                            <asp:TableHeaderCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">A</asp:TableHeaderCell>
                                                        </asp:TableHeaderRow>
                                                        <asp:TableRow Width="100%" ForeColor="Red" Font-Bold="true" Font-Size="14" Enabled="false">
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">125</asp:TableCell>
                                                            <asp:TableCell Width="15%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:DropDownList ID="va125odComboBox" runat="server" Width="100%" Height="30px" BorderColor="Red" BackColor="#cccccc" BorderStyle="Solid" BorderWidth="1" ForeColor="Red" Font-Bold="true" Font-Size="14" CssClass="cantos-arredondados-alinhamento"></asp:DropDownList>
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:CheckBox ID="masc125vaODCheckBox" runat="server" />
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1"></asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:CheckBox ID="aus125vaODCheckBox" runat="server" />
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="15%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1"></asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1"></asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1"></asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1"></asp:TableCell>
                                                        </asp:TableRow>
                                                        <asp:TableRow Width="100%" ForeColor="Red" Font-Bold="true" Font-Size="14">
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">250</asp:TableCell>
                                                            <asp:TableCell Width="15%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:DropDownList ID="va250odComboBox" runat="server" Width="100%" Height="30px" BorderColor="Red" BorderStyle="Solid" BorderWidth="1" ForeColor="Red" Font-Bold="true" Font-Size="14" CssClass="cantos-arredondados-alinhamento"></asp:DropDownList>
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:CheckBox ID="masc250vaODCheckBox" runat="server" />
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:CheckBox ID="liga125_250vaODCheckBox" runat="server" Enabled="false" />
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:CheckBox ID="aus250vaODCheckBox" runat="server" />
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="15%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:DropDownList ID="vo250odComboBox" runat="server" Width="100%" Height="30px" BorderColor="Red" BorderStyle="Solid" BorderWidth="1" ForeColor="Red" Font-Bold="true" Font-Size="14" CssClass="cantos-arredondados-alinhamento"></asp:DropDownList>
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:CheckBox ID="masc250vo_ODCheckBox" runat="server" />
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1"></asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:CheckBox ID="aus250vo_ODCheckBox" runat="server" />
                                                            </asp:TableCell>
                                                        </asp:TableRow>
                                                        <asp:TableRow Width="100%" ForeColor="Red" Font-Bold="true" Font-Size="14">
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">500</asp:TableCell>
                                                            <asp:TableCell Width="15%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:DropDownList ID="va500odComboBox" runat="server" Width="100%" Height="30px" BorderColor="Red" BorderStyle="Solid" BorderWidth="1" ForeColor="Red" Font-Bold="true" Font-Size="14" CssClass="cantos-arredondados-alinhamento"></asp:DropDownList>
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:CheckBox ID="masc500vaODCheckBox" runat="server" />
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1" ToolTip="Liga as simbologias de 250Hz e 500Hz na VA.">
                                                                <asp:CheckBox ID="liga250_500vaODCheckBox" runat="server" ToolTip="Liga as simbologias de 250Hz e 500Hz na VA." />
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:CheckBox ID="aus500vaODCheckBox" runat="server" />
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="15%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:DropDownList ID="vo500odComboBox" runat="server" Width="100%" Height="30px" BorderColor="Red" BorderStyle="Solid" BorderWidth="1" ForeColor="Red" Font-Bold="true" Font-Size="14" CssClass="cantos-arredondados-alinhamento"></asp:DropDownList>
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:CheckBox ID="masc500vo_ODCheckBox" runat="server" />
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1" ToolTip="Liga as simbologias de 250Hz e 500Hz na VO.">
                                                                <asp:CheckBox ID="liga250_500vo_ODCheckBox" runat="server" ToolTip="Liga as simbologias de 250Hz e 500Hz na VO." />
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:CheckBox ID="aus500vo_ODCheckBox" runat="server" />
                                                            </asp:TableCell>
                                                        </asp:TableRow>
                                                        <asp:TableRow Width="100%" ForeColor="Red" Font-Bold="true" Font-Size="14" Enabled="false">
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">750</asp:TableCell>
                                                            <asp:TableCell Width="15%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:DropDownList ID="va750odComboBox" runat="server" Width="100%" Height="30px" BorderColor="Red" BackColor="#cccccc" BorderStyle="Solid" BorderWidth="1" ForeColor="Red" Font-Bold="true" Font-Size="14" CssClass="cantos-arredondados-alinhamento"></asp:DropDownList>
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:CheckBox ID="masc750vaODCheckBox" runat="server" />
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:CheckBox ID="liga500_750vaODCheckBox" runat="server" />
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:CheckBox ID="aus750vaODCheckBox" runat="server" />
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="15%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:DropDownList ID="vo750odComboBox" runat="server" Width="100%" Height="30px" BorderColor="Red" BackColor="#cccccc" BorderStyle="Solid" BorderWidth="1" ForeColor="Red" Font-Bold="true" Font-Size="14" CssClass="cantos-arredondados-alinhamento"></asp:DropDownList>
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:CheckBox ID="masc750vo_ODCheckBox" runat="server" />
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:CheckBox ID="liga500_750vo_ODCheckBox" runat="server" />
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:CheckBox ID="aus750vo_ODCheckBox" runat="server" />
                                                            </asp:TableCell>
                                                        </asp:TableRow>
                                                        <asp:TableRow Width="100%" ForeColor="Red" Font-Bold="true" Font-Size="14">
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">1k</asp:TableCell>
                                                            <asp:TableCell Width="15%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:DropDownList ID="va1kodComboBox" runat="server" Width="100%" Height="30px" BorderColor="Red" BorderStyle="Solid" BorderWidth="1" ForeColor="Red" Font-Bold="true" Font-Size="14" CssClass="cantos-arredondados-alinhamento"></asp:DropDownList>
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:CheckBox ID="masc1kvaODCheckBox" runat="server" />
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1" ToolTip="Liga as simbologias de 500Hz e 1kHz na VA.">
                                                                <asp:CheckBox ID="liga750_1kvaODCheckBox" runat="server" ToolTip="Liga as simbologias de 500Hz e 1kHz na VA." />
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:CheckBox ID="aus1kvaODCheckBox" runat="server" />
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="15%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:DropDownList ID="vo1kodComboBox" runat="server" Width="100%" Height="30px" BorderColor="Red" BorderStyle="Solid" BorderWidth="1" ForeColor="Red" Font-Bold="true" Font-Size="14" CssClass="cantos-arredondados-alinhamento"></asp:DropDownList>
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:CheckBox ID="masc1kvo_ODCheckBox" runat="server" />
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1" ToolTip="Liga as simbologias de 500Hz e 1kHz na VO.">
                                                                <asp:CheckBox ID="liga750_1kvo_ODCheckBox" runat="server" ToolTip="Liga as simbologias de 500Hz e 1kHz na VO." />
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:CheckBox ID="aus1kvo_ODCheckBox" runat="server" />
                                                            </asp:TableCell>
                                                        </asp:TableRow>
                                                        <asp:TableRow Width="100%" ForeColor="Red" Font-Bold="true" Font-Size="14" Enabled="false">
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">1,5k</asp:TableCell>
                                                            <asp:TableCell Width="15%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:DropDownList ID="va1e5kodComboBox" runat="server" Width="100%" Height="30px" BorderColor="Red" BackColor="#cccccc" BorderStyle="Solid" BorderWidth="1" ForeColor="Red" Font-Bold="true" Font-Size="14" CssClass="cantos-arredondados-alinhamento"></asp:DropDownList>
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:CheckBox ID="masc1_5kvaODCheckBox" runat="server" />
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:CheckBox ID="liga1k_1_5kvaODCheckBox" runat="server" />
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:CheckBox ID="aus1_5kvaODCheckBox" runat="server" />
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="15%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:DropDownList ID="vo1e5kodComboBox" runat="server" Width="100%" Height="30px" BorderColor="Red" BackColor="#cccccc" BorderStyle="Solid" BorderWidth="1" ForeColor="Red" Font-Bold="true" Font-Size="14" CssClass="cantos-arredondados-alinhamento"></asp:DropDownList>
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:CheckBox ID="masc1_5kvo_ODCheckBox" runat="server" />
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:CheckBox ID="liga1k_1_5kvo_ODCheckBox" runat="server" />
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:CheckBox ID="aus1_5kvo_ODCheckBox" runat="server" />
                                                            </asp:TableCell>
                                                        </asp:TableRow>
                                                        <asp:TableRow Width="100%" ForeColor="Red" Font-Bold="true" Font-Size="14">
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">2k</asp:TableCell>
                                                            <asp:TableCell Width="15%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:DropDownList ID="va2kodComboBox" runat="server" Width="100%" Height="30px" BorderColor="Red" BorderStyle="Solid" BorderWidth="1" ForeColor="Red" Font-Bold="true" Font-Size="14" CssClass="cantos-arredondados-alinhamento"></asp:DropDownList>
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:CheckBox ID="masc2kvaODCheckBox" runat="server" />
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1" ToolTip="Liga as simbologias de 1kHz e 2kHz na VA.">
                                                                <asp:CheckBox ID="liga1_5k_2kvaODCheckBox" runat="server" ToolTip="Liga as simbologias de 1kHz e 2kHz na VA." />
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:CheckBox ID="aus2kvaODCheckBox" runat="server" />
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="15%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:DropDownList ID="vo2kodComboBox" runat="server" Width="100%" Height="30px" BorderColor="Red" BorderStyle="Solid" BorderWidth="1" ForeColor="Red" Font-Bold="true" Font-Size="14" CssClass="cantos-arredondados-alinhamento"></asp:DropDownList>
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:CheckBox ID="masc2kvo_ODCheckBox" runat="server" />
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1" ToolTip="Liga as simbologias de 1kHz e 2kHz na VO.">
                                                                <asp:CheckBox ID="liga1_5k_2kvo_ODCheckBox" runat="server" ToolTip="Liga as simbologias de 1kHz e 2kHz na VO." />
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:CheckBox ID="aus2kvo_ODCheckBox" runat="server" />
                                                            </asp:TableCell>
                                                        </asp:TableRow>
                                                        <asp:TableRow Width="100%" ForeColor="Red" Font-Bold="true" Font-Size="14">
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">3k</asp:TableCell>
                                                            <asp:TableCell Width="15%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:DropDownList ID="va3kodComboBox" runat="server" Width="100%" Height="30px" BorderColor="Red" BorderStyle="Solid" BorderWidth="1" ForeColor="Red" Font-Bold="true" Font-Size="14" CssClass="cantos-arredondados-alinhamento"></asp:DropDownList>
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:CheckBox ID="masc3kvaODCheckBox" runat="server" />
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1" ToolTip="Liga as simbologias de 2kHz e 3kHz na VA.">
                                                                <asp:CheckBox ID="liga2k_3kvaODCheckBox" runat="server" ToolTip="Liga as simbologias de 2kHz e 3kHz na VA." />
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:CheckBox ID="aus3kvaODCheckBox" runat="server" />
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="15%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:DropDownList ID="vo3kodComboBox" runat="server" Width="100%" Height="30px" BorderColor="Red" BorderStyle="Solid" BorderWidth="1" ForeColor="Red" Font-Bold="true" Font-Size="14" CssClass="cantos-arredondados-alinhamento"></asp:DropDownList>
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:CheckBox ID="masc3kvo_ODCheckBox" runat="server" />
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1" ToolTip="Liga as simbologias de 2kHz e 3kHz na VO.">
                                                                <asp:CheckBox ID="liga2k_3kvo_ODCheckBox" runat="server" ToolTip="Liga as simbologias de 2kHz e 3kHz na VO." />
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:CheckBox ID="aus3kvo_ODCheckBox" runat="server" />
                                                            </asp:TableCell>
                                                        </asp:TableRow>
                                                        <asp:TableRow Width="100%" ForeColor="Red" Font-Bold="true" Font-Size="14">
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">4k</asp:TableCell>
                                                            <asp:TableCell Width="15%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:DropDownList ID="va4kodComboBox" runat="server" Width="100%" Height="30px" BorderColor="Red" BorderStyle="Solid" BorderWidth="1" ForeColor="Red" Font-Bold="true" Font-Size="14" CssClass="cantos-arredondados-alinhamento"></asp:DropDownList>
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:CheckBox ID="masc4kvaODCheckBox" runat="server" />
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1" ToolTip="Liga as simbologias de 3kHz e 4kHz na VA.">
                                                                <asp:CheckBox ID="liga3k_4kvaODCheckBox" runat="server" ToolTip="Liga as simbologias de 3kHz e 4kHz na VA." />
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:CheckBox ID="aus4kvaODCheckBox" runat="server" />
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="15%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:DropDownList ID="vo4kodComboBox" runat="server" Width="100%" Height="30px" BorderColor="Red" BorderStyle="Solid" BorderWidth="1" ForeColor="Red" Font-Bold="true" Font-Size="14" CssClass="cantos-arredondados-alinhamento"></asp:DropDownList>
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:CheckBox ID="masc4kvo_ODCheckBox" runat="server" />
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1" ToolTip="Liga as simbologias de 3kHz e 4kHz na VO.">
                                                                <asp:CheckBox ID="liga3k_4kvo_ODCheckBox" runat="server" ToolTip="Liga as simbologias de 3kHz e 4kHz na VO." />
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:CheckBox ID="aus4kvo_ODCheckBox" runat="server" />
                                                            </asp:TableCell>
                                                        </asp:TableRow>
                                                        <asp:TableRow Width="100%" ForeColor="Red" Font-Bold="true" Font-Size="14">
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">6k</asp:TableCell>
                                                            <asp:TableCell Width="15%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:DropDownList ID="va6kodComboBox" runat="server" Width="100%" Height="30px" BorderColor="Red" BorderStyle="Solid" BorderWidth="1" ForeColor="Red" Font-Bold="true" Font-Size="14" CssClass="cantos-arredondados-alinhamento"></asp:DropDownList>
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:CheckBox ID="masc6kvaODCheckBox" runat="server" />
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1" ToolTip="Liga as simbologias de 4kHz e 6kHz na VA.">
                                                                <asp:CheckBox ID="liga4k_6kvaODCheckBox" runat="server" ToolTip="Liga as simbologias de 4kHz e 6kHz na VA." />
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:CheckBox ID="aus6kvaODCheckBox" runat="server" />
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="15%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1"></asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1"></asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1"></asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1"></asp:TableCell>
                                                        </asp:TableRow>
                                                        <asp:TableRow Width="100%" ForeColor="Red" Font-Bold="true" Font-Size="14">
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">8k</asp:TableCell>
                                                            <asp:TableCell Width="15%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:DropDownList ID="va8kodComboBox" runat="server" Width="100%" Height="30px" BorderColor="Red" BorderStyle="Solid" BorderWidth="1" ForeColor="Red" Font-Bold="true" Font-Size="14" CssClass="cantos-arredondados-alinhamento"></asp:DropDownList>
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:CheckBox ID="masc8kvaODCheckBox" runat="server" />
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1" ToolTip="Liga as simbologias de 6kHz e 8kHz na VA.">
                                                                <asp:CheckBox ID="liga6k_8kvaODCheckBox" runat="server" ToolTip="Liga as simbologias de 6kHz e 8kHz na VA." />
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:CheckBox ID="aus8kvaODCheckBox" runat="server" />
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="15%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1"></asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1"></asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1"></asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1"></asp:TableCell>
                                                        </asp:TableRow>
                                                    </asp:Table>
                                                </asp:Panel>
                                            </div>
                                            <div class="box">
                                                <asp:Panel ID="pnlGridDadosOE" runat="server" Width="467px" BackColor="AliceBlue" BorderColor="Blue" BorderStyle="Solid" BorderWidth="1">
                                                    <asp:Table ID="tbDadosOE" runat="server" Width="100%">
                                                        <asp:TableHeaderRow Width="100%" ForeColor="Blue" Font-Bold="true" Font-Size="14">
                                                            <asp:TableHeaderCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">Hz</asp:TableHeaderCell>
                                                            <asp:TableHeaderCell Width="15%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">VA</asp:TableHeaderCell>
                                                            <asp:TableHeaderCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">M</asp:TableHeaderCell>
                                                            <asp:TableHeaderCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">L</asp:TableHeaderCell>
                                                            <asp:TableHeaderCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">A</asp:TableHeaderCell>
                                                            <asp:TableHeaderCell Width="15%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">VO</asp:TableHeaderCell>
                                                            <asp:TableHeaderCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">M</asp:TableHeaderCell>
                                                            <asp:TableHeaderCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">L</asp:TableHeaderCell>
                                                            <asp:TableHeaderCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">A</asp:TableHeaderCell>
                                                        </asp:TableHeaderRow>
                                                        <asp:TableRow Width="100%" ForeColor="Blue" Font-Bold="true" Font-Size="14" Enabled="false">
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">125</asp:TableCell>
                                                            <asp:TableCell Width="15%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:DropDownList ID="va125oeComboBox" runat="server" Width="100%" Height="30px" BorderColor="Blue" BackColor="#cccccc" BorderStyle="Solid" BorderWidth="1" ForeColor="Blue" Font-Bold="true" Font-Size="14" CssClass="cantos-arredondados-alinhamento"></asp:DropDownList>
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:CheckBox ID="masc125vaOECheckBox" runat="server" />
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1"></asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:CheckBox ID="aus125vaOECheckBox" runat="server" />
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="15%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1"></asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1"></asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1"></asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1"></asp:TableCell>
                                                        </asp:TableRow>
                                                        <asp:TableRow Width="100%" ForeColor="Blue" Font-Bold="true" Font-Size="14">
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">250</asp:TableCell>
                                                            <asp:TableCell Width="15%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:DropDownList ID="va250oeComboBox" runat="server" Width="100%" Height="30px" BorderColor="Blue"
                                                                    BorderStyle="Solid" BorderWidth="1" ForeColor="Blue" Font-Bold="true" Font-Size="14"
                                                                    CssClass="cantos-arredondados-alinhamento">
                                                                </asp:DropDownList>
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:CheckBox ID="masc250vaOECheckBox" runat="server" />
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:CheckBox ID="liga125_250vaOECheckBox" runat="server" Enabled="false" />
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:CheckBox ID="aus250vaOECheckBox" runat="server" />
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="15%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:DropDownList ID="vo250oeComboBox" runat="server" Width="100%" Height="30px" BorderColor="Blue"
                                                                    BorderStyle="Solid" BorderWidth="1" ForeColor="Blue" Font-Bold="true" Font-Size="14"
                                                                    CssClass="cantos-arredondados-alinhamento">
                                                                </asp:DropDownList>
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:CheckBox ID="masc250vo_OECheckBox" runat="server" />
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1"></asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:CheckBox ID="aus250vo_OECheckBox" runat="server" />
                                                            </asp:TableCell>
                                                        </asp:TableRow>
                                                        <asp:TableRow Width="100%" ForeColor="Blue" Font-Bold="true" Font-Size="14">
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">500</asp:TableCell>
                                                            <asp:TableCell Width="15%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:DropDownList ID="va500oeComboBox" runat="server" Width="100%" Height="30px" BorderColor="Blue"
                                                                    BorderStyle="Solid" BorderWidth="1" ForeColor="Blue" Font-Bold="true" Font-Size="14"
                                                                    CssClass="cantos-arredondados-alinhamento">
                                                                </asp:DropDownList>
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:CheckBox ID="masc500vaOECheckBox" runat="server" />
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1" ToolTip="Liga as simbologias de 250Hz e 500Hz na VA.">
                                                                <asp:CheckBox ID="liga250_500vaOECheckBox" runat="server" ToolTip="Liga as simbologias de 250Hz e 500Hz na VA." />
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:CheckBox ID="aus500vaOECheckBox" runat="server" />
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="15%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:DropDownList ID="vo500oeComboBox" runat="server" Width="100%" Height="30px" BorderColor="Blue"
                                                                    BorderStyle="Solid" BorderWidth="1" ForeColor="Blue" Font-Bold="true" Font-Size="14"
                                                                    CssClass="cantos-arredondados-alinhamento">
                                                                </asp:DropDownList>
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:CheckBox ID="masc500vo_OECheckBox" runat="server" />
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1" ToolTip="Liga as simbologias de 250Hz e 500Hz na VO.">
                                                                <asp:CheckBox ID="liga250_500vo_OECheckBox" runat="server" ToolTip="Liga as simbologias de 250Hz e 500Hz na VO." />
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:CheckBox ID="aus500vo_OECheckBox" runat="server" />
                                                            </asp:TableCell>
                                                        </asp:TableRow>
                                                        <asp:TableRow Width="100%" ForeColor="Blue" Font-Bold="true" Font-Size="14" Enabled="false">
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">750</asp:TableCell>
                                                            <asp:TableCell Width="15%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:DropDownList ID="va750oeComboBox" runat="server" Width="100%" Height="30px" BorderColor="Blue" BackColor="#cccccc"
                                                                    BorderStyle="Solid" BorderWidth="1" ForeColor="Blue" Font-Bold="true" Font-Size="14"
                                                                    CssClass="cantos-arredondados-alinhamento">
                                                                </asp:DropDownList>
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:CheckBox ID="masc750vaOECheckBox" runat="server" />
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:CheckBox ID="liga500_750vaOECheckBox" runat="server" />
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:CheckBox ID="aus750vaOECheckBox" runat="server" />
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="15%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:DropDownList ID="vo750oeComboBox" runat="server" Width="100%" Height="30px" BorderColor="Blue" BackColor="#cccccc"
                                                                    BorderStyle="Solid" BorderWidth="1" ForeColor="Blue" Font-Bold="true" Font-Size="14"
                                                                    CssClass="cantos-arredondados-alinhamento">
                                                                </asp:DropDownList>
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:CheckBox ID="masc750vo_OECheckBox" runat="server" />
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:CheckBox ID="liga500_750vo_OECheckBox" runat="server" />
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:CheckBox ID="aus750vo_OECheckBox" runat="server" />
                                                            </asp:TableCell>
                                                        </asp:TableRow>
                                                        <asp:TableRow Width="100%" ForeColor="Blue" Font-Bold="true" Font-Size="14">
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">1k</asp:TableCell>
                                                            <asp:TableCell Width="15%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:DropDownList ID="va1koeComboBox" runat="server" Width="100%" Height="30px" BorderColor="Blue"
                                                                    BorderStyle="Solid" BorderWidth="1" ForeColor="Blue" Font-Bold="true" Font-Size="14"
                                                                    CssClass="cantos-arredondados-alinhamento">
                                                                </asp:DropDownList>
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:CheckBox ID="masc1kvaOECheckBox" runat="server" />
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1" ToolTip="Liga as simbologias de 500Hz e 1kHz na VA.">
                                                                <asp:CheckBox ID="liga750_1kvaOECheckBox" runat="server" ToolTip="Liga as simbologias de 500Hz e 1kHz na VA." />
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:CheckBox ID="aus1kvaOECheckBox" runat="server" />
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="15%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:DropDownList ID="vo1koeComboBox" runat="server" Width="100%" Height="30px" BorderColor="Blue"
                                                                    BorderStyle="Solid" BorderWidth="1" ForeColor="Blue" Font-Bold="true" Font-Size="14"
                                                                    CssClass="cantos-arredondados-alinhamento">
                                                                </asp:DropDownList>
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:CheckBox ID="masc1kvo_OECheckBox" runat="server" />
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1" ToolTip="Liga as simbologias de 500Hz e 1kHz na VO.">
                                                                <asp:CheckBox ID="liga750_1kvo_OECheckBox" runat="server" ToolTip="Liga as simbologias de 500Hz e 1kHz na VO." />
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:CheckBox ID="aus1kvo_OECheckBox" runat="server" />
                                                            </asp:TableCell>
                                                        </asp:TableRow>
                                                        <asp:TableRow Width="100%" ForeColor="Blue" Font-Bold="true" Font-Size="14" Enabled="false">
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">1,5k</asp:TableCell>
                                                            <asp:TableCell Width="15%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:DropDownList ID="va1e5koeComboBox" runat="server" Width="100%" Height="30px" BorderColor="Blue" BackColor="#cccccc"
                                                                    BorderStyle="Solid" BorderWidth="1" ForeColor="Blue" Font-Bold="true" Font-Size="14"
                                                                    CssClass="cantos-arredondados-alinhamento">
                                                                </asp:DropDownList>
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:CheckBox ID="masc1_5kvaOECheckBox" runat="server" />
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:CheckBox ID="liga1k_1_5kvaOECheckBox" runat="server" />
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:CheckBox ID="aus1_5kvaOECheckBox" runat="server" />
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="15%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:DropDownList ID="vo1e5koeComboBox" runat="server" Width="100%" Height="30px" BorderColor="Blue" BackColor="#cccccc"
                                                                    BorderStyle="Solid" BorderWidth="1" ForeColor="Blue" Font-Bold="true" Font-Size="14"
                                                                    CssClass="cantos-arredondados-alinhamento">
                                                                </asp:DropDownList>
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:CheckBox ID="masc1_5kvo_OECheckBox" runat="server" />
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:CheckBox ID="liga1k_1_5kvo_OECheckBox" runat="server" />
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:CheckBox ID="aus1_5kvo_OECheckBox" runat="server" />
                                                            </asp:TableCell>
                                                        </asp:TableRow>
                                                        <asp:TableRow Width="100%" ForeColor="Blue" Font-Bold="true" Font-Size="14">
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">2k</asp:TableCell>
                                                            <asp:TableCell Width="15%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:DropDownList ID="va2koeComboBox" runat="server" Width="100%" Height="30px" BorderColor="Blue"
                                                                    BorderStyle="Solid" BorderWidth="1" ForeColor="Blue" Font-Bold="true" Font-Size="14"
                                                                    CssClass="cantos-arredondados-alinhamento">
                                                                </asp:DropDownList>
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:CheckBox ID="masc2kvaOECheckBox" runat="server" />
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1" ToolTip="Liga as simbologias de 1kHz e 2kHz na VA.">
                                                                <asp:CheckBox ID="liga1_5k_2kvaOECheckBox" runat="server" ToolTip="Liga as simbologias de 1kHz e 2kHz na VA." />
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:CheckBox ID="aus2kvaOECheckBox" runat="server" />
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="15%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:DropDownList ID="vo2koeComboBox" runat="server" Width="100%" Height="30px" BorderColor="Blue"
                                                                    BorderStyle="Solid" BorderWidth="1" ForeColor="Blue" Font-Bold="true" Font-Size="14"
                                                                    CssClass="cantos-arredondados-alinhamento">
                                                                </asp:DropDownList>
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:CheckBox ID="masc2kvo_OECheckBox" runat="server" />
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1" ToolTip="Liga as simbologias de 1kHz e 2kHz na VO.">
                                                                <asp:CheckBox ID="liga1_5k_2kvo_OECheckBox" runat="server" ToolTip="Liga as simbologias de 1kHz e 2kHz na VO." />
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:CheckBox ID="aus2kvo_OECheckBox" runat="server" />
                                                            </asp:TableCell>
                                                        </asp:TableRow>
                                                        <asp:TableRow Width="100%" ForeColor="Blue" Font-Bold="true" Font-Size="14">
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">3k</asp:TableCell>
                                                            <asp:TableCell Width="15%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:DropDownList ID="va3koeComboBox" runat="server" Width="100%" Height="30px" BorderColor="Blue"
                                                                    BorderStyle="Solid" BorderWidth="1" ForeColor="Blue" Font-Bold="true" Font-Size="14"
                                                                    CssClass="cantos-arredondados-alinhamento">
                                                                </asp:DropDownList>
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:CheckBox ID="masc3kvaOECheckBox" runat="server" />
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1" ToolTip="Liga as simbologias de 2kHz e 3kHz na VA.">
                                                                <asp:CheckBox ID="liga2k_3kvaOECheckBox" runat="server" ToolTip="Liga as simbologias de 2kHz e 3kHz na VA." />
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:CheckBox ID="aus3kvaOECheckBox" runat="server" />
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="15%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:DropDownList ID="vo3koeComboBox" runat="server" Width="100%" Height="30px" BorderColor="Blue"
                                                                    BorderStyle="Solid" BorderWidth="1" ForeColor="Blue" Font-Bold="true" Font-Size="14"
                                                                    CssClass="cantos-arredondados-alinhamento">
                                                                </asp:DropDownList>
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:CheckBox ID="masc3kvo_OECheckBox" runat="server" />
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1" ToolTip="Liga as simbologias de 2kHz e 3kHz na VO.">
                                                                <asp:CheckBox ID="liga2k_3kvo_OECheckBox" runat="server" ToolTip="Liga as simbologias de 2kHz e 3kHz na VO." />
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:CheckBox ID="aus3kvo_OECheckBox" runat="server" />
                                                            </asp:TableCell>
                                                        </asp:TableRow>
                                                        <asp:TableRow Width="100%" ForeColor="Blue" Font-Bold="true" Font-Size="14">
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">4k</asp:TableCell>
                                                            <asp:TableCell Width="15%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:DropDownList ID="va4koeComboBox" runat="server" Width="100%" Height="30px" BorderColor="Blue"
                                                                    BorderStyle="Solid" BorderWidth="1" ForeColor="Blue" Font-Bold="true" Font-Size="14"
                                                                    CssClass="cantos-arredondados-alinhamento">
                                                                </asp:DropDownList>
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:CheckBox ID="masc4kvaOECheckBox" runat="server" />
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1" ToolTip="Liga as simbologias de 3kHz e 4kHz na VA.">
                                                                <asp:CheckBox ID="liga3k_4kvaOECheckBox" runat="server" ToolTip="Liga as simbologias de 3kHz e 4kHz na VA." />
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:CheckBox ID="aus4kvaOECheckBox" runat="server" />
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="15%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:DropDownList ID="vo4koeComboBox" runat="server" Width="100%" Height="30px" BorderColor="Blue"
                                                                    BorderStyle="Solid" BorderWidth="1" ForeColor="Blue" Font-Bold="true" Font-Size="14"
                                                                    CssClass="cantos-arredondados-alinhamento">
                                                                </asp:DropDownList>
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:CheckBox ID="masc4kvo_OECheckBox" runat="server" />
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1" ToolTip="Liga as simbologias de 3kHz e 4kHz na VO.">
                                                                <asp:CheckBox ID="liga3k_4kvo_OECheckBox" runat="server" ToolTip="Liga as simbologias de 3kHz e 4kHz na VO." />
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:CheckBox ID="aus4kvo_OECheckBox" runat="server" />
                                                            </asp:TableCell>
                                                        </asp:TableRow>
                                                        <asp:TableRow Width="100%" ForeColor="Blue" Font-Bold="true" Font-Size="14">
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">6k</asp:TableCell>
                                                            <asp:TableCell Width="15%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:DropDownList ID="va6koeComboBox" runat="server" Width="100%" Height="30px" BorderColor="Blue"
                                                                    BorderStyle="Solid" BorderWidth="1" ForeColor="Blue" Font-Bold="true" Font-Size="14"
                                                                    CssClass="cantos-arredondados-alinhamento">
                                                                </asp:DropDownList>
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:CheckBox ID="masc6kvaOECheckBox" runat="server" />
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1" ToolTip="Liga as simbologias de 4kHz e 6kHz na VA.">
                                                                <asp:CheckBox ID="liga4k_6kvaOECheckBox" runat="server" ToolTip="Liga as simbologias de 4kHz e 6kHz na VA." />
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:CheckBox ID="aus6kvaOECheckBox" runat="server" />
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="15%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1"></asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1"></asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1"></asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1"></asp:TableCell>
                                                        </asp:TableRow>
                                                        <asp:TableRow Width="100%" ForeColor="Blue" Font-Bold="true" Font-Size="14">
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">8k</asp:TableCell>
                                                            <asp:TableCell Width="15%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:DropDownList ID="va8koeComboBox" runat="server" Width="100%" Height="30px" BorderColor="Blue"
                                                                    BorderStyle="Solid" BorderWidth="1" ForeColor="Blue" Font-Bold="true" Font-Size="14"
                                                                    CssClass="cantos-arredondados-alinhamento">
                                                                </asp:DropDownList>
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:CheckBox ID="masc8kvaOECheckBox" runat="server" />
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1" ToolTip="Liga as simbologias de 6kHz e 8kHz na VA.">
                                                                <asp:CheckBox ID="liga6k_8kvaOECheckBox" runat="server" ToolTip="Liga as simbologias de 6kHz e 8kHz na VA." />
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:CheckBox ID="aus8kvaOECheckBox" runat="server" />
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="15%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1"></asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1"></asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1"></asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1"></asp:TableCell>
                                                        </asp:TableRow>
                                                    </asp:Table>
                                                </asp:Panel>
                                            </div>
                                        </div>
                                        <asp:Panel ID="pnlLegenda" runat="server" Width="99.6%" HorizontalAlign="Justify" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                            <asp:TextBox ID="txtLegenda" runat="server" Width="99.6%" Enabled="false">Legenda: Hz = Hertz; VA = Via Aérea; VO = Via Óssea; M = simbologia de mascaramento; L = liga simbologia; A = simbologia de ausência de resposta.</asp:TextBox>
                                        </asp:Panel>
                                        <br />
                                        <div id="btnPlotaTodos" runat="server" style="text-align: center;">
                                            <asp:Button ID="btnPlotaGeral" runat="server" Text="Plotar" BorderColor="#4B0082" BorderStyle="Solid" BorderWidth="1" ForeColor="White" Font-Bold="true" Font-Size="18" Width="100%" Height="50px" CssClass="cantos-arredondados-hand" OnClick="btnPlotarGeral_Click" />
                                        </div>
                                    </asp:TableCell>
                                    <asp:TableCell Width="20%" Height="100%" Style="vertical-align: bottom">
                                        <div id="dadosAudioOEPlotagem" runat="server">
                                        </div>
                                    </asp:TableCell>
                                </asp:TableRow>
                            </asp:Table>
                        </div>
                        <div id="tabWeber" class="tab-content" style="width: 100%; height: 850px;">
                            <asp:Table ID="tbWeberSimbols" runat="server" Width="100%" BorderColor="#cccccc" BorderWidth="2px" BorderStyle="Solid">
                                <asp:TableHeaderRow Width="100%">
                                    <asp:TableHeaderCell BackColor="#ff0000" Font-Bold="true" Font-Size="12" ForeColor="White" Width="20%" Height="35px">Orelha Direita</asp:TableHeaderCell>
                                    <asp:TableHeaderCell BackColor="#cccccc" Font-Bold="true" Font-Size="18" Width="60%" Height="35px">Teste de Weber e Simbologia Audiométrica</asp:TableHeaderCell>
                                    <asp:TableHeaderCell BackColor="#0033cc" Font-Bold="true" Font-Size="12" ForeColor="White" Width="20%" Height="35px">Orelha Esquerda</asp:TableHeaderCell>
                                </asp:TableHeaderRow>
                                <asp:TableRow>
                                    <asp:TableCell Width="20%" Height="100%"></asp:TableCell>
                                    <asp:TableCell Width="60%" Height="100%">
                                        <div class="container" style="text-align: center;">
                                            <asp:Table ID="tbTesteWeberCabecalho" runat="server" Width="100%">
                                                <asp:TableHeaderRow Width="100%" Height="30px" BackColor="#cccccc" Font-Bold="true" Font-Size="16">
                                                    <asp:TableHeaderCell Text="Teste de Weber"></asp:TableHeaderCell>
                                                </asp:TableHeaderRow>
                                            </asp:Table>
                                        </div>
                                        <div class="container" style="text-align: center;">
                                            <div class="box">
                                                <asp:Panel ID="pnlTesteWeberParteUm" runat="server" Width="100%">
                                                    <asp:Table ID="tbTesteWeberCorpoPrimeiro" runat="server" Width="100%">
                                                        <asp:TableHeaderRow Width="100%" Height="30px">
                                                            <asp:TableHeaderCell Text="Weber em 500Hz:" Width="50%" Height="30px" BackColor="White" BorderColor="#cccccc" BorderStyle="Solid" BorderWidth="1"></asp:TableHeaderCell>
                                                            <asp:TableHeaderCell Width="50%" Height="30px" BorderColor="#cccccc" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:DropDownList ID="weber500ComboBox" runat="server" Width="100%" Height="30px" BorderColor="Black"
                                                                    BorderStyle="Solid" BorderWidth="1" Font-Bold="true" Font-Size="14"
                                                                    CssClass="cantos-arredondados-alinhamento">
                                                                </asp:DropDownList>
                                                            </asp:TableHeaderCell>
                                                        </asp:TableHeaderRow>
                                                        <asp:TableHeaderRow Width="100%" Height="30px">
                                                            <asp:TableHeaderCell Text="Weber em 1kHz:" Width="50%" Height="30px" BackColor="White" BorderColor="#cccccc" BorderStyle="Solid" BorderWidth="1"></asp:TableHeaderCell>
                                                            <asp:TableHeaderCell Width="50%" Height="30px" BorderColor="#cccccc" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:DropDownList ID="weber1kComboBox" runat="server" Width="100%" Height="30px" BorderColor="Black"
                                                                    BorderStyle="Solid" BorderWidth="1" Font-Bold="true" Font-Size="14"
                                                                    CssClass="cantos-arredondados-alinhamento">
                                                                </asp:DropDownList>
                                                            </asp:TableHeaderCell>
                                                        </asp:TableHeaderRow>
                                                    </asp:Table>
                                                </asp:Panel>
                                            </div>
                                            <div class="box">
                                                <asp:Panel ID="pnlTesteWeberParteDois" runat="server" Width="100%">
                                                    <asp:Table ID="tbTesteWeberCorpoSegundo" runat="server" Width="100%">
                                                        <asp:TableHeaderRow Width="100%" Height="30px">
                                                            <asp:TableHeaderCell Text="Weber em 2kHz:" Width="50%" Height="30px" BackColor="White" BorderColor="#cccccc" BorderStyle="Solid" BorderWidth="1"></asp:TableHeaderCell>
                                                            <asp:TableHeaderCell Width="50%" Height="30px" BorderColor="#cccccc" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:DropDownList ID="weber2kComboBox" runat="server" Width="100%" Height="30px" BorderColor="Black"
                                                                    BorderStyle="Solid" BorderWidth="1" Font-Bold="true" Font-Size="14"
                                                                    CssClass="cantos-arredondados-alinhamento">
                                                                </asp:DropDownList>
                                                            </asp:TableHeaderCell>
                                                        </asp:TableHeaderRow>
                                                        <asp:TableHeaderRow Width="100%" Height="30px">
                                                            <asp:TableHeaderCell Text="Weber em 4kHz:" Width="50%" Height="30px" BackColor="White" BorderColor="#cccccc" BorderStyle="Solid" BorderWidth="1"></asp:TableHeaderCell>
                                                            <asp:TableHeaderCell Width="50%" Height="30px" BorderColor="#cccccc" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:DropDownList ID="weber4kComboBox" runat="server" Width="100%" Height="30px" BorderColor="Black"
                                                                    BorderStyle="Solid" BorderWidth="1" Font-Bold="true" Font-Size="14"
                                                                    CssClass="cantos-arredondados-alinhamento">
                                                                </asp:DropDownList>
                                                            </asp:TableHeaderCell>
                                                        </asp:TableHeaderRow>
                                                    </asp:Table>
                                                </asp:Panel>
                                            </div>
                                        </div>
                                        <br />
                                        <div class="container" style="text-align: center;">
                                            <br />
                                            <asp:Panel ID="pnlSimbologiaAudiometrica" runat="server" Width="100%">
                                                <asp:Image ID="imgSimbologiaAudiometrica" runat="server" ImageUrl="~/Images/Simbologia.png" AlternateText="A imagem da simbologia não carregou." Width="100%" />
                                            </asp:Panel>
                                        </div>
                                    </asp:TableCell>
                                    <asp:TableCell Width="20%" Height="100%"></asp:TableCell>
                                </asp:TableRow>
                            </asp:Table>
                        </div>
                        <div id="tabImpressao" class="tab-content" style="width: 100%; height: 850px;">
                            <asp:Table ID="tbImpressaoGeral" runat="server" Width="100%" BorderColor="#cccccc" BorderWidth="2px" BorderStyle="Solid">
                                <asp:TableHeaderRow Width="100%">
                                    <asp:TableHeaderCell BackColor="#cccccc" Font-Bold="true" Font-Size="12" ForeColor="White" Width="20%" Height="35px"></asp:TableHeaderCell>
                                    <asp:TableHeaderCell BackColor="#cccccc" Font-Bold="true" Font-Size="18" Width="60%" Height="35px">Impressão</asp:TableHeaderCell>
                                    <asp:TableHeaderCell BackColor="#cccccc" Font-Bold="true" Font-Size="12" ForeColor="White" Width="20%" Height="35px"></asp:TableHeaderCell>
                                </asp:TableHeaderRow>
                                <asp:TableRow>
                                    <asp:TableCell Width="20%" Height="100%"></asp:TableCell>
                                    <asp:TableCell Width="60%" Height="100%">
                                        <asp:Table ID="tbOutrosDados" runat="server" Width="100%" BorderColor="#cccccc" BorderWidth="2px" BorderStyle="Solid">
                                            <asp:TableHeaderRow Width="100%">
                                                <asp:TableHeaderCell Text="Mascaramento tonal (dBNA):" Width="20%" Height="50px" BackColor="White" BorderColor="#cccccc" BorderStyle="Solid" BorderWidth="1"></asp:TableHeaderCell>
                                                <asp:TableHeaderCell Width="80%" Height="50px" BorderColor="#cccccc" BorderStyle="Solid" BorderWidth="1">
                                                    <asp:TextBox ID="txtMascaramentoComent" runat="server" TextMode="MultiLine" BorderColor="Black" BorderStyle="Solid" BorderWidth="1" ForeColor="Black" Font-Bold="true" Font-Size="12" Width="98%" Height="38px" CssClass="cantos-arredondados-alinhamento-left "></asp:TextBox>
                                                </asp:TableHeaderCell>
                                            </asp:TableHeaderRow>
                                            <asp:TableHeaderRow Width="100%">
                                                <asp:TableHeaderCell Text="Conclusão: " Width="20%" Height="50px" BackColor="White" BorderColor="#cccccc" BorderStyle="Solid" BorderWidth="1"></asp:TableHeaderCell>
                                                <asp:TableHeaderCell Width="80%" Height="50px" BorderColor="#cccccc" BorderStyle="Solid" BorderWidth="1">
                                                    <asp:TextBox ID="txtComentariosGerais" runat="server" TextMode="MultiLine" BackColor="#ffff99" BorderColor="Black" BorderStyle="Solid" BorderWidth="1" ForeColor="Black" Font-Bold="true" Font-Size="12" Width="98%" Height="38px" CssClass="cantos-arredondados-alinhamento-left "></asp:TextBox>
                                                </asp:TableHeaderCell>
                                            </asp:TableHeaderRow>
                                        </asp:Table>
                                        <br />
                                        <asp:Table ID="tbDadosComplementares" runat="server" Width="100%" BorderColor="#cccccc" BorderWidth="2px" BorderStyle="Solid">
                                            <asp:TableHeaderRow Width="100%">
                                                <asp:TableHeaderCell Width="100%">
                                                    <div class="container" style="text-align: center;">
                                                        <div class="box">
                                                            <asp:Panel ID="pnlDadosComplementaresPrimeiro" runat="server" Width="100%">
                                                                <asp:Table ID="tbDadosComplementaresPrimeiro" runat="server" Width="100%">
                                                                    <asp:TableHeaderRow Width="100%" Height="30px">
                                                                        <asp:TableHeaderCell Text="Audiômetro:" Width="50%" Height="30px" BackColor="White" BorderColor="#cccccc" BorderStyle="Solid" BorderWidth="1"></asp:TableHeaderCell>
                                                                        <asp:TableHeaderCell Width="50%" Height="30px" BorderColor="#cccccc" BorderStyle="Solid" BorderWidth="1">
                                                                            <asp:TextBox ID="txtAudiometro" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Solid" BorderWidth="1" ForeColor="Black" Font-Bold="true" Font-Size="12" Width="98%" Height="38px" CssClass="cantos-arredondados-alinhamento-left "></asp:TextBox>
                                                                        </asp:TableHeaderCell>
                                                                    </asp:TableHeaderRow>
                                                                    <asp:TableHeaderRow Width="100%" Height="30px">
                                                                        <asp:TableHeaderCell Text="Data de Calibração:" Width="50%" Height="30px" BackColor="White" BorderColor="#cccccc" BorderStyle="Solid" BorderWidth="1"></asp:TableHeaderCell>
                                                                        <asp:TableHeaderCell Width="50%" Height="30px" BorderColor="#cccccc" BorderStyle="Solid" BorderWidth="1">
                                                                            <asp:TextBox ID="txtDataCalibracao" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Solid" BorderWidth="1" ForeColor="Black" Font-Bold="true" Font-Size="12" Width="98%" Height="38px" CssClass="cantos-arredondados-alinhamento-left "></asp:TextBox>
                                                                        </asp:TableHeaderCell>
                                                                    </asp:TableHeaderRow>
                                                                </asp:Table>
                                                            </asp:Panel>
                                                        </div>
                                                        <div class="box">
                                                            <asp:Panel ID="pnlDadosComplementaresSegundo" runat="server" Width="100%">
                                                                <asp:Table ID="tbDadosComplementaresSegundo" runat="server" Width="100%">
                                                                    <asp:TableHeaderRow Width="100%" Height="30px">
                                                                        <asp:TableHeaderCell Text="Profissional:" Width="20%" Height="30px" BackColor="White" BorderColor="#cccccc" BorderStyle="Solid" BorderWidth="1"></asp:TableHeaderCell>
                                                                        <asp:TableHeaderCell Width="80%" Height="30px" BorderColor="#cccccc" BorderStyle="Solid" BorderWidth="1">
                                                                            <asp:TextBox ID="txtExaminador" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Solid" BorderWidth="1" ForeColor="Black" Font-Bold="true" Font-Size="12" Width="98%" Height="38px" CssClass="cantos-arredondados-alinhamento-left" Enabled="false"></asp:TextBox>
                                                                        </asp:TableHeaderCell>
                                                                    </asp:TableHeaderRow>
                                                                    <asp:TableHeaderRow Width="100%" Height="30px">
                                                                        <asp:TableHeaderCell Text="Data de hoje:" Width="20%" Height="30px" BackColor="White" BorderColor="#cccccc" BorderStyle="Solid" BorderWidth="1"></asp:TableHeaderCell>
                                                                        <asp:TableHeaderCell Width="80%" Height="30px" BorderColor="#cccccc" BorderStyle="Solid" BorderWidth="1">
                                                                            <asp:TextBox ID="txtDataHoje" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Solid" BorderWidth="1" ForeColor="Black" Font-Bold="true" Font-Size="12" Width="98%" Height="38px" CssClass="cantos-arredondados-alinhamento-left" Enabled="false"></asp:TextBox>
                                                                        </asp:TableHeaderCell>
                                                                    </asp:TableHeaderRow>
                                                                </asp:Table>
                                                            </asp:Panel>
                                                        </div>
                                                    </div>
                                                </asp:TableHeaderCell>
                                            </asp:TableHeaderRow>
                                        </asp:Table>
                                        <br />
                                        <asp:Table ID="tbImprimir" runat="server" Width="100%">
                                            <asp:TableHeaderRow Width="100%">
                                                <asp:TableHeaderCell Width="15%" Height="150px"></asp:TableHeaderCell>
                                                <asp:TableHeaderCell Width="15%" Height="150px"></asp:TableHeaderCell>
                                                <asp:TableHeaderCell Width="40%" Height="150px">
                                                    <asp:Button ID="btnImprimir" runat="server" Width="100%" Height="100%" OnClick="btnImprimir_Click" CssClass="btn-Imprimir" />
                                                </asp:TableHeaderCell>
                                                <asp:TableHeaderCell Width="15%" Height="150px"></asp:TableHeaderCell>
                                                <asp:TableHeaderCell Width="15%" Height="150px"></asp:TableHeaderCell>
                                            </asp:TableHeaderRow>
                                        </asp:Table>
                                    </asp:TableCell>
                                    <asp:TableCell Width="20%" Height="100%"></asp:TableCell>
                                </asp:TableRow>
                            </asp:Table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>

    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.1/moment.min.js"></script>
    <script src="ScriptsJS/keepSessionAlive.js"></script>
    <script src="ScriptsJS/AcoesAbas.js"></script>
    <script src="ScriptsJS/AcoesGeraisOcupA.js"></script>
    <%--Para o formato da data de admissão--%>
    <script type="text/javascript" src="ScriptsJS/FormatoDataAdmissaoOcupacional.js"></script>
    <%--Para o cálculo da idade do paciente--%>
    <script type="text/javascript" src="ScriptsJS/CalculoIdadePacienteJanelasExames.js"></script>

</body>
</html>
