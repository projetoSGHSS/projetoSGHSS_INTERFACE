using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static System.Net.Mime.MediaTypeNames;

namespace PROJETO_SGHSS
{
    public partial class Aplicativos : System.Web.UI.Page
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

        protected void btnAgenda_Click(object sender, EventArgs e)
        {
            
        }

        protected void btnProntuario_Click(object sender, EventArgs e)
        {
            try
            {
                Response.Redirect("CadastroInicial.aspx");
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

        protected void btnExames_Click(object sender, EventArgs e)
        {
            
        }

        protected void btnRecepcao_Click(object sender, EventArgs e)
        {
            
        }

        protected void btnReceituario_Click(object sender, EventArgs e)
        {

        }

        protected void btnFaturamento_Click(object sender, EventArgs e)
        {

        }

        protected void btnEstoque_Click(object sender, EventArgs e)
        {

        }

        protected void btnConservacaoAuditiva_Click(object sender, EventArgs e)
        {

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
    }
}