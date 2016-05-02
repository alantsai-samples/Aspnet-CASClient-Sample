using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DotNetCasClient;

namespace Aspnet.Webform.CASClient.Sample
{
    public partial class Logout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            CasAuthentication.ClearAuthCookie();

            Response.Redirect("Default.aspx");
        }
    }
}