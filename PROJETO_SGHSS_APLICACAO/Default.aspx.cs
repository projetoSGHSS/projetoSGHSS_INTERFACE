using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Policy;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PROJETO_SGHSS.ClasseCredenciais;

namespace PROJETO_SGHSS
{
    public partial class Default : System.Web.UI.Page
    {
        #region VARIAVEIS E CONSTANTES
        public const string usuarioProfissional = "Profissional";
        public const string usuarioMedicina = "Medicina";
        #endregion

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnEntrar_Click(object sender, EventArgs e)
        {
            int sistemaLogado;

            sistemaLogado = Convert.ToInt32(Session["ssnSistemaLogado"]);

            if (sistemaLogado == 0)
            {
                if (rblProfissionais.SelectedValue == "1" || rblProfissionais.SelectedValue == "2")
                {
                    Session["ssnTipoUsuario"] = usuarioProfissional;

                    // Define o URL para onde você deseja redirecionar
                    string url = "Login.aspx";

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
                        sistemaLogado = 0;
                        Session["ssnSistemaLogado"] = sistemaLogado;

                        // Se for um navegador de desktop, abre em uma nova janela
                        script = "window.open('" + url + "', '_blank', 'width=900,height=700');";

                        // Registra o script no cliente para ser executado
                        ClientScript.RegisterStartupScript(this.GetType(), "OpenWindow", script, true);
                    }

                    rblProfissionais.ClearSelection();
                }
                else if (rblProfissionais.SelectedValue == "0")
                {
                    Session["ssnTipoUsuario"] = usuarioMedicina;

                    // Define o URL para onde você deseja redirecionar
                    string url = "Login.aspx";

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
                        sistemaLogado = 0;
                        Session["ssnSistemaLogado"] = sistemaLogado;

                        // Se for um navegador de desktop, abre em uma nova janela
                        script = "window.open('" + url + "', '_blank', 'width=900,height=700');";

                        // Registra o script no cliente para ser executado
                        ClientScript.RegisterStartupScript(this.GetType(), "OpenWindow", script, true);
                    }

                    rblProfissionais.ClearSelection();
                }
                else
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Atenção: escolha o tipo de usuário!');", true);
                }
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Atenção: finalize o sistema, pelo botão SAIR DO SISTEMA, para logar! Se o problema persistir, clique no botão REINICIAR e tente novamente.');", true);
            }
        }

        protected void btnInstrucoes_Click(object sender, EventArgs e)
        {
            RedirecionaTela();
        }

        private void RedirecionaTela()
        {
            // Define o URL para onde você deseja redirecionar
            string url = "ComoUsar.aspx";

            Response.Redirect(url);
        }

        protected void btnLimpar_Click(object sender, EventArgs e)
        {
            Session["ssnSistemaLogado"] = 0;
        }

        protected void btnParceiros_Click(object sender, EventArgs e)
        {
           
        }
    }
}