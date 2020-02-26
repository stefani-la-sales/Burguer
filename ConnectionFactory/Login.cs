using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using Npgsql;

namespace ConnectionFactory
{
    public static class Login
    {
        private static String user = null;

        public static String User
        {
            get { return user; }
            set { user = value; }
        }
        public static bool verificarLogin(Usuario usuario)
        {

            if (usuario.Login.Trim().Length == 0)
            {
                throw new Exception("Por favor, informe o seu usuário!");
            }
            if (usuario.Senha.Trim().Length == 0)
            {
                throw new Exception("Por favor, informe a sua senha!");
            }

            usuario.Login = usuario.Login.ToUpper();

            String validaUsuario = (String.Format(
                "SELECT NOME " +
                "FROM USUARIOS " +
                "WHERE LOGIN = '{0}' " +
                "AND SENHA = '{1}' " +
                "AND SN_ATIVO = 'S'",
                usuario.Login,
                usuario.Senha));

            NpgsqlDataAdapter da = new NpgsqlDataAdapter(new NpgsqlCommand(validaUsuario, ConnectionFactory.Connect()));
            DataTable dt = new DataTable();
            da.Fill(dt);
            ConnectionFactory.Connect().Dispose();

            if (dt.Rows.Count > 0)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
    }
}
