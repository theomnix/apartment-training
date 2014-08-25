using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Text;

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

            String findInquiries = "SELECT * FROM Tenants WHERE FirstName='" + firstname.Text + "' AND LastName='" + lastname.Text + "'";

            SqlCommand myCommand = new SqlCommand(findInquiries, myConnection);
            SqlDataReader sdr = myCommand.ExecuteReader();

            if (sdr.HasRows == true)
            {
                int ID = 0;
                while (sdr.Read())
                {
                    ID = sdr.GetInt32(3);
                }
 
                String findYourFlat = "SELECT * FROM Flats WHERE TenantID=" + ID + "";
                sdr.Close();
                SqlCommand myCommand3 = new SqlCommand(findYourFlat, myConnection);
                SqlDataReader sdr3 = myCommand3.ExecuteReader();

                StringBuilder sb = new StringBuilder();

                while (sdr3.Read())
                {
                    sb.AppendLine("Apartment: " + sdr3.GetString(0) + "" + sdr3.GetString(1) + "; Bedrooms: " + sdr3.GetInt32(2) +
                        "; Bathrooms: " + sdr3.GetInt32(3) + "; Washer/Dryer in unit: " + sdr3.GetBoolean(4) + 
                        "; Square Footage: " + sdr3.GetInt32(5) + "; TenantID: " + sdr3.GetInt32(6) + ".");
                }

                results.Text = sb.ToString();
                
                Response.Write("<script type='text/javascript'>");
                Response.Write("alert('Here is the info for your flat!');");
                Response.Write("</script>");

                sdr.Close();
            }
            else
            {
                
                sdr.Close();
                String findFlats = "SELECT * FROM Flats WHERE TenantID is NULL";
                SqlCommand myCommand2 = new SqlCommand(findFlats, myConnection);
                SqlDataReader sdr2 = myCommand2.ExecuteReader();
                StringBuilder sb = new StringBuilder();


                while (sdr2.Read())
                {
                    sb.AppendLine("Apartment: " + sdr2.GetString(0) + sdr2.GetString(1) + " Bedrooms: " + sdr2.GetInt32(2) + 
                        " Bathrooms: " + sdr2.GetInt32(3) + " Washer/Dryer in unit: " + sdr2.GetBoolean(4) + " Square Footage: " + sdr2.GetInt32(5));
                }
                results.Text = sb.ToString();
                sdr2.Close();
                Response.Write("<script type='text/javascript'>");
                Response.Write("alert('No info found for your name. We pulled up all of our available flats for you though!');");
                Response.Write("</script>");
            }
            
            myConnection.Close();   
        }
    }
}