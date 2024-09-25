using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Fantasma
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["usuario"].ToString() != null || Session["usuario"].ToString() !="")
            {
                this.lblUsuario.InnerHtml = Session["usuario"].ToString();
            }
            else
            {
                Session.Abandon();
                Response.Redirect("Login.aspx");
            }
            this.lblOrdenes.InnerHtml = "200";
            
        }
    }
}