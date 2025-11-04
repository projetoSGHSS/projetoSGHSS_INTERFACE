<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AudiometriaLimiarDesconforto.aspx.cs" Inherits="SISTEMASLUASAUDE_APLICACAO.AudiometriaLimiarDesconforto" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Audiometria Limiar Desconforto</title>

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
                    <b>Audiometria Limiar de Desconforto</b>
                </div>
                <div class="box" style="width: 33%;">
                    <asp:Button ID="encerraSistema" runat="server" OnClick="btnEncerraSistema" ToolTip="Sair do sistema" CssClass="btn-Encerra-Sistema" />
                </div>
            </div>
        </header>
        <br />
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
                                    <br />
                                    <br />
                                </asp:TableHeaderCell>
                            </asp:TableHeaderRow>
                        </asp:Table>
                    </div>
                    <div style="width: 5%; height: 5%; text-align: center; vertical-align: bottom; float: right; margin-top: -200px;">
                        <asp:Button ID="btnEditarDadosPaciente" runat="server" Width="98%" OnClick="btnEditarDadosPaciente_Click" ToolTip="Editar dados deste paciente" CssClass="btn-Edicao" /><br />
                        <br />
                        <asp:Button ID="btnSalvarDadosPaciente" runat="server" Width="98%" OnClick="btnSalvarDadosPaciente_Click" ToolTip="Salvar dados editados deste paciente" CssClass="btn-Salvar" />
                    </div>
                    <br />
                    <asp:Table ID="tbAudiometriaClinica" runat="server" Width="100%" BorderColor="#cccccc" BorderWidth="2px" BorderStyle="Solid">
                        <asp:TableHeaderRow Width="100%">
                            <asp:TableHeaderCell BackColor="#ff0000" Font-Bold="true" Font-Size="12" ForeColor="White" Width="15%" Height="35px">Orelha Direita</asp:TableHeaderCell>
                            <asp:TableHeaderCell BackColor="#cccccc" Font-Bold="true" Font-Size="18" Width="70%" Height="35px">Audiometria Tonal</asp:TableHeaderCell>
                            <asp:TableHeaderCell BackColor="#0033cc" Font-Bold="true" Font-Size="12" ForeColor="White" Width="15%" Height="35px">Orelha Esquerda</asp:TableHeaderCell>
                        </asp:TableHeaderRow>
                        <asp:TableRow>
                            <asp:TableCell Width="15%" Height="100%" Style="vertical-align: bottom">
                                <div id="dadosAudioOD" runat="server">
                                </div>
                            </asp:TableCell>
                            <asp:TableCell Width="70%" Height="100%">
                                <div class="container" style="text-align: center;">
                                    <div class="box" id="audiogramaOD" runat="server">
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
                                        <asp:RadioButtonList ID="rbBananaFalaODClinica" runat="server" RepeatDirection="Horizontal" ForeColor="Red" BackColor="MistyRose" BorderColor="Red" BorderStyle="Solid" BorderWidth="1" Font-Bold="true" Font-Size="12" Width="467px" AutoPostBack="true">
                                            <asp:ListItem Text="Exibe a Banana da Fala" Value="0"></asp:ListItem>
                                            <asp:ListItem Text="Oculta a Banana da Fala" Value="1"></asp:ListItem>
                                        </asp:RadioButtonList>
                                    </div>
                                    <div class="box" id="audiogramaOE" runat="server">
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
                                        <asp:RadioButtonList ID="rbBananaFalaOEClinica" runat="server" RepeatDirection="Horizontal" ForeColor="Blue" BackColor="AliceBlue" BorderColor="Blue" BorderStyle="Solid" BorderWidth="1" Font-Bold="true" Font-Size="12" Width="467px" AutoPostBack="true">
                                            <asp:ListItem Text="Exibe a Banana da Fala" Value="0"></asp:ListItem>
                                            <asp:ListItem Text="Oculta a Banana da Fala" Value="1"></asp:ListItem>
                                        </asp:RadioButtonList>
                                    </div>
                                </div>
                                <br />
                            </asp:TableCell>
                            <asp:TableCell Width="15%" Height="100%" Style="vertical-align: bottom">
                                <div id="dadosAudioOE" runat="server">
                                </div>
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                    <br />
                    <div style="width: 100%;">
                        <%--abas--%>
                        <div class="tab-button" style="width: 14.4%; border-style: solid; border-width: 1px; font-size: medium;" onclick="showTab('tabPlotar')"><b>Plotar</b></div>
                        <div class="tab-button" style="width: 14.4%; border-style: solid; border-width: 1px; font-size: medium;" onclick="showTab('tabLDL')"><b>Desconforto Tom Puro</b></div>
                        <div class="tab-button" style="width: 14.4%; border-style: solid; border-width: 1px; font-size: medium;" onclick="showTab('tabVocal')"><b>Desconforto Fala</b></div>
                        <div class="tab-button" style="width: 14.4%; border-style: solid; border-width: 1px; font-size: medium;" onclick="showTab('tabLaudoAnalitico')"><b>Laudo Analítico</b></div>
                        <div class="tab-button" style="width: 14.4%; border-style: solid; border-width: 1px; font-size: medium;" onclick="showTab('tabImpressao')"><b>Impressão</b></div>
                        <%--conteúdos das abas--%>
                        <div id="tabPlotar" class="tab-content active-tab" style="width: 100%; height: 850px;">
                            <asp:Table ID="tbPlotarValores" runat="server" Width="100%" BorderColor="#cccccc" BorderWidth="2px" BorderStyle="Solid">
                                <asp:TableHeaderRow Width="100%">
                                    <asp:TableHeaderCell BackColor="#ff0000" Font-Bold="true" Font-Size="12" ForeColor="White" Width="20%" Height="35px">Orelha Direita</asp:TableHeaderCell>
                                    <asp:TableHeaderCell BackColor="#cccccc" Font-Bold="true" Font-Size="18" Width="60%" Height="35px">Plotar Valores (VA e VO)</asp:TableHeaderCell>
                                    <asp:TableHeaderCell BackColor="#0033cc" Font-Bold="true" Font-Size="12" ForeColor="White" Width="20%" Height="35px">Orelha Esquerda</asp:TableHeaderCell>
                                </asp:TableHeaderRow>
                                <asp:TableRow>
                                    <asp:TableCell Width="20%" Height="100%"></asp:TableCell>
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
                                                        <asp:TableRow Width="100%" ForeColor="Red" Font-Bold="true" Font-Size="14">
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">125</asp:TableCell>
                                                            <asp:TableCell Width="15%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:DropDownList ID="va125odComboBox" runat="server" Width="100%" Height="30px" BorderColor="Red" BorderStyle="Solid" BorderWidth="1" ForeColor="Red" Font-Bold="true" Font-Size="14" CssClass="cantos-arredondados-alinhamento"></asp:DropDownList>
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1" Enabled="false">
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
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1" Enabled="false">
                                                                <asp:CheckBox ID="masc250vaODCheckBox" runat="server" />
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1" ToolTip="Liga as simbologias de 125Hz e 250Hz na VA.">
                                                                <asp:CheckBox ID="liga125_250vaODCheckBox" runat="server" ToolTip="Liga as simbologias de 125Hz e 250Hz na VA."/>
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:CheckBox ID="aus250vaODCheckBox" runat="server" />
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="15%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1" Enabled="false">
                                                                <asp:DropDownList ID="vo250odComboBox" runat="server" Width="100%" Height="30px" BorderColor="Red" BackColor="LightGray" BorderStyle="Solid" BorderWidth="1" ForeColor="Red" Font-Bold="true" Font-Size="14" CssClass="cantos-arredondados-alinhamento"></asp:DropDownList>
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1" Enabled="false">
                                                                <asp:CheckBox ID="masc250vo_ODCheckBox" runat="server" />
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1"></asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1" Enabled="false">
                                                                <asp:CheckBox ID="aus250vo_ODCheckBox" runat="server" />
                                                            </asp:TableCell>
                                                        </asp:TableRow>
                                                        <asp:TableRow Width="100%" ForeColor="Red" Font-Bold="true" Font-Size="14">
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">500</asp:TableCell>
                                                            <asp:TableCell Width="15%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:DropDownList ID="va500odComboBox" runat="server" Width="100%" Height="30px" BorderColor="Red" BorderStyle="Solid" BorderWidth="1" ForeColor="Red" Font-Bold="true" Font-Size="14" CssClass="cantos-arredondados-alinhamento"></asp:DropDownList>
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1" Enabled="false">
                                                                <asp:CheckBox ID="masc500vaODCheckBox" runat="server" />
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1" ToolTip="Liga as simbologias de 250Hz e 500Hz na VA.">
                                                                <asp:CheckBox ID="liga250_500vaODCheckBox" runat="server" ToolTip="Liga as simbologias de 250Hz e 500Hz na VA."/>
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:CheckBox ID="aus500vaODCheckBox" runat="server" />
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="15%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1" Enabled="false">
                                                                <asp:DropDownList ID="vo500odComboBox" runat="server" Width="100%" Height="30px" BorderColor="Red" BackColor="LightGray" BorderStyle="Solid" BorderWidth="1" ForeColor="Red" Font-Bold="true" Font-Size="14" CssClass="cantos-arredondados-alinhamento"></asp:DropDownList>
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1" Enabled="false">
                                                                <asp:CheckBox ID="masc500vo_ODCheckBox" runat="server" />
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1" ToolTip="Liga as simbologias de 250Hz e 500Hz na VO.">
                                                                <asp:CheckBox ID="liga250_500vo_ODCheckBox" runat="server" ToolTip="Liga as simbologias de 250Hz e 500Hz na VO." Enabled="false"/>
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1" Enabled="false">
                                                                <asp:CheckBox ID="aus500vo_ODCheckBox" runat="server" />
                                                            </asp:TableCell>
                                                        </asp:TableRow>
                                                        <asp:TableRow Width="100%" ForeColor="Red" Font-Bold="true" Font-Size="14">
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">750</asp:TableCell>
                                                            <asp:TableCell Width="15%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:DropDownList ID="va750odComboBox" runat="server" Width="100%" Height="30px" BorderColor="Red" BorderStyle="Solid" BorderWidth="1" ForeColor="Red" Font-Bold="true" Font-Size="14" CssClass="cantos-arredondados-alinhamento"></asp:DropDownList>
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1" Enabled="false">
                                                                <asp:CheckBox ID="masc750vaODCheckBox" runat="server" />
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1" ToolTip="Liga as simbologias de 500Hz e 750Hz na VA.">
                                                                <asp:CheckBox ID="liga500_750vaODCheckBox" runat="server" ToolTip="Liga as simbologias de 500Hz e 750Hz na VA."/>
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:CheckBox ID="aus750vaODCheckBox" runat="server" />
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="15%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1" Enabled="false">
                                                                <asp:DropDownList ID="vo750odComboBox" runat="server" Width="100%" Height="30px" BorderColor="Red" BackColor="LightGray" BorderStyle="Solid" BorderWidth="1" ForeColor="Red" Font-Bold="true" Font-Size="14" CssClass="cantos-arredondados-alinhamento"></asp:DropDownList>
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1" Enabled="false">
                                                                <asp:CheckBox ID="masc750vo_ODCheckBox" runat="server" />
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1" ToolTip="Liga as simbologias de 500Hz e 750Hz na VO.">
                                                                <asp:CheckBox ID="liga500_750vo_ODCheckBox" runat="server" ToolTip="Liga as simbologias de 500Hz e 750Hz na VO." Enabled="false"/>
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1" Enabled="false">
                                                                <asp:CheckBox ID="aus750vo_ODCheckBox" runat="server" />
                                                            </asp:TableCell>
                                                        </asp:TableRow>
                                                        <asp:TableRow Width="100%" ForeColor="Red" Font-Bold="true" Font-Size="14">
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">1k</asp:TableCell>
                                                            <asp:TableCell Width="15%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:DropDownList ID="va1kodComboBox" runat="server" Width="100%" Height="30px" BorderColor="Red" BorderStyle="Solid" BorderWidth="1" ForeColor="Red" Font-Bold="true" Font-Size="14" CssClass="cantos-arredondados-alinhamento"></asp:DropDownList>
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1" Enabled="false">
                                                                <asp:CheckBox ID="masc1kvaODCheckBox" runat="server" />
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1" ToolTip="Liga as simbologias de 750Hz e 1kHz na VA.">
                                                                <asp:CheckBox ID="liga750_1kvaODCheckBox" runat="server" ToolTip="Liga as simbologias de 750Hz e 1kHz na VA."/>
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:CheckBox ID="aus1kvaODCheckBox" runat="server" />
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="15%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1" Enabled="false">
                                                                <asp:DropDownList ID="vo1kodComboBox" runat="server" Width="100%" Height="30px" BorderColor="Red" BackColor="LightGray" BorderStyle="Solid" BorderWidth="1" ForeColor="Red" Font-Bold="true" Font-Size="14" CssClass="cantos-arredondados-alinhamento"></asp:DropDownList>
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1" Enabled="false">
                                                                <asp:CheckBox ID="masc1kvo_ODCheckBox" runat="server" />
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1" ToolTip="Liga as simbologias de 750Hz e 1kHz na VO.">
                                                                <asp:CheckBox ID="liga750_1kvo_ODCheckBox" runat="server" ToolTip="Liga as simbologias de 750Hz e 1kHz na VO." Enabled="false"/>
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1" Enabled="false">
                                                                <asp:CheckBox ID="aus1kvo_ODCheckBox" runat="server" />
                                                            </asp:TableCell>
                                                        </asp:TableRow>
                                                        <asp:TableRow Width="100%" ForeColor="Red" Font-Bold="true" Font-Size="14">
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">1,5k</asp:TableCell>
                                                            <asp:TableCell Width="15%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:DropDownList ID="va1e5kodComboBox" runat="server" Width="100%" Height="30px" BorderColor="Red" BorderStyle="Solid" BorderWidth="1" ForeColor="Red" Font-Bold="true" Font-Size="14" CssClass="cantos-arredondados-alinhamento"></asp:DropDownList>
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1" Enabled="false">
                                                                <asp:CheckBox ID="masc1_5kvaODCheckBox" runat="server" />
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1" ToolTip="Liga as simbologias de 1kHz e 1,5kHz na VA.">
                                                                <asp:CheckBox ID="liga1k_1_5kvaODCheckBox" runat="server" ToolTip="Liga as simbologias de 1kHz e 1,5kHz na VA."/>
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:CheckBox ID="aus1_5kvaODCheckBox" runat="server" />
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="15%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1" Enabled="false">
                                                                <asp:DropDownList ID="vo1e5kodComboBox" runat="server" Width="100%" Height="30px" BorderColor="Red" BackColor="LightGray" BorderStyle="Solid" BorderWidth="1" ForeColor="Red" Font-Bold="true" Font-Size="14" CssClass="cantos-arredondados-alinhamento"></asp:DropDownList>
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1" Enabled="false">
                                                                <asp:CheckBox ID="masc1_5kvo_ODCheckBox" runat="server" />
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1" ToolTip="Liga as simbologias de 1kHz e 1,5kHz na VO.">
                                                                <asp:CheckBox ID="liga1k_1_5kvo_ODCheckBox" runat="server" ToolTip="Liga as simbologias de 1kHz e 1,5Hz na VO." Enabled="false"/>
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1" Enabled="false">
                                                                <asp:CheckBox ID="aus1_5kvo_ODCheckBox" runat="server" />
                                                            </asp:TableCell>
                                                        </asp:TableRow>
                                                        <asp:TableRow Width="100%" ForeColor="Red" Font-Bold="true" Font-Size="14">
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">2k</asp:TableCell>
                                                            <asp:TableCell Width="15%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:DropDownList ID="va2kodComboBox" runat="server" Width="100%" Height="30px" BorderColor="Red" BorderStyle="Solid" BorderWidth="1" ForeColor="Red" Font-Bold="true" Font-Size="14" CssClass="cantos-arredondados-alinhamento"></asp:DropDownList>
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1" Enabled="false">
                                                                <asp:CheckBox ID="masc2kvaODCheckBox" runat="server" />
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1" ToolTip="Liga as simbologias de 1,5kHz e 2kHz na VA.">
                                                                <asp:CheckBox ID="liga1_5k_2kvaODCheckBox" runat="server" ToolTip="Liga as simbologias de 1,5kHz e 2kHz na VA."/>
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:CheckBox ID="aus2kvaODCheckBox" runat="server" />
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="15%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1" Enabled="false">
                                                                <asp:DropDownList ID="vo2kodComboBox" runat="server" Width="100%" Height="30px" BorderColor="Red" BackColor="LightGray" BorderStyle="Solid" BorderWidth="1" ForeColor="Red" Font-Bold="true" Font-Size="14" CssClass="cantos-arredondados-alinhamento"></asp:DropDownList>
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1" Enabled="false">
                                                                <asp:CheckBox ID="masc2kvo_ODCheckBox" runat="server" />
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1" ToolTip="Liga as simbologias de 1,5kHz e 2kHz na VO.">
                                                                <asp:CheckBox ID="liga1_5k_2kvo_ODCheckBox" runat="server" ToolTip="Liga as simbologias de 1,5kHz e 2kHz na VO." Enabled="false"/>
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1" Enabled="false">
                                                                <asp:CheckBox ID="aus2kvo_ODCheckBox" runat="server" />
                                                            </asp:TableCell>
                                                        </asp:TableRow>
                                                        <asp:TableRow Width="100%" ForeColor="Red" Font-Bold="true" Font-Size="14">
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">3k</asp:TableCell>
                                                            <asp:TableCell Width="15%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:DropDownList ID="va3kodComboBox" runat="server" Width="100%" Height="30px" BorderColor="Red" BorderStyle="Solid" BorderWidth="1" ForeColor="Red" Font-Bold="true" Font-Size="14" CssClass="cantos-arredondados-alinhamento"></asp:DropDownList>
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1" Enabled="false">
                                                                <asp:CheckBox ID="masc3kvaODCheckBox" runat="server" />
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1" ToolTip="Liga as simbologias de 2kHz e 3kHz na VA.">
                                                                <asp:CheckBox ID="liga2k_3kvaODCheckBox" runat="server" ToolTip="Liga as simbologias de 2kHz e 3kHz na VA."/>
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:CheckBox ID="aus3kvaODCheckBox" runat="server" />
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="15%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1" Enabled="false">
                                                                <asp:DropDownList ID="vo3kodComboBox" runat="server" Width="100%" Height="30px" BorderColor="Red" BackColor="LightGray" BorderStyle="Solid" BorderWidth="1" ForeColor="Red" Font-Bold="true" Font-Size="14" CssClass="cantos-arredondados-alinhamento"></asp:DropDownList>
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1" Enabled="false">
                                                                <asp:CheckBox ID="masc3kvo_ODCheckBox" runat="server" />
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1" ToolTip="Liga as simbologias de 2kHz e 3kHz na VO.">
                                                                <asp:CheckBox ID="liga2k_3kvo_ODCheckBox" runat="server" ToolTip="Liga as simbologias de 2kHz e 3kHz na VO." Enabled="false"/>
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1" Enabled="false">
                                                                <asp:CheckBox ID="aus3kvo_ODCheckBox" runat="server" />
                                                            </asp:TableCell>
                                                        </asp:TableRow>
                                                        <asp:TableRow Width="100%" ForeColor="Red" Font-Bold="true" Font-Size="14">
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">4k</asp:TableCell>
                                                            <asp:TableCell Width="15%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:DropDownList ID="va4kodComboBox" runat="server" Width="100%" Height="30px" BorderColor="Red" BorderStyle="Solid" BorderWidth="1" ForeColor="Red" Font-Bold="true" Font-Size="14" CssClass="cantos-arredondados-alinhamento"></asp:DropDownList>
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1" Enabled="false">
                                                                <asp:CheckBox ID="masc4kvaODCheckBox" runat="server" />
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1" ToolTip="Liga as simbologias de 3kHz e 4kHz na VA.">
                                                                <asp:CheckBox ID="liga3k_4kvaODCheckBox" runat="server" ToolTip="Liga as simbologias de 3kHz e 4kHz na VA."/>
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:CheckBox ID="aus4kvaODCheckBox" runat="server" />
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="15%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1" Enabled="false">
                                                                <asp:DropDownList ID="vo4kodComboBox" runat="server" Width="100%" Height="30px" BorderColor="Red" BackColor="LightGray" BorderStyle="Solid" BorderWidth="1" ForeColor="Red" Font-Bold="true" Font-Size="14" CssClass="cantos-arredondados-alinhamento"></asp:DropDownList>
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1" Enabled="false">
                                                                <asp:CheckBox ID="masc4kvo_ODCheckBox" runat="server" />
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1" ToolTip="Liga as simbologias de 3kHz e 4kHz na VO.">
                                                                <asp:CheckBox ID="liga3k_4kvo_ODCheckBox" runat="server" ToolTip="Liga as simbologias de 3kHz e 4kHz na VO." Enabled="false"/>
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1" Enabled="false">
                                                                <asp:CheckBox ID="aus4kvo_ODCheckBox" runat="server" />
                                                            </asp:TableCell>
                                                        </asp:TableRow>
                                                        <asp:TableRow Width="100%" ForeColor="Red" Font-Bold="true" Font-Size="14">
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">6k</asp:TableCell>
                                                            <asp:TableCell Width="15%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:DropDownList ID="va6kodComboBox" runat="server" Width="100%" Height="30px" BorderColor="Red" BorderStyle="Solid" BorderWidth="1" ForeColor="Red" Font-Bold="true" Font-Size="14" CssClass="cantos-arredondados-alinhamento"></asp:DropDownList>
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1" Enabled="false">
                                                                <asp:CheckBox ID="masc6kvaODCheckBox" runat="server" />
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1" ToolTip="Liga as simbologias de 4kHz e 6kHz na VA.">
                                                                <asp:CheckBox ID="liga4k_6kvaODCheckBox" runat="server" ToolTip="Liga as simbologias de 4kHz e 6kHz na VA."/>
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
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1" Enabled="false">
                                                                <asp:CheckBox ID="masc8kvaODCheckBox" runat="server" />
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1" ToolTip="Liga as simbologias de 6kHz e 8kHz na VA.">
                                                                <asp:CheckBox ID="liga6k_8kvaODCheckBox" runat="server" ToolTip="Liga as simbologias de 6kHz e 8kHz na VA."/>
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
                                                        <asp:TableRow Width="100%" ForeColor="Blue" Font-Bold="true" Font-Size="14">
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">125</asp:TableCell>
                                                            <asp:TableCell Width="15%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:DropDownList ID="va125oeComboBox" runat="server" Width="100%" Height="30px" BorderColor="Blue" BorderStyle="Solid" BorderWidth="1" ForeColor="Blue" Font-Bold="true" Font-Size="14" CssClass="cantos-arredondados-alinhamento"></asp:DropDownList>
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1" Enabled="false">
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
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1" Enabled="false">
                                                                <asp:CheckBox ID="masc250vaOECheckBox" runat="server" />
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1" ToolTip="Liga as simbologias de 125Hz e 250Hz na VA.">
                                                                <asp:CheckBox ID="liga125_250vaOECheckBox" runat="server" ToolTip="Liga as simbologias de 125Hz e 250Hz na VA."/>
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:CheckBox ID="aus250vaOECheckBox" runat="server" />
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="15%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1" Enabled="false">
                                                                <asp:DropDownList ID="vo250oeComboBox" runat="server" Width="100%" Height="30px" BorderColor="Blue" BackColor="LightGray"
                                                                    BorderStyle="Solid" BorderWidth="1" ForeColor="Blue" Font-Bold="true" Font-Size="14"
                                                                    CssClass="cantos-arredondados-alinhamento">
                                                                </asp:DropDownList>
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1" Enabled="false">
                                                                <asp:CheckBox ID="masc250vo_OECheckBox" runat="server" />
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1"></asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1" Enabled="false">
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
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1" Enabled="false">
                                                                <asp:CheckBox ID="masc500vaOECheckBox" runat="server" />
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1" ToolTip="Liga as simbologias de 250Hz e 500Hz na VA.">
                                                                <asp:CheckBox ID="liga250_500vaOECheckBox" runat="server" ToolTip="Liga as simbologias de 250Hz e 500Hz na VA."/>
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:CheckBox ID="aus500vaOECheckBox" runat="server" />
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="15%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1" Enabled="false">
                                                                <asp:DropDownList ID="vo500oeComboBox" runat="server" Width="100%" Height="30px" BorderColor="Blue" BackColor="LightGray"
                                                                    BorderStyle="Solid" BorderWidth="1" ForeColor="Blue" Font-Bold="true" Font-Size="14"
                                                                    CssClass="cantos-arredondados-alinhamento">
                                                                </asp:DropDownList>
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1" Enabled="false">
                                                                <asp:CheckBox ID="masc500vo_OECheckBox" runat="server" />
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1" ToolTip="Liga as simbologias de 250Hz e 500Hz na VO.">
                                                                <asp:CheckBox ID="liga250_500vo_OECheckBox" runat="server" ToolTip="Liga as simbologias de 250Hz e 500Hz na VO." Enabled="false"/>
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1" Enabled="false">
                                                                <asp:CheckBox ID="aus500vo_OECheckBox" runat="server" />
                                                            </asp:TableCell>
                                                        </asp:TableRow>
                                                        <asp:TableRow Width="100%" ForeColor="Blue" Font-Bold="true" Font-Size="14">
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">750</asp:TableCell>
                                                            <asp:TableCell Width="15%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:DropDownList ID="va750oeComboBox" runat="server" Width="100%" Height="30px" BorderColor="Blue"
                                                                    BorderStyle="Solid" BorderWidth="1" ForeColor="Blue" Font-Bold="true" Font-Size="14"
                                                                    CssClass="cantos-arredondados-alinhamento">
                                                                </asp:DropDownList>
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1" Enabled="false">
                                                                <asp:CheckBox ID="masc750vaOECheckBox" runat="server" />
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1" ToolTip="Liga as simbologias de 500Hz e 750Hz na VA.">
                                                                <asp:CheckBox ID="liga500_750vaOECheckBox" runat="server" ToolTip="Liga as simbologias de 500Hz e 750Hz na VA."/>
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:CheckBox ID="aus750vaOECheckBox" runat="server" />
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="15%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1" Enabled="false">
                                                                <asp:DropDownList ID="vo750oeComboBox" runat="server" Width="100%" Height="30px" BorderColor="Blue" BackColor="LightGray"
                                                                    BorderStyle="Solid" BorderWidth="1" ForeColor="Blue" Font-Bold="true" Font-Size="14"
                                                                    CssClass="cantos-arredondados-alinhamento">
                                                                </asp:DropDownList>
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1" Enabled="false">
                                                                <asp:CheckBox ID="masc750vo_OECheckBox" runat="server" />
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1" ToolTip="Liga as simbologias de 500Hz e 750Hz na VO.">
                                                                <asp:CheckBox ID="liga500_750vo_OECheckBox" runat="server" ToolTip="Liga as simbologias de 500Hz e 750Hz na VO." Enabled="false"/>
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1" Enabled="false">
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
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1" Enabled="false">
                                                                <asp:CheckBox ID="masc1kvaOECheckBox" runat="server" />
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1" ToolTip="Liga as simbologias de 750Hz e 1kHz na VA.">
                                                                <asp:CheckBox ID="liga750_1kvaOECheckBox" runat="server" ToolTip="Liga as simbologias de 750Hz e 1kHz na VA."/>
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:CheckBox ID="aus1kvaOECheckBox" runat="server" />
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="15%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1" Enabled="false">
                                                                <asp:DropDownList ID="vo1koeComboBox" runat="server" Width="100%" Height="30px" BorderColor="Blue" BackColor="LightGray"
                                                                    BorderStyle="Solid" BorderWidth="1" ForeColor="Blue" Font-Bold="true" Font-Size="14"
                                                                    CssClass="cantos-arredondados-alinhamento">
                                                                </asp:DropDownList>
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1" Enabled="false">
                                                                <asp:CheckBox ID="masc1kvo_OECheckBox" runat="server" />
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1" ToolTip="Liga as simbologias de 750Hz e 1kHz na VO.">
                                                                <asp:CheckBox ID="liga750_1kvo_OECheckBox" runat="server" ToolTip="Liga as simbologias de 750Hz e 1kHz na VO." Enabled="false"/>
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1" Enabled="false">
                                                                <asp:CheckBox ID="aus1kvo_OECheckBox" runat="server" />
                                                            </asp:TableCell>
                                                        </asp:TableRow>
                                                        <asp:TableRow Width="100%" ForeColor="Blue" Font-Bold="true" Font-Size="14">
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">1,5k</asp:TableCell>
                                                            <asp:TableCell Width="15%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:DropDownList ID="va1e5koeComboBox" runat="server" Width="100%" Height="30px" BorderColor="Blue"
                                                                    BorderStyle="Solid" BorderWidth="1" ForeColor="Blue" Font-Bold="true" Font-Size="14"
                                                                    CssClass="cantos-arredondados-alinhamento">
                                                                </asp:DropDownList>
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1" Enabled="false">
                                                                <asp:CheckBox ID="masc1_5kvaOECheckBox" runat="server" />
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1" ToolTip="Liga as simbologias de 1kHz e 1,5kHz na VA.">
                                                                <asp:CheckBox ID="liga1k_1_5kvaOECheckBox" runat="server" ToolTip="Liga as simbologias de 1kHz e 1,5kHz na VA."/>
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:CheckBox ID="aus1_5kvaOECheckBox" runat="server" />
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="15%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:DropDownList ID="vo1e5koeComboBox" runat="server" Width="100%" Height="30px" BorderColor="Blue" BackColor="LightGray"
                                                                    BorderStyle="Solid" BorderWidth="1" ForeColor="Blue" Font-Bold="true" Font-Size="14"
                                                                    CssClass="cantos-arredondados-alinhamento">
                                                                </asp:DropDownList>
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1" Enabled="false">
                                                                <asp:CheckBox ID="masc1_5kvo_OECheckBox" runat="server" />
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1" ToolTip="Liga as simbologias de 1kHz e 1,5kHz na VO.">
                                                                <asp:CheckBox ID="liga1k_1_5kvo_OECheckBox" runat="server" ToolTip="Liga as simbologias de 1kHz e 1,5kHz na VO." Enabled="false"/>
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1" Enabled="false">
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
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1" Enabled="false">
                                                                <asp:CheckBox ID="masc2kvaOECheckBox" runat="server" />
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1" ToolTip="Liga as simbologias de 1,5kHz e 2kHz na VA.">
                                                                <asp:CheckBox ID="liga1_5k_2kvaOECheckBox" runat="server" ToolTip="Liga as simbologias de 1,5kHz e 2kHz na VA."/>
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:CheckBox ID="aus2kvaOECheckBox" runat="server" />
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="15%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1" Enabled="false">
                                                                <asp:DropDownList ID="vo2koeComboBox" runat="server" Width="100%" Height="30px" BorderColor="Blue" BackColor="LightGray"
                                                                    BorderStyle="Solid" BorderWidth="1" ForeColor="Blue" Font-Bold="true" Font-Size="14"
                                                                    CssClass="cantos-arredondados-alinhamento">
                                                                </asp:DropDownList>
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1" Enabled="false">
                                                                <asp:CheckBox ID="masc2kvo_OECheckBox" runat="server" />
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1" ToolTip="Liga as simbologias de 1,5kHz e 2kHz na VO.">
                                                                <asp:CheckBox ID="liga1_5k_2kvo_OECheckBox" runat="server" ToolTip="Liga as simbologias de 1,5kHz e 2kHz na VO." Enabled="false"/>
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1" Enabled="false">
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
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1" Enabled="false">
                                                                <asp:CheckBox ID="masc3kvaOECheckBox" runat="server" />
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1" ToolTip="Liga as simbologias de 2kHz e 3kHz na VA.">
                                                                <asp:CheckBox ID="liga2k_3kvaOECheckBox" runat="server" ToolTip="Liga as simbologias de 2kHz e 3kHz na VA."/>
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:CheckBox ID="aus3kvaOECheckBox" runat="server" />
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="15%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1" Enabled="false">
                                                                <asp:DropDownList ID="vo3koeComboBox" runat="server" Width="100%" Height="30px" BorderColor="Blue" BackColor="LightGray"
                                                                    BorderStyle="Solid" BorderWidth="1" ForeColor="Blue" Font-Bold="true" Font-Size="14"
                                                                    CssClass="cantos-arredondados-alinhamento">
                                                                </asp:DropDownList>
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1" Enabled="false">
                                                                <asp:CheckBox ID="masc3kvo_OECheckBox" runat="server" />
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1" ToolTip="Liga as simbologias de 2kHz e 3kHz na VO.">
                                                                <asp:CheckBox ID="liga2k_3kvo_OECheckBox" runat="server" ToolTip="Liga as simbologias de 2kHz e 3kHz na VO." Enabled="false"/>
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1" Enabled="false">
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
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1" Enabled="false">
                                                                <asp:CheckBox ID="masc4kvaOECheckBox" runat="server" />
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1" ToolTip="Liga as simbologias de 3kHz e 4kHz na VA.">
                                                                <asp:CheckBox ID="liga3k_4kvaOECheckBox" runat="server" ToolTip="Liga as simbologias de 3kHz e 4kHz na VA."/>
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:CheckBox ID="aus4kvaOECheckBox" runat="server" />
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="15%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1" Enabled="false">
                                                                <asp:DropDownList ID="vo4koeComboBox" runat="server" Width="100%" Height="30px" BorderColor="Blue" BackColor="LightGray"
                                                                    BorderStyle="Solid" BorderWidth="1" ForeColor="Blue" Font-Bold="true" Font-Size="14"
                                                                    CssClass="cantos-arredondados-alinhamento">
                                                                </asp:DropDownList>
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1" Enabled="false">
                                                                <asp:CheckBox ID="masc4kvo_OECheckBox" runat="server" />
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1" ToolTip="Liga as simbologias de 3kHz e 4kHz na VO.">
                                                                <asp:CheckBox ID="liga3k_4kvo_OECheckBox" runat="server" ToolTip="Liga as simbologias de 3kHz e 4kHz na VO." Enabled="false"/>
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1" Enabled="false">
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
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1" Enabled="false">
                                                                <asp:CheckBox ID="masc6kvaOECheckBox" runat="server" />
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1" ToolTip="Liga as simbologias de 4kHz e 6kHz na VA.">
                                                                <asp:CheckBox ID="liga4k_6kvaOECheckBox" runat="server" ToolTip="Liga as simbologias de 4kHz e 6kHz na VA."/>
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
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1" Enabled="false">
                                                                <asp:CheckBox ID="masc8kvaOECheckBox" runat="server" />
                                                            </asp:TableCell>
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1" ToolTip="Liga as simbologias de 6kHz e 8kHz na VA.">
                                                                <asp:CheckBox ID="liga6k_8kvaOECheckBox" runat="server" ToolTip="Liga as simbologias de 6kHz e 8kHz na VA."/>
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
                                            <asp:Button ID="btnPlotaGeral" runat="server" Text="Plotar" BackColor="#00cc99" BorderStyle="Solid" BorderWidth="1" Font-Bold="true" Font-Size="18" Width="100%" Height="50px" CssClass="cantos-arredondados-hand" OnClick="btnPlotarGeral_Click" />
                                        </div>
                                        <br />
                                    </asp:TableCell>
                                    <asp:TableCell Width="20%" Height="100%"></asp:TableCell>
                                </asp:TableRow>
                            </asp:Table>
                        </div>
                        <div id="tabLDL" class="tab-content" style="width: 100%; height: 850px;">
                            <asp:Table ID="tbLDL" runat="server" Width="100%" BorderColor="#cccccc" BorderWidth="2px" BorderStyle="Solid">
                                <asp:TableHeaderRow Width="100%">
                                    <asp:TableHeaderCell BackColor="Red" Font-Bold="true" Font-Size="12" ForeColor="White" Width="20%" Height="35px">Orelha Direita</asp:TableHeaderCell>
                                    <asp:TableHeaderCell BackColor="#cccccc" Font-Bold="true" Font-Size="18" Width="60%" Height="35px">Desconforto para Tom Puro</asp:TableHeaderCell>
                                    <asp:TableHeaderCell BackColor="Blue" Font-Bold="true" Font-Size="12" ForeColor="White" Width="20%" Height="35px">Orelha Esquerda</asp:TableHeaderCell>
                                </asp:TableHeaderRow>
                                <asp:TableRow>
                                    <asp:TableCell Width="20%" Height="100%">
                                        <div class="container" style="text-align: center;">
                                            <asp:Panel ID="pnlLateralBtnOD" runat="server">
                                                <asp:Table ID="tbLateralbtnOD" runat="server">
                                                    <asp:TableRow Width="100%">
                                                        <asp:TableCell Width="100%"></asp:TableCell>
                                                    </asp:TableRow>
                                                    <asp:TableRow Width="100%">
                                                        <asp:TableCell Width="100%"></asp:TableCell>
                                                    </asp:TableRow>
                                                    <asp:TableRow Width="100%">
                                                        <asp:TableCell Width="100%"></asp:TableCell>
                                                    </asp:TableRow>
                                                    <asp:TableRow Width="100%">
                                                        <asp:TableCell Width="100%"></asp:TableCell>
                                                    </asp:TableRow>
                                                    <asp:TableRow Width="100%">
                                                        <asp:TableCell Width="100%">
                                                            <asp:Button ID="btnLAod" runat="server" Text="Plotar LA" BorderStyle="Solid" BorderWidth="1" Font-Bold="true" Font-Size="12" Width="100%" Height="35px" CssClass="cantos-arredondados-hand" OnClick="btnLAod_Click" ToolTip="Permite trazer os valores das VAs plotados na Audiometria Completa."/>
                                                        </asp:TableCell>
                                                    </asp:TableRow>
                                                    <asp:TableRow Width="100%">
                                                        <asp:TableCell Width="100%">
                                                            <asp:Button ID="btnLRAod" runat="server" Text="Plotar LRA" BorderStyle="Solid" BorderWidth="1" Font-Bold="true" Font-Size="12" Width="100%" Height="35px" CssClass="cantos-arredondados-hand" OnClick="btnLRAod_Click" ToolTip="Permite trazer os valores dos Reflexos do m. do Estapédio plotados na Impedanciometria."/>
                                                        </asp:TableCell>
                                                    </asp:TableRow>
                                                    <asp:TableRow Width="100%">
                                                        <asp:TableCell Width="100%">
                                                            <asp:Button ID="btnLALDLod" runat="server" Text="LA - LDL" BorderStyle="Solid" BorderWidth="1" Font-Bold="true" Font-Size="12" Width="100%" Height="35px" CssClass="cantos-arredondados-hand" OnClick="btnLALDLod_Click" ToolTip="Permite calcular a diferença entre o LDL e o LA para cada frequência."/>
                                                        </asp:TableCell>
                                                    </asp:TableRow>
                                                    <asp:TableRow Width="100%">
                                                        <asp:TableCell Width="100%">
                                                            <asp:Button ID="btnLRALAod" runat="server" Text="LRA - LA" BorderStyle="Solid" BorderWidth="1" Font-Bold="true" Font-Size="12" Width="100%" Height="35px" CssClass="cantos-arredondados-hand" OnClick="btnLRALAod_Click" ToolTip="Permite calcular a diferença entre o LDL e o LRA para cada frequência."/>
                                                        </asp:TableCell>
                                                    </asp:TableRow>
                                                    <asp:TableRow Width="100%">
                                                        <asp:TableCell Width="100%"></asp:TableCell>
                                                    </asp:TableRow>
                                                    <asp:TableRow Width="100%">
                                                        <asp:TableCell Width="100%"></asp:TableCell>
                                                    </asp:TableRow>
                                                    <asp:TableRow Width="100%">
                                                        <asp:TableCell Width="100%"></asp:TableCell>
                                                    </asp:TableRow>
                                                    <asp:TableRow Width="100%">
                                                        <asp:TableCell Width="100%"></asp:TableCell>
                                                    </asp:TableRow>
                                                    <asp:TableRow Width="100%">
                                                        <asp:TableCell Width="100%"></asp:TableCell>
                                                    </asp:TableRow>
                                                </asp:Table>
                                            </asp:Panel>
                                        </div>
                                    </asp:TableCell>
                                    <asp:TableCell Width="60%" Height="100%">
                                        <div class="container" style="text-align: center;">
                                            <div class="box">
                                                <asp:Panel ID="pnlLDLod" runat="server" Width="467px" BackColor="MistyRose" BorderColor="Red" BorderStyle="Solid" BorderWidth="1">
                                                    <asp:Table ID="tbLDLod" runat="server" Width="100%">
                                                        <asp:TableHeaderRow Width="100%" ForeColor="Red" Font-Bold="true" Font-Size="14">
                                                            <asp:TableHeaderCell Width="16.6%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">Hz</asp:TableHeaderCell>
                                                            <asp:TableHeaderCell Width="16.6%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">LDL (dBNA)</asp:TableHeaderCell>
                                                            <asp:TableHeaderCell Width="16.6%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">LA (dBNA)</asp:TableHeaderCell>
                                                            <asp:TableHeaderCell Width="16.6%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">LRA (dBNA)</asp:TableHeaderCell>
                                                            <asp:TableHeaderCell Width="16.6%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">LA-LDL (dBNPS)</asp:TableHeaderCell>
                                                            <asp:TableHeaderCell Width="16.7%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">LRA-LA (dBNPS)</asp:TableHeaderCell>
                                                        </asp:TableHeaderRow>
                                                        <asp:TableRow Width="100%" ForeColor="Red" Font-Bold="true" Font-Size="14">
                                                            <asp:TableCell Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">125</asp:TableCell>
                                                            <asp:TableCell Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:TextBox ID="txtLDL125od" runat="server" Width="90%" Height="30px" BackColor="MistyRose" Font-Size="14" ForeColor="Red" Font-Bold="true" BorderColor="Red" BorderStyle="Solid" BorderWidth="1" ReadOnly="true"></asp:TextBox>
                                                            </asp:TableCell>
                                                            <asp:TableCell Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:TextBox ID="txtLA125od" runat="server" onkeypress="return isNumberKey(event)" Width="90%" Height="30px" Font-Size="14" ForeColor="Red" Font-Bold="true" BorderColor="Red" BorderStyle="Solid" BorderWidth="1"></asp:TextBox>
                                                            </asp:TableCell>
                                                            <asp:TableCell Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:TextBox ID="txtLRA125od" runat="server" onkeypress="return isNumberKey(event)" Width="90%" Height="30px" BackColor="MistyRose" Font-Size="14" ForeColor="Red" Font-Bold="true" BorderColor="Red" BorderStyle="Solid" BorderWidth="1" ReadOnly="true"></asp:TextBox>
                                                            </asp:TableCell>
                                                            <asp:TableCell Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:TextBox ID="txtLA_LDL125od" runat="server" Width="90%" Height="30px" BackColor="MistyRose" Font-Size="14" ForeColor="Red" Font-Bold="true" BorderColor="Red" BorderStyle="Solid" BorderWidth="1" ReadOnly="true"></asp:TextBox>
                                                            </asp:TableCell>
                                                            <asp:TableCell Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:TextBox ID="txtLRA_LA125od" runat="server" Width="90%" Height="30px" BackColor="MistyRose" Font-Size="14" ForeColor="Red" Font-Bold="true" BorderColor="Red" BorderStyle="Solid" BorderWidth="1" ReadOnly="true"></asp:TextBox>
                                                            </asp:TableCell>
                                                        </asp:TableRow>
                                                        <asp:TableRow Width="100%" ForeColor="Red" Font-Bold="true" Font-Size="14">
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">250</asp:TableCell>
                                                            <asp:TableCell Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:TextBox ID="txtLDL250od" runat="server" Width="90%" Height="30px" BackColor="MistyRose" Font-Size="14" ForeColor="Red" Font-Bold="true" BorderColor="Red" BorderStyle="Solid" BorderWidth="1" ReadOnly="true"></asp:TextBox>
                                                            </asp:TableCell>
                                                            <asp:TableCell Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:TextBox ID="txtLA250od" runat="server" onkeypress="return isNumberKey(event)" Width="90%" Height="30px" Font-Size="14" ForeColor="Red" Font-Bold="true" BorderColor="Red" BorderStyle="Solid" BorderWidth="1"></asp:TextBox>
                                                            </asp:TableCell>
                                                            <asp:TableCell Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:TextBox ID="txtLRA250od" runat="server" onkeypress="return isNumberKey(event)" Width="90%" Height="30px" BackColor="MistyRose" Font-Size="14" ForeColor="Red" Font-Bold="true" BorderColor="Red" BorderStyle="Solid" BorderWidth="1" ReadOnly="true"></asp:TextBox>
                                                            </asp:TableCell>
                                                            <asp:TableCell Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:TextBox ID="txtLA_LDL250od" runat="server" Width="90%" Height="30px" BackColor="MistyRose" Font-Size="14" ForeColor="Red" Font-Bold="true" BorderColor="Red" BorderStyle="Solid" BorderWidth="1" ReadOnly="true"></asp:TextBox>
                                                            </asp:TableCell>
                                                            <asp:TableCell Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:TextBox ID="txtLRA_LA250od" runat="server" Width="90%" Height="30px" BackColor="MistyRose" Font-Size="14" ForeColor="Red" Font-Bold="true" BorderColor="Red" BorderStyle="Solid" BorderWidth="1" ReadOnly="true"></asp:TextBox>
                                                            </asp:TableCell>
                                                        </asp:TableRow>
                                                        <asp:TableRow Width="100%" ForeColor="Red" Font-Bold="true" Font-Size="14">
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">500</asp:TableCell>
                                                            <asp:TableCell Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:TextBox ID="txtLDL500od" runat="server" Width="90%" Height="30px" BackColor="MistyRose" Font-Size="14" ForeColor="Red" Font-Bold="true" BorderColor="Red" BorderStyle="Solid" BorderWidth="1" ReadOnly="true"></asp:TextBox>
                                                            </asp:TableCell>
                                                            <asp:TableCell Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:TextBox ID="txtLA500od" runat="server" onkeypress="return isNumberKey(event)" Width="90%" Height="30px" Font-Size="14" ForeColor="Red" Font-Bold="true" BorderColor="Red" BorderStyle="Solid" BorderWidth="1"></asp:TextBox>
                                                            </asp:TableCell>
                                                            <asp:TableCell Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:TextBox ID="txtLRA500od" runat="server" onkeypress="return isNumberKey(event)" Width="90%" Height="30px" Font-Size="14" ForeColor="Red" Font-Bold="true" BorderColor="Red" BorderStyle="Solid" BorderWidth="1"></asp:TextBox>
                                                            </asp:TableCell>
                                                            <asp:TableCell Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:TextBox ID="txtLA_LDL500od" runat="server" Width="90%" Height="30px" BackColor="MistyRose" Font-Size="14" ForeColor="Red" Font-Bold="true" BorderColor="Red" BorderStyle="Solid" BorderWidth="1" ReadOnly="true"></asp:TextBox>
                                                            </asp:TableCell>
                                                            <asp:TableCell Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:TextBox ID="txtLRA_LA500od" runat="server" Width="90%" Height="30px" BackColor="MistyRose" Font-Size="14" ForeColor="Red" Font-Bold="true" BorderColor="Red" BorderStyle="Solid" BorderWidth="1" ReadOnly="true"></asp:TextBox>
                                                            </asp:TableCell>
                                                        </asp:TableRow>
                                                        <asp:TableRow Width="100%" ForeColor="Red" Font-Bold="true" Font-Size="14">
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">750</asp:TableCell>
                                                            <asp:TableCell Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:TextBox ID="txtLDL750od" runat="server" Width="90%" Height="30px" BackColor="MistyRose" Font-Size="14" ForeColor="Red" Font-Bold="true" BorderColor="Red" BorderStyle="Solid" BorderWidth="1" ReadOnly="true"></asp:TextBox>
                                                            </asp:TableCell>
                                                            <asp:TableCell Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:TextBox ID="txtLA750od" runat="server" onkeypress="return isNumberKey(event)" Width="90%" Height="30px" Font-Size="14" ForeColor="Red" Font-Bold="true" BorderColor="Red" BorderStyle="Solid" BorderWidth="1"></asp:TextBox>
                                                            </asp:TableCell>
                                                            <asp:TableCell Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:TextBox ID="txtLRA750od" runat="server" onkeypress="return isNumberKey(event)" Width="90%" Height="30px" BackColor="MistyRose" Font-Size="14" ForeColor="Red" Font-Bold="true" BorderColor="Red" BorderStyle="Solid" BorderWidth="1" ReadOnly="true"></asp:TextBox>
                                                            </asp:TableCell>
                                                            <asp:TableCell Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:TextBox ID="txtLA_LDL750od" runat="server" Width="90%" Height="30px" BackColor="MistyRose" Font-Size="14" ForeColor="Red" Font-Bold="true" BorderColor="Red" BorderStyle="Solid" BorderWidth="1" ReadOnly="true"></asp:TextBox>
                                                            </asp:TableCell>
                                                            <asp:TableCell Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:TextBox ID="txtLRA_LA750od" runat="server" Width="90%" Height="30px" BackColor="MistyRose" Font-Size="14" ForeColor="Red" Font-Bold="true" BorderColor="Red" BorderStyle="Solid" BorderWidth="1" ReadOnly="true"></asp:TextBox>
                                                            </asp:TableCell>
                                                        </asp:TableRow>
                                                        <asp:TableRow Width="100%" ForeColor="Red" Font-Bold="true" Font-Size="14">
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">1k</asp:TableCell>
                                                            <asp:TableCell Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:TextBox ID="txtLDL1kod" runat="server" Width="90%" Height="30px" BackColor="MistyRose" Font-Size="14" ForeColor="Red" Font-Bold="true" BorderColor="Red" BorderStyle="Solid" BorderWidth="1" ReadOnly="true"></asp:TextBox>
                                                            </asp:TableCell>
                                                            <asp:TableCell Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:TextBox ID="txtLA1kod" runat="server" onkeypress="return isNumberKey(event)" Width="90%" Height="30px" Font-Size="14" ForeColor="Red" Font-Bold="true" BorderColor="Red" BorderStyle="Solid" BorderWidth="1"></asp:TextBox>
                                                            </asp:TableCell>
                                                            <asp:TableCell Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:TextBox ID="txtLRA1kod" runat="server" onkeypress="return isNumberKey(event)" Width="90%" Height="30px" Font-Size="14" ForeColor="Red" Font-Bold="true" BorderColor="Red" BorderStyle="Solid" BorderWidth="1"></asp:TextBox>
                                                            </asp:TableCell>
                                                            <asp:TableCell Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:TextBox ID="txtLA_LDL1kod" runat="server" Width="90%" Height="30px" BackColor="MistyRose" Font-Size="14" ForeColor="Red" Font-Bold="true" BorderColor="Red" BorderStyle="Solid" BorderWidth="1" ReadOnly="true"></asp:TextBox>
                                                            </asp:TableCell>
                                                            <asp:TableCell Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:TextBox ID="txtLRA_LA1kod" runat="server" Width="90%" Height="30px" BackColor="MistyRose" Font-Size="14" ForeColor="Red" Font-Bold="true" BorderColor="Red" BorderStyle="Solid" BorderWidth="1" ReadOnly="true"></asp:TextBox>
                                                            </asp:TableCell>
                                                        </asp:TableRow>
                                                        <asp:TableRow Width="100%" ForeColor="Red" Font-Bold="true" Font-Size="14">
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">1,5k</asp:TableCell>
                                                            <asp:TableCell Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:TextBox ID="txtLDL1e5kod" runat="server" Width="90%" Height="30px" BackColor="MistyRose" Font-Size="14" ForeColor="Red" Font-Bold="true" BorderColor="Red" BorderStyle="Solid" BorderWidth="1" ReadOnly="true"></asp:TextBox>
                                                            </asp:TableCell>
                                                            <asp:TableCell Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:TextBox ID="txtLA1e5kod" runat="server" onkeypress="return isNumberKey(event)" Width="90%" Height="30px" Font-Size="14" ForeColor="Red" Font-Bold="true" BorderColor="Red" BorderStyle="Solid" BorderWidth="1"></asp:TextBox>
                                                            </asp:TableCell>
                                                            <asp:TableCell Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:TextBox ID="txtLRA1e5kod" runat="server" onkeypress="return isNumberKey(event)" Width="90%" Height="30px" BackColor="MistyRose" Font-Size="14" ForeColor="Red" Font-Bold="true" BorderColor="Red" BorderStyle="Solid" BorderWidth="1" ReadOnly="true"></asp:TextBox>
                                                            </asp:TableCell>
                                                            <asp:TableCell Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:TextBox ID="txtLA_LDL1e5kod" runat="server" Width="90%" Height="30px" BackColor="MistyRose" Font-Size="14" ForeColor="Red" Font-Bold="true" BorderColor="Red" BorderStyle="Solid" BorderWidth="1" ReadOnly="true"></asp:TextBox>
                                                            </asp:TableCell>
                                                            <asp:TableCell Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:TextBox ID="txtLRA_LA1e5kod" runat="server" Width="90%" Height="30px" BackColor="MistyRose" Font-Size="14" ForeColor="Red" Font-Bold="true" BorderColor="Red" BorderStyle="Solid" BorderWidth="1" ReadOnly="true"></asp:TextBox>
                                                            </asp:TableCell>
                                                        </asp:TableRow>
                                                        <asp:TableRow Width="100%" ForeColor="Red" Font-Bold="true" Font-Size="14">
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">2k</asp:TableCell>
                                                            <asp:TableCell Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:TextBox ID="txtLDL2kod" runat="server" Width="90%" Height="30px" BackColor="MistyRose" Font-Size="14" ForeColor="Red" Font-Bold="true" BorderColor="Red" BorderStyle="Solid" BorderWidth="1" ReadOnly="true"></asp:TextBox>
                                                            </asp:TableCell>
                                                            <asp:TableCell Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:TextBox ID="txtLA2kod" runat="server" onkeypress="return isNumberKey(event)" Width="90%" Height="30px" Font-Size="14" ForeColor="Red" Font-Bold="true" BorderColor="Red" BorderStyle="Solid" BorderWidth="1"></asp:TextBox>
                                                            </asp:TableCell>
                                                            <asp:TableCell Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:TextBox ID="txtLRA2kod" runat="server" onkeypress="return isNumberKey(event)" Width="90%" Height="30px" Font-Size="14" ForeColor="Red" Font-Bold="true" BorderColor="Red" BorderStyle="Solid" BorderWidth="1"></asp:TextBox>
                                                            </asp:TableCell>
                                                            <asp:TableCell Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:TextBox ID="txtLA_LDL2kod" runat="server" Width="90%" Height="30px" BackColor="MistyRose" Font-Size="14" ForeColor="Red" Font-Bold="true" BorderColor="Red" BorderStyle="Solid" BorderWidth="1" ReadOnly="true"></asp:TextBox>
                                                            </asp:TableCell>
                                                            <asp:TableCell Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:TextBox ID="txtLRA_LA2kod" runat="server" Width="90%" Height="30px" BackColor="MistyRose" Font-Size="14" ForeColor="Red" Font-Bold="true" BorderColor="Red" BorderStyle="Solid" BorderWidth="1" ReadOnly="true"></asp:TextBox>
                                                            </asp:TableCell>
                                                        </asp:TableRow>
                                                        <asp:TableRow Width="100%" ForeColor="Red" Font-Bold="true" Font-Size="14">
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">3k</asp:TableCell>
                                                            <asp:TableCell Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:TextBox ID="txtLDL3kod" runat="server" Width="90%" Height="30px" BackColor="MistyRose" Font-Size="14" ForeColor="Red" Font-Bold="true" BorderColor="Red" BorderStyle="Solid" BorderWidth="1" ReadOnly="true"></asp:TextBox>
                                                            </asp:TableCell>
                                                            <asp:TableCell Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:TextBox ID="txtLA3kod" runat="server" onkeypress="return isNumberKey(event)" Width="90%" Height="30px" Font-Size="14" ForeColor="Red" Font-Bold="true" BorderColor="Red" BorderStyle="Solid" BorderWidth="1"></asp:TextBox>
                                                            </asp:TableCell>
                                                            <asp:TableCell Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:TextBox ID="txtLRA3kod" runat="server" onkeypress="return isNumberKey(event)" Width="90%" Height="30px" BackColor="MistyRose" Font-Size="14" ForeColor="Red" Font-Bold="true" BorderColor="Red" BorderStyle="Solid" BorderWidth="1" ReadOnly="true"></asp:TextBox>
                                                            </asp:TableCell>
                                                            <asp:TableCell Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:TextBox ID="txtLA_LDL3kod" runat="server" Width="90%" Height="30px" BackColor="MistyRose" Font-Size="14" ForeColor="Red" Font-Bold="true" BorderColor="Red" BorderStyle="Solid" BorderWidth="1" ReadOnly="true"></asp:TextBox>
                                                            </asp:TableCell>
                                                            <asp:TableCell Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:TextBox ID="txtLRA_LA3kod" runat="server" Width="90%" Height="30px" BackColor="MistyRose" Font-Size="14" ForeColor="Red" Font-Bold="true" BorderColor="Red" BorderStyle="Solid" BorderWidth="1" ReadOnly="true"></asp:TextBox>
                                                            </asp:TableCell>
                                                        </asp:TableRow>
                                                        <asp:TableRow Width="100%" ForeColor="Red" Font-Bold="true" Font-Size="14">
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">4k</asp:TableCell>
                                                            <asp:TableCell Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:TextBox ID="txtLDL4kod" runat="server" Width="90%" Height="30px" BackColor="MistyRose" Font-Size="14" ForeColor="Red" Font-Bold="true" BorderColor="Red" BorderStyle="Solid" BorderWidth="1" ReadOnly="true"></asp:TextBox>
                                                            </asp:TableCell>
                                                            <asp:TableCell Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:TextBox ID="txtLA4kod" runat="server" onkeypress="return isNumberKey(event)" Width="90%" Height="30px" Font-Size="14" ForeColor="Red" Font-Bold="true" BorderColor="Red" BorderStyle="Solid" BorderWidth="1"></asp:TextBox>
                                                            </asp:TableCell>
                                                            <asp:TableCell Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:TextBox ID="txtLRA4kod" runat="server" onkeypress="return isNumberKey(event)" Width="90%" Height="30px" Font-Size="14" ForeColor="Red" Font-Bold="true" BorderColor="Red" BorderStyle="Solid" BorderWidth="1"></asp:TextBox>
                                                            </asp:TableCell>
                                                            <asp:TableCell Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:TextBox ID="txtLA_LDL4kod" runat="server" Width="90%" Height="30px" BackColor="MistyRose" Font-Size="14" ForeColor="Red" Font-Bold="true" BorderColor="Red" BorderStyle="Solid" BorderWidth="1" ReadOnly="true"></asp:TextBox>
                                                            </asp:TableCell>
                                                            <asp:TableCell Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:TextBox ID="txtLRA_LA4kod" runat="server" Width="90%" Height="30px" BackColor="MistyRose" Font-Size="14" ForeColor="Red" Font-Bold="true" BorderColor="Red" BorderStyle="Solid" BorderWidth="1" ReadOnly="true"></asp:TextBox>
                                                            </asp:TableCell>
                                                        </asp:TableRow>
                                                        <asp:TableRow Width="100%" ForeColor="Red" Font-Bold="true" Font-Size="14">
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">6k</asp:TableCell>
                                                            <asp:TableCell Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:TextBox ID="txtLDL6kod" runat="server" Width="90%" Height="30px" BackColor="MistyRose" Font-Size="14" ForeColor="Red" Font-Bold="true" BorderColor="Red" BorderStyle="Solid" BorderWidth="1" ReadOnly="true"></asp:TextBox>
                                                            </asp:TableCell>
                                                            <asp:TableCell Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:TextBox ID="txtLA6kod" runat="server" onkeypress="return isNumberKey(event)" Width="90%" Height="30px" Font-Size="14" ForeColor="Red" Font-Bold="true" BorderColor="Red" BorderStyle="Solid" BorderWidth="1"></asp:TextBox>
                                                            </asp:TableCell>
                                                            <asp:TableCell Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:TextBox ID="txtLRA6kod" runat="server" onkeypress="return isNumberKey(event)" Width="90%" Height="30px" BackColor="MistyRose" Font-Size="14" ForeColor="Red" Font-Bold="true" BorderColor="Red" BorderStyle="Solid" BorderWidth="1" ReadOnly="true"></asp:TextBox>
                                                            </asp:TableCell>
                                                            <asp:TableCell Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:TextBox ID="txtLA_LDL6kod" runat="server" Width="90%" Height="30px" BackColor="MistyRose" Font-Size="14" ForeColor="Red" Font-Bold="true" BorderColor="Red" BorderStyle="Solid" BorderWidth="1" ReadOnly="true"></asp:TextBox>
                                                            </asp:TableCell>
                                                            <asp:TableCell Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:TextBox ID="txtLRA_LA6kod" runat="server" Width="90%" Height="30px" BackColor="MistyRose" Font-Size="14" ForeColor="Red" Font-Bold="true" BorderColor="Red" BorderStyle="Solid" BorderWidth="1" ReadOnly="true"></asp:TextBox>
                                                            </asp:TableCell>
                                                        </asp:TableRow>
                                                        <asp:TableRow Width="100%" ForeColor="Red" Font-Bold="true" Font-Size="14">
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">8k</asp:TableCell>
                                                            <asp:TableCell Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:TextBox ID="txtLDL8kod" runat="server" Width="90%" Height="30px" BackColor="MistyRose" Font-Size="14" ForeColor="Red" Font-Bold="true" BorderColor="Red" BorderStyle="Solid" BorderWidth="1" ReadOnly="true"></asp:TextBox>
                                                            </asp:TableCell>
                                                            <asp:TableCell Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:TextBox ID="txtLA8kod" runat="server" onkeypress="return isNumberKey(event)" Width="90%" Height="30px" Font-Size="14" ForeColor="Red" Font-Bold="true" BorderColor="Red" BorderStyle="Solid" BorderWidth="1"></asp:TextBox>
                                                            </asp:TableCell>
                                                            <asp:TableCell Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:TextBox ID="txtLRA8kod" runat="server" onkeypress="return isNumberKey(event)" Width="90%" Height="30px" BackColor="MistyRose" Font-Size="14" ForeColor="Red" Font-Bold="true" BorderColor="Red" BorderStyle="Solid" BorderWidth="1" ReadOnly="true"></asp:TextBox>
                                                            </asp:TableCell>
                                                            <asp:TableCell Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:TextBox ID="txtLA_LDL8kod" runat="server" Width="90%" Height="30px" BackColor="MistyRose" Font-Size="14" ForeColor="Red" Font-Bold="true" BorderColor="Red" BorderStyle="Solid" BorderWidth="1" ReadOnly="true"></asp:TextBox>
                                                            </asp:TableCell>
                                                            <asp:TableCell Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:TextBox ID="txtLRA_LA8kod" runat="server" Width="90%" Height="30px" BackColor="MistyRose" Font-Size="14" ForeColor="Red" Font-Bold="true" BorderColor="Red" BorderStyle="Solid" BorderWidth="1" ReadOnly="true"></asp:TextBox>
                                                            </asp:TableCell>
                                                        </asp:TableRow>
                                                    </asp:Table>
                                                </asp:Panel>
                                            </div>
                                            <div class="box">
                                                <asp:Panel ID="pnlLDLoe" runat="server" Width="467px" BackColor="AliceBlue" BorderColor="Blue" BorderStyle="Solid" BorderWidth="1">
                                                    <asp:Table ID="tbLDLoe" runat="server" Width="100%">
                                                        <asp:TableHeaderRow Width="100%" ForeColor="Blue" Font-Bold="true" Font-Size="14">
                                                            <asp:TableHeaderCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">Hz</asp:TableHeaderCell>
                                                            <asp:TableHeaderCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">LDL (dBNA)</asp:TableHeaderCell>
                                                            <asp:TableHeaderCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">LA (dBNA)</asp:TableHeaderCell>
                                                            <asp:TableHeaderCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">LRA (dBNA)</asp:TableHeaderCell>
                                                            <asp:TableHeaderCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">LA-LDL (dBNPS)</asp:TableHeaderCell>
                                                            <asp:TableHeaderCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">LRA-LA (dBNPS)</asp:TableHeaderCell>
                                                        </asp:TableHeaderRow>
                                                        <asp:TableRow Width="100%" ForeColor="Blue" Font-Bold="true" Font-Size="14">
                                                            <asp:TableCell Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">125</asp:TableCell>
                                                            <asp:TableCell Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:TextBox ID="txtLDL125oe" runat="server" Width="90%" Height="30px" BackColor="AliceBlue" Font-Size="14" ForeColor="Blue" Font-Bold="true" BorderColor="Blue" BorderStyle="Solid" BorderWidth="1" ReadOnly="true"></asp:TextBox>
                                                            </asp:TableCell>
                                                            <asp:TableCell Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:TextBox ID="txtLA125oe" runat="server" onkeypress="return isNumberKey(event)" Width="90%" Height="30px" Font-Size="14" ForeColor="Blue" Font-Bold="true" BorderColor="Blue" BorderStyle="Solid" BorderWidth="1"></asp:TextBox>
                                                            </asp:TableCell>
                                                            <asp:TableCell Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:TextBox ID="txtLRA125oe" runat="server" onkeypress="return isNumberKey(event)" Width="90%" Height="30px" BackColor="AliceBlue" Font-Size="14" ForeColor="Blue" Font-Bold="true" BorderColor="Blue" BorderStyle="Solid" BorderWidth="1" ReadOnly="true"></asp:TextBox>
                                                            </asp:TableCell>
                                                            <asp:TableCell Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:TextBox ID="txtLA_LDL125oe" runat="server" Width="90%" Height="30px" BackColor="AliceBlue" Font-Size="14" ForeColor="Blue" Font-Bold="true" BorderColor="Blue" BorderStyle="Solid" BorderWidth="1" ReadOnly="true"></asp:TextBox>
                                                            </asp:TableCell>
                                                            <asp:TableCell Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:TextBox ID="txtLRA_LA125oe" runat="server" Width="90%" Height="30px" BackColor="AliceBlue" Font-Size="14" ForeColor="Blue" Font-Bold="true" BorderColor="Blue" BorderStyle="Solid" BorderWidth="1" ReadOnly="true"></asp:TextBox>
                                                            </asp:TableCell>
                                                        </asp:TableRow>
                                                        <asp:TableRow Width="100%" ForeColor="Blue" Font-Bold="true" Font-Size="14">
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">250</asp:TableCell>
                                                            <asp:TableCell Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:TextBox ID="txtLDL250oe" runat="server" Width="90%" Height="30px" BackColor="AliceBlue" Font-Size="14" ForeColor="Blue" Font-Bold="true" BorderColor="Blue" BorderStyle="Solid" BorderWidth="1" ReadOnly="true"></asp:TextBox>
                                                            </asp:TableCell>
                                                            <asp:TableCell Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:TextBox ID="txtLA250oe" runat="server" onkeypress="return isNumberKey(event)" Width="90%" Height="30px" Font-Size="14" ForeColor="Blue" Font-Bold="true" BorderColor="Blue" BorderStyle="Solid" BorderWidth="1"></asp:TextBox>
                                                            </asp:TableCell>
                                                            <asp:TableCell Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:TextBox ID="txtLRA250oe" runat="server" onkeypress="return isNumberKey(event)" Width="90%" Height="30px" BackColor="AliceBlue" Font-Size="14" ForeColor="Blue" Font-Bold="true" BorderColor="Blue" BorderStyle="Solid" BorderWidth="1" ReadOnly="true"></asp:TextBox>
                                                            </asp:TableCell>
                                                            <asp:TableCell Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:TextBox ID="txtLA_LDL250oe" runat="server" Width="90%" Height="30px" BackColor="AliceBlue" Font-Size="14" ForeColor="Blue" Font-Bold="true" BorderColor="Blue" BorderStyle="Solid" BorderWidth="1" ReadOnly="true"></asp:TextBox>
                                                            </asp:TableCell>
                                                            <asp:TableCell Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:TextBox ID="txtLRA_LA250oe" runat="server" Width="90%" Height="30px" BackColor="AliceBlue" Font-Size="14" ForeColor="Blue" Font-Bold="true" BorderColor="Blue" BorderStyle="Solid" BorderWidth="1" ReadOnly="true"></asp:TextBox>
                                                            </asp:TableCell>
                                                        </asp:TableRow>
                                                        <asp:TableRow Width="100%" ForeColor="Blue" Font-Bold="true" Font-Size="14">
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">500</asp:TableCell>
                                                            <asp:TableCell Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:TextBox ID="txtLDL500oe" runat="server" Width="90%" Height="30px" BackColor="AliceBlue" Font-Size="14" ForeColor="Blue" Font-Bold="true" BorderColor="Blue" BorderStyle="Solid" BorderWidth="1" ReadOnly="true"></asp:TextBox>
                                                            </asp:TableCell>
                                                            <asp:TableCell Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:TextBox ID="txtLA500oe" runat="server" onkeypress="return isNumberKey(event)" Width="90%" Height="30px" Font-Size="14" ForeColor="Blue" Font-Bold="true" BorderColor="Blue" BorderStyle="Solid" BorderWidth="1"></asp:TextBox>
                                                            </asp:TableCell>
                                                            <asp:TableCell Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:TextBox ID="txtLRA500oe" runat="server" onkeypress="return isNumberKey(event)" Width="90%" Height="30px" Font-Size="14" ForeColor="Blue" Font-Bold="true" BorderColor="Blue" BorderStyle="Solid" BorderWidth="1"></asp:TextBox>
                                                            </asp:TableCell>
                                                            <asp:TableCell Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:TextBox ID="txtLA_LDL500oe" runat="server" Width="90%" Height="30px" BackColor="AliceBlue" Font-Size="14" ForeColor="Blue" Font-Bold="true" BorderColor="Blue" BorderStyle="Solid" BorderWidth="1" ReadOnly="true"></asp:TextBox>
                                                            </asp:TableCell>
                                                            <asp:TableCell Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:TextBox ID="txtLRA_LA500oe" runat="server" Width="90%" Height="30px" BackColor="AliceBlue" Font-Size="14" ForeColor="Blue" Font-Bold="true" BorderColor="Blue" BorderStyle="Solid" BorderWidth="1" ReadOnly="true"></asp:TextBox>
                                                            </asp:TableCell>
                                                        </asp:TableRow>
                                                        <asp:TableRow Width="100%" ForeColor="Blue" Font-Bold="true" Font-Size="14">
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">750</asp:TableCell>
                                                            <asp:TableCell Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:TextBox ID="txtLDL750oe" runat="server" Width="90%" Height="30px" BackColor="AliceBlue" Font-Size="14" ForeColor="Blue" Font-Bold="true" BorderColor="Blue" BorderStyle="Solid" BorderWidth="1" ReadOnly="true"></asp:TextBox>
                                                            </asp:TableCell>
                                                            <asp:TableCell Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:TextBox ID="txtLA750oe" runat="server" onkeypress="return isNumberKey(event)" Width="90%" Height="30px" Font-Size="14" ForeColor="Blue" Font-Bold="true" BorderColor="Blue" BorderStyle="Solid" BorderWidth="1"></asp:TextBox>
                                                            </asp:TableCell>
                                                            <asp:TableCell Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:TextBox ID="txtLRA750oe" runat="server" onkeypress="return isNumberKey(event)" Width="90%" Height="30px" BackColor="AliceBlue" Font-Size="14" ForeColor="Blue" Font-Bold="true" BorderColor="Blue" BorderStyle="Solid" BorderWidth="1" ReadOnly="true"></asp:TextBox>
                                                            </asp:TableCell>
                                                            <asp:TableCell Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:TextBox ID="txtLA_LDL750oe" runat="server" Width="90%" Height="30px" BackColor="AliceBlue" Font-Size="14" ForeColor="Blue" Font-Bold="true" BorderColor="Blue" BorderStyle="Solid" BorderWidth="1" ReadOnly="true"></asp:TextBox>
                                                            </asp:TableCell>
                                                            <asp:TableCell Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:TextBox ID="txtLRA_LA750oe" runat="server" Width="90%" Height="30px" BackColor="AliceBlue" Font-Size="14" ForeColor="Blue" Font-Bold="true" BorderColor="Blue" BorderStyle="Solid" BorderWidth="1" ReadOnly="true"></asp:TextBox>
                                                            </asp:TableCell>
                                                        </asp:TableRow>
                                                        <asp:TableRow Width="100%" ForeColor="Blue" Font-Bold="true" Font-Size="14">
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">1k</asp:TableCell>
                                                            <asp:TableCell Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:TextBox ID="txtLDL1koe" runat="server" Width="90%" Height="30px" BackColor="AliceBlue" Font-Size="14" ForeColor="Blue" Font-Bold="true" BorderColor="Blue" BorderStyle="Solid" BorderWidth="1" ReadOnly="true"></asp:TextBox>
                                                            </asp:TableCell>
                                                            <asp:TableCell Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:TextBox ID="txtLA1koe" runat="server" onkeypress="return isNumberKey(event)" Width="90%" Height="30px" Font-Size="14" ForeColor="Blue" Font-Bold="true" BorderColor="Blue" BorderStyle="Solid" BorderWidth="1"></asp:TextBox>
                                                            </asp:TableCell>
                                                            <asp:TableCell Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:TextBox ID="txtLRA1koe" runat="server" onkeypress="return isNumberKey(event)" Width="90%" Height="30px" Font-Size="14" ForeColor="Blue" Font-Bold="true" BorderColor="Blue" BorderStyle="Solid" BorderWidth="1"></asp:TextBox>
                                                            </asp:TableCell>
                                                            <asp:TableCell Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:TextBox ID="txtLA_LDL1koe" runat="server" Width="90%" Height="30px" BackColor="AliceBlue" Font-Size="14" ForeColor="Blue" Font-Bold="true" BorderColor="Blue" BorderStyle="Solid" BorderWidth="1" ReadOnly="true"></asp:TextBox>
                                                            </asp:TableCell>
                                                            <asp:TableCell Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:TextBox ID="txtLRA_LA1koe" runat="server" Width="90%" Height="30px" BackColor="AliceBlue" Font-Size="14" ForeColor="Blue" Font-Bold="true" BorderColor="Blue" BorderStyle="Solid" BorderWidth="1" ReadOnly="true"></asp:TextBox>
                                                            </asp:TableCell>
                                                        </asp:TableRow>
                                                        <asp:TableRow Width="100%" ForeColor="Blue" Font-Bold="true" Font-Size="14">
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">1,5k</asp:TableCell>
                                                            <asp:TableCell Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:TextBox ID="txtLDL1e5koe" runat="server" Width="90%" Height="30px" BackColor="AliceBlue" Font-Size="14" ForeColor="Blue" Font-Bold="true" BorderColor="Blue" BorderStyle="Solid" BorderWidth="1" ReadOnly="true"></asp:TextBox>
                                                            </asp:TableCell>
                                                            <asp:TableCell Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:TextBox ID="txtLA1e5koe" runat="server" onkeypress="return isNumberKey(event)" Width="90%" Height="30px" Font-Size="14" ForeColor="Blue" Font-Bold="true" BorderColor="Blue" BorderStyle="Solid" BorderWidth="1"></asp:TextBox>
                                                            </asp:TableCell>
                                                            <asp:TableCell Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:TextBox ID="txtLRA1e5koe" runat="server" onkeypress="return isNumberKey(event)" Width="90%" Height="30px" BackColor="AliceBlue" Font-Size="14" ForeColor="Blue" Font-Bold="true" BorderColor="Blue" BorderStyle="Solid" BorderWidth="1" ReadOnly="true"></asp:TextBox>
                                                            </asp:TableCell>
                                                            <asp:TableCell Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:TextBox ID="txtLA_LDL1e5koe" runat="server" Width="90%" Height="30px" BackColor="AliceBlue" Font-Size="14" ForeColor="Blue" Font-Bold="true" BorderColor="Blue" BorderStyle="Solid" BorderWidth="1" ReadOnly="true"></asp:TextBox>
                                                            </asp:TableCell>
                                                            <asp:TableCell Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:TextBox ID="txtLRA_LA1e5koe" runat="server" Width="90%" Height="30px" BackColor="AliceBlue" Font-Size="14" ForeColor="Blue" Font-Bold="true" BorderColor="Blue" BorderStyle="Solid" BorderWidth="1" ReadOnly="true"></asp:TextBox>
                                                            </asp:TableCell>
                                                        </asp:TableRow>
                                                        <asp:TableRow Width="100%" ForeColor="Blue" Font-Bold="true" Font-Size="14">
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">2k</asp:TableCell>
                                                            <asp:TableCell Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:TextBox ID="txtLDL2koe" runat="server" Width="90%" Height="30px" BackColor="AliceBlue" Font-Size="14" ForeColor="Blue" Font-Bold="true" BorderColor="Blue" BorderStyle="Solid" BorderWidth="1" ReadOnly="true"></asp:TextBox>
                                                            </asp:TableCell>
                                                            <asp:TableCell Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:TextBox ID="txtLA2koe" runat="server" onkeypress="return isNumberKey(event)" Width="90%" Height="30px" Font-Size="14" ForeColor="Blue" Font-Bold="true" BorderColor="Blue" BorderStyle="Solid" BorderWidth="1"></asp:TextBox>
                                                            </asp:TableCell>
                                                            <asp:TableCell Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:TextBox ID="txtLRA2koe" runat="server" onkeypress="return isNumberKey(event)" Width="90%" Height="30px" Font-Size="14" ForeColor="Blue" Font-Bold="true" BorderColor="Blue" BorderStyle="Solid" BorderWidth="1"></asp:TextBox>
                                                            </asp:TableCell>
                                                            <asp:TableCell Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:TextBox ID="txtLA_LDL2koe" runat="server" Width="90%" Height="30px" BackColor="AliceBlue" Font-Size="14" ForeColor="Blue" Font-Bold="true" BorderColor="Blue" BorderStyle="Solid" BorderWidth="1" ReadOnly="true"></asp:TextBox>
                                                            </asp:TableCell>
                                                            <asp:TableCell Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:TextBox ID="txtLRA_LA2koe" runat="server" Width="90%" Height="30px" BackColor="AliceBlue" Font-Size="14" ForeColor="Blue" Font-Bold="true" BorderColor="Blue" BorderStyle="Solid" BorderWidth="1" ReadOnly="true"></asp:TextBox>
                                                            </asp:TableCell>
                                                        </asp:TableRow>
                                                        <asp:TableRow Width="100%" ForeColor="Blue" Font-Bold="true" Font-Size="14">
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">3k</asp:TableCell>
                                                            <asp:TableCell Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:TextBox ID="txtLDL3koe" runat="server" Width="90%" Height="30px" BackColor="AliceBlue" Font-Size="14" ForeColor="Blue" Font-Bold="true" BorderColor="Blue" BorderStyle="Solid" BorderWidth="1" ReadOnly="true"></asp:TextBox>
                                                            </asp:TableCell>
                                                            <asp:TableCell Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:TextBox ID="txtLA3koe" runat="server" onkeypress="return isNumberKey(event)" Width="90%" Height="30px" Font-Size="14" ForeColor="Blue" Font-Bold="true" BorderColor="Blue" BorderStyle="Solid" BorderWidth="1"></asp:TextBox>
                                                            </asp:TableCell>
                                                            <asp:TableCell Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:TextBox ID="txtLRA3koe" runat="server" onkeypress="return isNumberKey(event)" Width="90%" Height="30px" BackColor="AliceBlue" Font-Size="14" ForeColor="Blue" Font-Bold="true" BorderColor="Blue" BorderStyle="Solid" BorderWidth="1" ReadOnly="true"></asp:TextBox>
                                                            </asp:TableCell>
                                                            <asp:TableCell Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:TextBox ID="txtLA_LDL3koe" runat="server" Width="90%" Height="30px" BackColor="AliceBlue" Font-Size="14" ForeColor="Blue" Font-Bold="true" BorderColor="Blue" BorderStyle="Solid" BorderWidth="1" ReadOnly="true"></asp:TextBox>
                                                            </asp:TableCell>
                                                            <asp:TableCell Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:TextBox ID="txtLRA_LA3koe" runat="server" Width="90%" Height="30px" BackColor="AliceBlue" Font-Size="14" ForeColor="Blue" Font-Bold="true" BorderColor="Blue" BorderStyle="Solid" BorderWidth="1" ReadOnly="true"></asp:TextBox>
                                                            </asp:TableCell>
                                                        </asp:TableRow>
                                                        <asp:TableRow Width="100%" ForeColor="Blue" Font-Bold="true" Font-Size="14">
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">4k</asp:TableCell>
                                                            <asp:TableCell Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:TextBox ID="txtLDL4koe" runat="server" Width="90%" Height="30px" BackColor="AliceBlue" Font-Size="14" ForeColor="Blue" Font-Bold="true" BorderColor="Blue" BorderStyle="Solid" BorderWidth="1" ReadOnly="true"></asp:TextBox>
                                                            </asp:TableCell>
                                                            <asp:TableCell Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:TextBox ID="txtLA4koe" runat="server" onkeypress="return isNumberKey(event)" Width="90%" Height="30px" Font-Size="14" ForeColor="Blue" Font-Bold="true" BorderColor="Blue" BorderStyle="Solid" BorderWidth="1"></asp:TextBox>
                                                            </asp:TableCell>
                                                            <asp:TableCell Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:TextBox ID="txtLRA4koe" runat="server" onkeypress="return isNumberKey(event)" Width="90%" Height="30px" Font-Size="14" ForeColor="Blue" Font-Bold="true" BorderColor="Blue" BorderStyle="Solid" BorderWidth="1"></asp:TextBox>
                                                            </asp:TableCell>
                                                            <asp:TableCell Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:TextBox ID="txtLA_LDL4koe" runat="server" Width="90%" Height="30px" BackColor="AliceBlue" Font-Size="14" ForeColor="Blue" Font-Bold="true" BorderColor="Blue" BorderStyle="Solid" BorderWidth="1" ReadOnly="true"></asp:TextBox>
                                                            </asp:TableCell>
                                                            <asp:TableCell Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:TextBox ID="txtLRA_LA4koe" runat="server" Width="90%" Height="30px" BackColor="AliceBlue" Font-Size="14" ForeColor="Blue" Font-Bold="true" BorderColor="Blue" BorderStyle="Solid" BorderWidth="1" ReadOnly="true"></asp:TextBox>
                                                            </asp:TableCell>
                                                        </asp:TableRow>
                                                        <asp:TableRow Width="100%" ForeColor="Blue" Font-Bold="true" Font-Size="14">
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">6k</asp:TableCell>
                                                            <asp:TableCell Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:TextBox ID="txtLDL6koe" runat="server" Width="90%" Height="30px" BackColor="AliceBlue" Font-Size="14" ForeColor="Blue" Font-Bold="true" BorderColor="Blue" BorderStyle="Solid" BorderWidth="1" ReadOnly="true"></asp:TextBox>
                                                            </asp:TableCell>
                                                            <asp:TableCell Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:TextBox ID="txtLA6koe" runat="server" onkeypress="return isNumberKey(event)" Width="90%" Height="30px" Font-Size="14" ForeColor="Blue" Font-Bold="true" BorderColor="Blue" BorderStyle="Solid" BorderWidth="1"></asp:TextBox>
                                                            </asp:TableCell>
                                                            <asp:TableCell Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:TextBox ID="txtLRA6koe" runat="server" onkeypress="return isNumberKey(event)" Width="90%" Height="30px" BackColor="AliceBlue" Font-Size="14" ForeColor="Blue" Font-Bold="true" BorderColor="Blue" BorderStyle="Solid" BorderWidth="1" ReadOnly="true"></asp:TextBox>
                                                            </asp:TableCell>
                                                            <asp:TableCell Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:TextBox ID="txtLA_LDL6koe" runat="server" Width="90%" Height="30px" BackColor="AliceBlue" Font-Size="14" ForeColor="Blue" Font-Bold="true" BorderColor="Blue" BorderStyle="Solid" BorderWidth="1" ReadOnly="true"></asp:TextBox>
                                                            </asp:TableCell>
                                                            <asp:TableCell Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:TextBox ID="txtLRA_LA6koe" runat="server" Width="90%" Height="30px" BackColor="AliceBlue" Font-Size="14" ForeColor="Blue" Font-Bold="true" BorderColor="Blue" BorderStyle="Solid" BorderWidth="1" ReadOnly="true"></asp:TextBox>
                                                            </asp:TableCell>
                                                        </asp:TableRow>
                                                        <asp:TableRow Width="100%" ForeColor="Blue" Font-Bold="true" Font-Size="14">
                                                            <asp:TableCell Width="10%" Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">8k</asp:TableCell>
                                                            <asp:TableCell Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:TextBox ID="txtLDL8koe" runat="server" Width="90%" Height="30px" BackColor="AliceBlue" Font-Size="14" ForeColor="Blue" Font-Bold="true" BorderColor="Blue" BorderStyle="Solid" BorderWidth="1" ReadOnly="true"></asp:TextBox>
                                                            </asp:TableCell>
                                                            <asp:TableCell Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:TextBox ID="txtLA8koe" runat="server" onkeypress="return isNumberKey(event)" Width="90%" Height="30px" Font-Size="14" ForeColor="Blue" Font-Bold="true" BorderColor="Blue" BorderStyle="Solid" BorderWidth="1"></asp:TextBox>
                                                            </asp:TableCell>
                                                            <asp:TableCell Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:TextBox ID="txtLRA8koe" runat="server" onkeypress="return isNumberKey(event)" Width="90%" Height="30px" BackColor="AliceBlue" Font-Size="14" ForeColor="Blue" Font-Bold="true" BorderColor="Blue" BorderStyle="Solid" BorderWidth="1" ReadOnly="true"></asp:TextBox>
                                                            </asp:TableCell>
                                                            <asp:TableCell Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:TextBox ID="txtLA_LDL8koe" runat="server" Width="90%" Height="30px" BackColor="AliceBlue" Font-Size="14" ForeColor="Blue" Font-Bold="true" BorderColor="Blue" BorderStyle="Solid" BorderWidth="1" ReadOnly="true"></asp:TextBox>
                                                            </asp:TableCell>
                                                            <asp:TableCell Height="30px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                                                <asp:TextBox ID="txtLRA_LA8koe" runat="server" Width="90%" Height="30px" BackColor="AliceBlue" Font-Size="14" ForeColor="Blue" Font-Bold="true" BorderColor="Blue" BorderStyle="Solid" BorderWidth="1" ReadOnly="true"></asp:TextBox>
                                                            </asp:TableCell>
                                                        </asp:TableRow>
                                                    </asp:Table>
                                                </asp:Panel>
                                            </div>
                                        </div>
                                        <asp:Panel ID="pnlLegendaLDL" runat="server" Width="99.6%" HorizontalAlign="Justify" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1">
                                            <asp:TextBox ID="txtLegendaLDL" runat="server" Width="99.6%" Enabled="false">Legenda: Hz = Hertz; LDL = Limiar de Desconforto; LA = Limiar Auditivo; LRA = Limiar do Reflexo Auditivo.</asp:TextBox>
                                        </asp:Panel>
                                        <br />
                                    </asp:TableCell>
                                    <asp:TableCell Width="20%" Height="100%">
                                        <div class="container" style="text-align: center;">
                                            <asp:Panel ID="pnlLateralBtnOE" runat="server">
                                                <asp:Table ID="tbLateralBtnOE" runat="server">
                                                    <asp:TableRow Width="100%">
                                                        <asp:TableCell Width="100%"></asp:TableCell>
                                                    </asp:TableRow>
                                                    <asp:TableRow Width="100%">
                                                        <asp:TableCell Width="100%"></asp:TableCell>
                                                    </asp:TableRow>
                                                    <asp:TableRow Width="100%">
                                                        <asp:TableCell Width="100%"></asp:TableCell>
                                                    </asp:TableRow>
                                                    <asp:TableRow Width="100%">
                                                        <asp:TableCell Width="100%"></asp:TableCell>
                                                    </asp:TableRow>
                                                    <asp:TableRow Width="100%">
                                                        <asp:TableCell Width="100%">
                                                            <asp:Button ID="btnLAoe" runat="server" Text=" Plotar LA" BorderStyle="Solid" BorderWidth="1" Font-Bold="true" Font-Size="12" Width="100%" Height="35px" CssClass="cantos-arredondados-hand" OnClick="btnLAoe_Click" ToolTip="Permite trazer os valores das VAs plotados na Audiometria Completa."/>
                                                        </asp:TableCell>
                                                    </asp:TableRow>
                                                    <asp:TableRow Width="100%">
                                                        <asp:TableCell Width="100%">
                                                            <asp:Button ID="btnLRAoe" runat="server" Text="Plotar LRA" BorderStyle="Solid" BorderWidth="1" Font-Bold="true" Font-Size="12" Width="100%" Height="35px" CssClass="cantos-arredondados-hand" OnClick="btnLRAoe_Click" ToolTip="Permite trazer os valores dos Reflexos do m. do Estapédio plotados na Impedanciometria."/>
                                                        </asp:TableCell>
                                                    </asp:TableRow>
                                                    <asp:TableRow Width="100%">
                                                        <asp:TableCell Width="100%">
                                                            <asp:Button ID="btnLALDLoe" runat="server" Text="LA - LDL" BorderStyle="Solid" BorderWidth="1" Font-Bold="true" Font-Size="12" Width="100%" Height="35px" CssClass="cantos-arredondados-hand" OnClick="btnLALDLoe_Click" ToolTip="Permite calcular a diferença entre o LDL e o LA para cada frequência."/>
                                                        </asp:TableCell>
                                                    </asp:TableRow>
                                                    <asp:TableRow Width="100%">
                                                        <asp:TableCell Width="100%">
                                                            <asp:Button ID="btnLRALAoe" runat="server" Text="LRA - LA" BorderStyle="Solid" BorderWidth="1" Font-Bold="true" Font-Size="12" Width="100%" Height="35px" CssClass="cantos-arredondados-hand" OnClick="btnLRALAoe_Click" ToolTip="Permite calcular a diferença entre o LDL e o LRA para cada frequência."/>
                                                        </asp:TableCell>
                                                    </asp:TableRow>
                                                    <asp:TableRow Width="100%">
                                                        <asp:TableCell Width="100%"></asp:TableCell>
                                                    </asp:TableRow>
                                                    <asp:TableRow Width="100%">
                                                        <asp:TableCell Width="100%"></asp:TableCell>
                                                    </asp:TableRow>
                                                    <asp:TableRow Width="100%">
                                                        <asp:TableCell Width="100%"></asp:TableCell>
                                                    </asp:TableRow>
                                                    <asp:TableRow Width="100%">
                                                        <asp:TableCell Width="100%"></asp:TableCell>
                                                    </asp:TableRow>
                                                    <asp:TableRow Width="100%">
                                                        <asp:TableCell Width="100%"></asp:TableCell>
                                                    </asp:TableRow>
                                                </asp:Table>
                                            </asp:Panel>
                                        </div>
                                    </asp:TableCell>
                                </asp:TableRow>
                            </asp:Table>
                        </div>
                        <div id="tabVocal" class="tab-content" style="width: 100%; height: 850px;">
                            <asp:Table ID="AudiometriaVocalClinica" runat="server" Width="100%" BorderColor="#cccccc" BorderWidth="2px" BorderStyle="Solid">
                                <asp:TableHeaderRow Width="100%">
                                    <asp:TableHeaderCell BackColor="#ff0000" Font-Bold="true" Font-Size="12" ForeColor="White" Width="20%" Height="35px">Orelha Direita</asp:TableHeaderCell>
                                    <asp:TableHeaderCell BackColor="#cccccc" Font-Bold="true" Font-Size="18" Width="60%" Height="35px">Desconforto para Fala</asp:TableHeaderCell>
                                    <asp:TableHeaderCell BackColor="#0033cc" Font-Bold="true" Font-Size="12" ForeColor="White" Width="20%" Height="35px">Orelha Esquerda</asp:TableHeaderCell>
                                </asp:TableHeaderRow>
                                <asp:TableRow>
                                    <asp:TableCell Width="20%" Height="100%"></asp:TableCell>
                                    <asp:TableCell Width="60%" Height="100%">
                                        <div class="container" style="text-align: center;">
                                            <div class="box">
                                                <asp:Panel ID="pnlAudioVocalOD" runat="server" Width="100%" BackColor="MistyRose" BorderColor="Red" BorderStyle="Solid" BorderWidth="1">
                                                    <div style="text-align: center;">
                                                        <br />
                                                        <asp:Label ID="lblMediaOD" runat="server" Text="Média:" ForeColor="Red" Font-Bold="true"></asp:Label><br />
                                                        <div class="box">
                                                            <div style="float: left; width: 50%">
                                                                <asp:Panel ID="pnlMediaLAod" runat="server" Width="100%">
                                                                    <asp:Label ID="lblMediaLAod" runat="server" Text="Para LA (dBNA):" ForeColor="Red" Font-Bold="true"></asp:Label><br />
                                                                    <asp:TextBox ID="mEDIAodTextBox" runat="server" BorderColor="Red" BorderStyle="Solid" BorderWidth="1" ForeColor="Red" Font-Bold="true" Font-Size="14" Width="90%" Height="40px" ToolTip="Caso a média para os limiares auditivos tenha sido calculada previamente no aplicativo de Audiometria Completa, o valor aparecerá automaticamente neste campo. Do contrário, faça o procedimento manualmente. Calcule e digite o valor no campo." CssClass="cantos-arredondados-alinhamento"></asp:TextBox>
                                                                </asp:Panel>
                                                            </div>
                                                            <div style="float: left; width: 50%">
                                                                <asp:Panel ID="pnlMediaLDLod" runat="server" Width="100%">
                                                                    <asp:Label ID="lblMediaLDLod" runat="server" Text="Para LDL (dBNA):" ForeColor="Red" Font-Bold="true"></asp:Label><br />
                                                                    <asp:TextBox ID="txtMediaLDLod" runat="server" BorderColor="Red" BorderStyle="Solid" BorderWidth="1" ForeColor="Red" Font-Bold="true" Font-Size="14" Width="90%" Height="40px"  CssClass="cantos-arredondados-alinhamento"></asp:TextBox>
                                                                </asp:Panel><br />
                                                            </div>
                                                        </div>
                                                        <br />
                                                        <br />
                                                        <label style="color: red;"><b>Limiares:</b></label><br />
                                                        <div class="box">
                                                            <div style="float: left; width: 50%">
                                                                <asp:Panel ID="pnlIPRFmomOd" runat="server" Width="100%">
                                                                    <label style="color: red;"><b>LA (dBNA):</b></label><br />
                                                                    <asp:TextBox ID="txtLimiarLAod" runat="server" BorderColor="Red" BorderStyle="Solid" BorderWidth="1" ForeColor="Red" Font-Bold="true" Font-Size="14" Width="92%" Height="41px" ToolTip="Escolha ao lado entre SRT e SDT. Caso o respectivo valor já tenha sido calculado no aplicativo Audiometria Completa, será preenchido automaticamente. Do contrário, realize o cálculo e proceda com o preenchimento manualmente." CssClass="cantos-arredondados-alinhamento"></asp:TextBox>
                                                                </asp:Panel>
                                                            </div>
                                                            <div style="float: left; width: 50%">
                                                                <asp:Panel ID="pnlIPRFdissOd" runat="server" Width="100%">
                                                                    <label style="color: red;"><b>SRT / SDT:</b></label><br />
                                                                    <asp:DropDownList ID="ddlIPRFdisOd" runat="server" BorderColor="Red" BorderStyle="Solid" BorderWidth="1" ForeColor="Red" Font-Bold="true" Font-Size="14" Width="93%" Height="45px" CssClass="cantos-arredondados-alinhamento"></asp:DropDownList>
                                                                </asp:Panel>
                                                                <br />
                                                            </div>
                                                        </div>
                                                        <div class="box">
                                                            <div style="float: left; width: 50%">
                                                                <asp:Panel ID="pnlLimiarLDLod" runat="server" Width="100%">
                                                                    <label style="color: red;"><b>LDL (dBNA):</b></label><br />
                                                                    <asp:TextBox ID="txtLimiarLDLod" runat="server" BorderColor="Red" BorderStyle="Solid" BorderWidth="1" ForeColor="Red" Font-Bold="true" Font-Size="14" Width="92%" Height="41px" CssClass="cantos-arredondados-alinhamento"></asp:TextBox>
                                                                </asp:Panel>
                                                            </div>
                                                            <div style="float: left; width: 50%">
                                                                <asp:Panel ID="pnlTipoPesqOD" runat="server" Width="100%">
                                                                    <label style="color: red;"><b>SRT / SDT:</b></label><br />
                                                                    <asp:DropDownList ID="ddlIPRFmonOd" runat="server" BorderColor="Red" BorderStyle="Solid" BorderWidth="1" ForeColor="Red" Font-Bold="true" Font-Size="14" Width="93%" Height="45px" CssClass="cantos-arredondados-alinhamento"></asp:DropDownList>
                                                                </asp:Panel>
                                                                <br />
                                                            </div>
                                                        </div>
                                                        <label style="color: red;"><b>LA - LDL (dBNPS)</b></label>
                                                        <asp:TextBox ID="txtSRTOD" runat="server" BorderColor="Red" BorderStyle="Solid" BorderWidth="1" ForeColor="Red" Font-Bold="true" Font-Size="14" Width="95%" Height="40px" CssClass="cantos-arredondados-alinhamento"></asp:TextBox>
                                                        <br />
                                                        <br />
                                                    </div>
                                                </asp:Panel>
                                            </div>
                                            <div class="box">
                                                <asp:Panel ID="pnlAudioVocalOE" runat="server" Width="100%" BackColor="AliceBlue" BorderColor="Blue" BorderStyle="Solid" BorderWidth="1">
                                                    <div style="text-align: center;">
                                                        <br />
                                                        <asp:Label ID="lblMediaOE" runat="server" Text="Média:" ForeColor="Blue" Font-Bold="true"></asp:Label><br />
                                                        <div class="box">
                                                            <div style="float: left; width: 50%">
                                                                <asp:Panel ID="pnlMediaLAoe" runat="server" Width="100%">
                                                                    <asp:Label ID="lblMediaLAoe" runat="server" Text="Para LA (dBNA):" ForeColor="Blue" Font-Bold="true"></asp:Label><br />
                                                                    <asp:TextBox ID="mEDIAoeTextBox" runat="server" BorderColor="Blue" BorderStyle="Solid" BorderWidth="1" ForeColor="Blue" Font-Bold="true" Font-Size="14" Width="90%" Height="40px" ToolTip="Caso a média para os limiares auditivos tenha sido calculada previamente no aplicativo de Audiometria Completa, o valor aparecerá automaticamente neste campo. Do contrário, faça o procedimento manualmente. Calcule e digite o valor no campo." CssClass="cantos-arredondados-alinhamento"></asp:TextBox>
                                                                </asp:Panel>
                                                            </div>
                                                            <div style="float: left; width: 50%">
                                                                <asp:Panel ID="pnlMediaLDLoe" runat="server" Width="100%">
                                                                    <asp:Label ID="lblMediaLDLoe" runat="server" Text="Para LDL (dBNA):" ForeColor="Blue" Font-Bold="true"></asp:Label><br />
                                                                    <asp:TextBox ID="txtMediaLDLoe" runat="server" BorderColor="Blue" BorderStyle="Solid" BorderWidth="1" ForeColor="Blue" Font-Bold="true" Font-Size="14" Width="90%" Height="40px" CssClass="cantos-arredondados-alinhamento"></asp:TextBox>
                                                                </asp:Panel>
                                                                <br />
                                                            </div>
                                                        </div>
                                                        <br />
                                                        <br />
                                                        <label style="color: blue;"><b>Limiares:</b></label><br />
                                                        <div class="box">
                                                            <div style="float: left; width: 50%">
                                                                <asp:Panel ID="pnlIPRFmomOe" runat="server" Width="100%">
                                                                    <label style="color: blue;"><b>LA (dBNA):</b></label><br />
                                                                    <asp:TextBox ID="txtLimiarLAoe" runat="server" BorderColor="Blue" BorderStyle="Solid" BorderWidth="1" ForeColor="Blue" Font-Bold="true" Font-Size="14" Width="92%" Height="41px" ToolTip="Escolha ao lado entre SRT e SDT. Caso o respectivo valor já tenha sido calculado no aplicativo Audiometria Completa, será preenchido automaticamente. Do contrário, realize o cálculo e proceda com o preenchimento manualmente." CssClass="cantos-arredondados-alinhamento"></asp:TextBox>
                                                                </asp:Panel>
                                                            </div>
                                                            <div style="float: left; width: 50%">
                                                                <asp:Panel ID="pnlIPRFdissOe" runat="server" Width="100%">
                                                                    <label style="color: blue;"><b>SRT / SDT:</b></label><br />
                                                                    <asp:DropDownList ID="ddlIPRFdisOe" runat="server" BorderColor="Blue" BorderStyle="Solid" BorderWidth="1" ForeColor="Blue" Font-Bold="true" Font-Size="14" Width="93%" Height="45px" CssClass="cantos-arredondados-alinhamento"></asp:DropDownList>
                                                                </asp:Panel>
                                                                <br />
                                                            </div>
                                                        </div>
                                                        <div class="box">
                                                            <div style="float: left; width: 50%">
                                                                <asp:Panel ID="pnlLimiarLDLoe" runat="server" Width="100%">
                                                                    <label style="color: blue;"><b>LDL (dBNA):</b></label><br />
                                                                    <asp:TextBox ID="txtLimiarLDLoe" runat="server" BorderColor="Blue" BorderStyle="Solid" BorderWidth="1" ForeColor="Blue" Font-Bold="true" Font-Size="14" Width="92%" Height="41px" CssClass="cantos-arredondados-alinhamento"></asp:TextBox>
                                                                </asp:Panel>
                                                            </div>
                                                            <div style="float: left; width: 50%">
                                                                <asp:Panel ID="pnlTipoPesqOE" runat="server" Width="100%">
                                                                    <label style="color: blue;"><b>SRT / SDT:</b></label><br />
                                                                    <asp:DropDownList ID="ddlIPRFmonOe" runat="server" BorderColor="Blue" BorderStyle="Solid" BorderWidth="1" ForeColor="Blue" Font-Bold="true" Font-Size="14" Width="93%" Height="45px" CssClass="cantos-arredondados-alinhamento"></asp:DropDownList>
                                                                </asp:Panel>
                                                                <br />
                                                            </div>
                                                        </div>
                                                        <label style="color: blue;"><b>LA - LDL (dBNPS)</b></label>
                                                        <asp:TextBox ID="txtSRTOE" runat="server" BorderColor="Blue" BorderStyle="Solid" BorderWidth="1" ForeColor="Blue" Font-Bold="true" Font-Size="14" Width="95%" Height="40px" CssClass="cantos-arredondados-alinhamento"></asp:TextBox>
                                                        <br />
                                                        <br />
                                                    </div>
                                                </asp:Panel>
                                            </div>
                                        </div>
                                        <div style="text-align: center;">
                                            <br />
                                            <div class="box" id="audioVocalOD" runat="server">
                                                <asp:Button ID="btnMediaTritonal" runat="server" Text="Média Tritonal (X/3)" BackColor="#00cc99" BorderStyle="Solid" BorderWidth="1" Font-Bold="true" Font-Size="18" Width="100%" Height="50px" CssClass="cantos-arredondados-hand" OnClick="btnMediaTritonal_Click" />
                                            </div>
                                            <br />
                                            <div class="box" id="audioVocalOE" runat="server">
                                                <asp:Button ID="btnMediaQuadritonal" runat="server" Text="Média Quadritonal (X/4)" BackColor="#00cc99" BorderStyle="Solid" BorderWidth="1" Font-Bold="true" Font-Size="18" Width="100%" Height="50px" CssClass="cantos-arredondados-hand" OnClick="btnMediaQuadritonal_Click" />
                                            </div>
                                            <br />
                                            <div class="box" id="Div1" runat="server">
                                                <asp:Button ID="btnLA_LDL_Fala" runat="server" Text="LA - LDL" BackColor="#00cc99" BorderStyle="Solid" BorderWidth="1" Font-Bold="true" Font-Size="18" Width="100%" Height="50px" CssClass="cantos-arredondados-hand" OnClick="btnLA_LDL_Fala_Click" />
                                            </div>
                                            <br />
                                        </div>
                                    </asp:TableCell>
                                    <asp:TableCell Width="20%" Height="100%"></asp:TableCell>
                                </asp:TableRow>
                            </asp:Table>
                            <br />
                        </div>
                        <div id="tabLaudoAnalitico" class="tab-content" style="width: 100%; height: 850px;">
                            <asp:Table ID="tbAnalitico" runat="server" Width="100%" BorderColor="#cccccc" BorderWidth="2px" BorderStyle="Solid">
                                <asp:TableHeaderRow Width="100%">
                                    <asp:TableHeaderCell BackColor="#cccccc" Font-Bold="true" Font-Size="12" ForeColor="White" Width="10%" Height="35px"></asp:TableHeaderCell>
                                    <asp:TableHeaderCell BackColor="#cccccc" Font-Bold="true" Font-Size="18" Width="80%" Height="35px">Laudo ou Parecer Fonoaudiológicos</asp:TableHeaderCell>
                                    <asp:TableHeaderCell BackColor="#cccccc" Font-Bold="true" Font-Size="12" ForeColor="White" Width="10%" Height="35px"></asp:TableHeaderCell>
                                </asp:TableHeaderRow>
                                <asp:TableRow>
                                    <asp:TableCell Width="10%" Height="100%" Style="vertical-align: bottom"></asp:TableCell>
                                    <asp:TableCell Width="80%" Height="100%">
                                        <asp:TextBox ID="txtLaudoAnalitico" runat="server" TextMode="MultiLine" BorderColor="Black" BorderStyle="Solid" BorderWidth="1" ForeColor="Black" Font-Bold="true" Font-Size="12" Width="99.5%" Height="200px" CssClass="cantos-arredondados-alinhamento-left "></asp:TextBox>
                                    </asp:TableCell>
                                    <asp:TableCell Width="10%" Height="100%" Style="vertical-align: bottom"></asp:TableCell>
                                </asp:TableRow>
                            </asp:Table>
                        </div>
                        <div id="tabImpressao" class="tab-content" style="width: 100%; height: 850px;">
                            <asp:Table ID="tbImpressao" runat="server" Width="100%" BorderColor="#cccccc" BorderWidth="2px" BorderStyle="Solid">
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
                                                <asp:TableHeaderCell Text="Comentários: " Width="20%" Height="50px" BackColor="White" BorderColor="#cccccc" BorderStyle="Solid" BorderWidth="1"></asp:TableHeaderCell>
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
                                                                            <asp:TextBox ID="txtExaminador" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Solid" BorderWidth="1" ForeColor="Black" Font-Bold="true" Font-Size="12" Width="98%" Height="38px" CssClass="cantos-arredondados-alinhamento-left "></asp:TextBox>
                                                                        </asp:TableHeaderCell>
                                                                    </asp:TableHeaderRow>
                                                                    <asp:TableHeaderRow Width="100%" Height="30px">
                                                                        <asp:TableHeaderCell Text="Data de hoje:" Width="20%" Height="30px" BackColor="White" BorderColor="#cccccc" BorderStyle="Solid" BorderWidth="1"></asp:TableHeaderCell>
                                                                        <asp:TableHeaderCell Width="80%" Height="30px" BorderColor="#cccccc" BorderStyle="Solid" BorderWidth="1">
                                                                            <asp:TextBox ID="txtDataHoje" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Solid" BorderWidth="1" ForeColor="Black" Font-Bold="true" Font-Size="12" Width="98%" Height="38px" CssClass="cantos-arredondados-alinhamento-left "></asp:TextBox>
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
    <script src="ScriptsJS/AcoesCamposImpedancio.js"></script>
    <script src="ScriptsJS/AcoesGeraisOcupA.js"></script>
    <%--Para o cálculo da idade do paciente--%>
    <script type="text/javascript" src="ScriptsJS/CalculoIdadePacienteJanelasExames.js"></script>

</body>

</html>
