using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConnectionFactory
{
    public class Usuario
    {
        private String login;
        private String nome;
        private String senha;
        private String sn_ativo;

        public String Login
        {
            get { return login; }
            set { login = value; }
        }

        public String Nome
        {
            get { return nome; }
            set { nome = value; }
        }

        public String Senha
        {
            get { return senha; }
            set { senha = value; }
        }

        public String SN_Ativo
        {
            get { return sn_ativo; }
            set { sn_ativo = value; }
        }

    }
}
