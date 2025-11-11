using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;

namespace PROJETO_SGHSS_APLICACAO.DropDownLists
{
    public class DropDownData_ProfissionalSetor
    {
        public static List<ListItem> GetItems() {

            List<ListItem> items = new List<ListItem>();

            items.Add(new ListItem("", "1"));
            items.Add(new ListItem("Telefonia", "2"));
            items.Add(new ListItem("Recepção", "3"));
            items.Add(new ListItem("Administrativo", "4"));
            items.Add(new ListItem("Recursos humanos", "5"));
            items.Add(new ListItem("Faturamento", "6"));
            items.Add(new ListItem("Estoque", "7"));
            items.Add(new ListItem("Profissionais", "8"));

            return items;
        }
    }
}