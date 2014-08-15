using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Training
{
    public partial class ParkingLot : System.Web.UI.Page
    {

   
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TEST_Click(object sender, EventArgs e)
        {

            Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "alert(it's clicked);\n", true);

            Response.Write("<script type=text/javascript>");
            Response.Write("alert(You found it!!)");
            Response.Write("</script>");
            System.Web.HttpContext.Current.Response.Write("IT's clicked");
        }
    }
}