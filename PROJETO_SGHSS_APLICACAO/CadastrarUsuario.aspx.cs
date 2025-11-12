using PROJETO_SGHSS_APLICACAO.DropDownLists;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PROJETO_SGHSS
{
    public partial class CadastrarUsuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            CarregaProfissionalSetor();
            if (!IsPostBack)
            {
                MetodoTabelaTeste();//tabela aapenas para teste visual
            }
        }

        private void MetodoTabelaTeste()// método apenas para teste
        {
            DataTable tabela = new DataTable();
            tabela.Columns.Add("Usuario");
            tabela.Columns.Add("Profissional");
            tabela.Columns.Add("Matricula");
            tabela.Columns.Add("Senha");

            tabela.Rows.Add("Maria", "Recepção", "25", "abc");
            tabela.Rows.Add("João", "Telefonia", "30", "def");
            tabela.Rows.Add("Ana", "Medicina", "22", "ghi");

            dgvCadastroUsuario.DataSource = tabela;
            dgvCadastroUsuario.DataBind();
        }

        private void CarregaProfissionalSetor()
        {
            ddlTipoProfissional.DataSource = DropDownData_ProfissionalSetor.GetItems();
            ddlTipoProfissional.DataBind();
        }

        protected void btnFinalizarCadastro_Click(object sender, EventArgs e)
        {
            
        }

        protected void dgvCadastroUsuario_RowCreated(object sender, GridViewRowEventArgs e)
        {
            if (dgvCadastroUsuario.Rows.Count == 0 && e.Row.RowType == DataControlRowType.Header)
            {
                e.Row.Visible = true; // força o cabeçalho a aparecer
            }
        }
    }
}