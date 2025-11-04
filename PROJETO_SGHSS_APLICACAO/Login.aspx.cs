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
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnEntrar_Click(object sender, EventArgs e)
        {
            string tipoUsuario = Convert.ToString(Session["ssnTipoUsuario"]);

            if (tipoUsuario == "Medicina")
            {
                string usuario = txtUsuario.Text;
                string setor = txtSetor.Text;
                string senha = txtSenha.Text;

                // Crie uma instância da classe CredenciaisUsuario com os valores dos campos
                CredenciaisUsuario credUsuario = new CredenciaisUsuario(usuario, setor, senha);

                // Verifique as credenciais chamando o método VerificarCredenciais da instância da classe
                if (credUsuario.VerificarCredenciaisEstudante())
                {
                    Session["ssnSistemaLogado"] = 1;

                    // Armazene o usuário e o conselho em sessions
                    Session["ssnUsuario"] = usuario;
                    Session["ssnSetor"] = setor;

                    // Define o URL para onde você deseja redirecionar
                    string url = "Aplicativos.aspx";
                    Response.Redirect(url);

                    txtUsuario.Text = txtSetor.Text = txtSenha.Text = "";
                }
                else
                {
                    // Exiba uma mensagem de alerta se as credenciais estiverem incorretas
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Dados incorretos para acessar o sistema.');", true);
                    txtUsuario.Text = txtSetor.Text = txtSenha.Text = "";
                }
            }
            else 
            {
                string usuario = txtUsuario.Text;
                string setor = txtSetor.Text;
                string senha = txtSenha.Text;

                // Crie uma instância da classe CredenciaisUsuario com os valores dos campos
                CredenciaisUsuario credUsuario = new CredenciaisUsuario(usuario, setor, senha);

                // Verifique as credenciais chamando o método VerificarCredenciais da instância da classe
                if (credUsuario.VerificarCredenciaisProfissionais() && !String.IsNullOrEmpty(txtUsuario.Text) && !String.IsNullOrEmpty(txtSetor.Text))
                {
                    Session["ssnSistemaLogado"] = 1;

                    // Armazene o usuário e o conselho em sessions
                    Session["ssnUsuario"] = usuario;
                    Session["ssnSetor"] = setor;

                    // Define o URL para onde você deseja redirecionar
                    string url = "Aplicativos.aspx";
                    Response.Redirect(url);

                    txtUsuario.Text = txtSetor.Text = txtSenha.Text = "";
                }
                else
                {
                    // Exiba uma mensagem de alerta se as credenciais estiverem incorretas
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Dados incorretos para acessar o sistema.');", true);
                    txtUsuario.Text = txtSetor.Text = txtSenha.Text = "";
                }
            }
        }
    }
}