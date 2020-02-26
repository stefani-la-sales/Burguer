using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using Npgsql;

namespace ConnectionFactory
{
    public static class ConnectionFactory
    {
        public static NpgsqlConnection Connect()
        {
            NpgsqlConnection conn = new NpgsqlConnection("Server=localhost; Port=5432 ; User id=postgres; password=3121;Database=CSHARP;");
            conn.Open();
            return conn;
        }
    }
}

