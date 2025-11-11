using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PROJETO_SGHSS_APLICACAO.DropDownLists;

namespace PROJETO_SGHSS
{
    public partial class CadastrarUsuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            CarregaProfissionalSetor();
        }

        private void CarregaProfissionalSetor()
        {
            ddlTipoProfissional.DataSource = DropDownData_ProfissionalSetor.GetItems();
            ddlTipoProfissional.DataBind();
        }

        protected void btnFinalizarCadastro_Click(object sender, EventArgs e)
        {
            
        }
    }
}