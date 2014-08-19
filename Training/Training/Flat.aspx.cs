using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;

namespace Training
{
    public partial class Parking : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Search_Click(object sender, EventArgs e)
        {
            Response.Write("<script type='text/javascript'>");
            Response.Write("alert('No files for" + firstname.Text + " " + lastname.Text + " were found.\n " +
                                   "All available flats have been listed for your viewing pleasure!');");
            Response.Write("</script>");

            
            SqlConnection myConnection = new SqlConnection("Data Source=172.50.32.84\\SQLEXPRESS; Server=MININT-3L8403G\\SQLEXPRESS; Initial Catalog=Apartment; User ID=test; Password=1234");
            myConnection.Open();

            String findInquiries = "SELECT FROM Inquiries WHERE FirstName='" + firstname.Text + "', LastName='" + lastname.Text + "'";

            SqlCommand myCommand = new SqlCommand(findInquiries, myConnection);
            SqlDataReader sdr = myCommand.ExecuteReader();

            if (sdr.HasRows == true)
            {

            }
            else
            {
                String findFlats = "SELECT * FROM Flats";
                myCommand = new SqlCommand(findFlats, myConnection);
                SqlDataReader sdr2 = myCommand.ExecuteReader();

                Response.Write("<script type='text/javascript'>");
                Response.Write("alert('No files for" + firstname.Text + " " + lastname.Text + "were found.\n " +
                                       "All available flats have been listed for your viewing pleasure!');");
                Response.Write("</script>");
            }

            /*Parse through the dataset. If no data was returned, then run another query and return all available flats
             */

            myConnection.Close();
            
        }
    }
}