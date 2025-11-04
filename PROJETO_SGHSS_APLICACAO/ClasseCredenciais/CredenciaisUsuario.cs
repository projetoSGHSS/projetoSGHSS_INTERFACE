using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PROJETO_SGHSS.ClasseCredenciais
{
    public class CredenciaisUsuario
    {
        public string Usuario { get; set; }
        public string Setor { get; set; }
        public string Senha { get; set; }

        public CredenciaisUsuario(string usuario, string setor, string senha)
        {
            Usuario = usuario;
            Setor = setor;
            Senha = senha;
        }

        public bool VerificarCredenciaisEstudante()
        {
            // Verifique se as credenciais fornecidas correspondem às credenciais esperadas
            return Usuario == "administrador" && Setor == "Medicina" && Senha == "888";
        }

        public bool VerificarCredenciaisProfissionais()
        {
            return Senha == "888";
        }
    }
}