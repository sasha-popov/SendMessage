using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebFormSendMessage
{
    public partial class MasterPage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HeaderId.Text = Resources.Frontend.Header.ToString();
            FooterId.Text = Resources.Frontend.Footer.ToString();
        }
    }
}