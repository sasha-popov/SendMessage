using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebFormSendMessage.Pages
{
    public partial class SuccessPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            buttonReturn.Text = Resources.Frontend.ReturnButton;
        }

        protected void ReturnToMainPage(object sender, EventArgs e)
        {
            Response.Redirect("http://localhost:60940/MasterPage.aspx", true);
        }
    }
}