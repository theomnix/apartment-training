using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace Training
{
    public partial class Contact: System.Web.UI.Page
    {
        
        



        protected void Total_TextChanged(object sender, EventArgs e)
        {
           

        }

        protected void checkSpots(object sender, EventArgs e)
        {
 int total = Convert.ToInt32(Total.Text);
            int handi = Convert.ToInt32(Handicap.Text);
            int comp = Convert.ToInt32(Compact.Text);
            if (total < handi + comp)
            {
                global::System.Windows.Forms.MessageBox.Show("Too many parking spaces!");
                Response.Write("");
            }
        }

        
    }
}