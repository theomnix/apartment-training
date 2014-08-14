using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Training
{
    public partial class Inquiry : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (ViewState["inputs"] == null)
                ViewState["inputs"] = 1;

            if (hdnAddInput.Value == "1")
            {
                ViewState["inputs"] = int.Parse(ViewState["inputs"].ToString()) + 1;
                hdnAddInput.Value = "";
            }

            for (int loop = 0; loop < int.Parse(ViewState["inputs"].ToString()); loop++)
            {
                phInputs.Controls.Add(new TextBox() { ID = "phone" + loop });
                Panel p1 = new Panel();
                p1.Height = 20;
                phInputs.Controls.Add(p1);
                phInputs.Controls.Add(new TextBox() { ID = "phone" + loop + 1 });
                Panel p2 = new Panel();
                p2.Height = 20;
                phInputs.Controls.Add(p2);
                phInputs.Controls.Add(new TextBox() { ID = "phone" + loop + 2 });
                Panel p3 = new Panel();
                p3.Height = 20;
                phInputs.Controls.Add(p3);
                
            }
        }
    }
}