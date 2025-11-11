using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static System.Net.Mime.MediaTypeNames;

namespace PROJETO_SGHSS
{
    public partial class CadastroInicial : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["ssnSistemaLogado"] == null || Session["ssnUsuario"] == null || Session["ssnSetor"] == null)
            {
                // Exiba uma mensagem de alerta e redirecione o usuário para a página de login
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Sua sessão expirou. Por favor, faça login novamente.');", true);

                // Redirecione o usuário para a página de login
                Response.Redirect("Default.aspx");
            }

            CarregaProfissional();
        }

        protected void btnVai_Click(object sender, EventArgs e)
        {
            try
            {
                if (!(String.IsNullOrEmpty(txtNomePaciente.Text) || String.IsNullOrEmpty(txtDataNasc.Text) || String.IsNullOrEmpty(txtIdade.Text)))
                {
                    EnviaDadosPaciente();
                    RedirecionaTela();
                }
                else
                {
                    txtNomePaciente.BackColor = Color.MistyRose;
                    txtDataNasc.BackColor = Color.MistyRose;
                    txtIdade.BackColor = Color.MistyRose;

                    txtNomePaciente.BorderColor = Color.Red;
                    txtDataNasc.BorderColor = Color.Red;
                    txtIdade.BorderColor = Color.Red;

                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Campo (s) de preenchimento (s) obrigatório (s)!');", true);
                }
            }
            catch (Exception ex)
            {
                if (ex is HttpException && ex.Message.Contains("Session"))
                {
                    // Exiba uma mensagem de sessão expirada
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Sua sessão expirou. Por favor, faça login novamente.');", true);

                    // Redirecione para a página de login
                    Response.Redirect("Default.aspx");
                }
                else
                {
                    // Trate outras exceções conforme necessário
                    throw;
                }
            }
        }

        protected void btnEncerraSistema(object sender, EventArgs e)
        {
            Session["ssnSistemaLogado"] = 0;

            // Adiciona outro script para fechar a janela atual após abrir a nova
            string closeScript = "window.close();";
            ClientScript.RegisterStartupScript(this.GetType(), "CloseWindow", closeScript, true);
        }

        private void CarregaProfissional()
        {
            if (!String.IsNullOrEmpty(Convert.ToString(Session["ssnUsuario"])) && !String.IsNullOrEmpty(Convert.ToString(Session["ssnConselhoRegional"])))
            {
                var usuario = Session["ssnUsuario"].ToString();
                var conselhoRegional = Session["ssnConselhoRegional"].ToString();
                var boasVindas = "Seja bem-vindo (a) " + usuario + ", " + conselhoRegional + ".";
                lblBoasVindas.Text = boasVindas;
            }
        }

        private void EnviaDadosPaciente()
        {
            //coloca das informações do paciente e associa a Sessions
            Session["ssnNomePaciente"] = txtNomePaciente.Text;
            Session["ssnNomeSocialPaciente"] = txtNomeSocial.Text;
            Session["ssnIdadePaciente"] = txtIdade.Text;
            Session["ssnDataNascimento"] = txtDataNasc.Text;
            Session["ssnDataHoje"] = txtDataHoje.Text;
            Session["ssnDocumento"] = txtDocumento.Text;
            Session["ssnInspecaoMAE"] = txtInspeMAE.Text;
            Session["ssnQueixasClinicas"] = txtQueixasClinicas.Text;
        }

        private void RedirecionaTela()
        {
            // Define o URL para onde você deseja redirecionar
            string url = "ProntuarioClinico.aspx";

            // Verifica se o usuário está em um dispositivo móvel
            bool isMobileDevice = Request.Browser.IsMobileDevice;

            // Cria o script JavaScript para abrir uma nova guia ou janela
            string script;
            if (isMobileDevice)
            {
                Response.Redirect(url);
            }
            else
            {
                // Se for um navegador de desktop, abre em uma nova janela
                script = "window.open('" + url + "', '_blank', 'width=900,height=700');";

                // Registra o script no cliente para ser executado
                ClientScript.RegisterStartupScript(this.GetType(), "OpenWindow", script, true);
            }
        }
    }
}