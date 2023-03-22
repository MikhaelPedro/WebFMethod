using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Script.Services;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebFMethod
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        [System.Web.Services.WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public static string MeuMetodo()
        {
            // Cria um objeto para ser retornado como JSON
            var obj = new
            {
                nome = "Exemplo",
                idade = 30
            };

            // Converte o objeto para JSON e retorna
            return JsonConvert.SerializeObject(obj);
        }

        [WebMethod]
        public static string MeuMetodo2()
        {
            return "Olá, mundo!";
        }
    }
}