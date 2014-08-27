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
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submit_button(object sender, EventArgs e)
        {
            label.Text = hdnfield.Value;

            Random rand = new Random();
            int id = rand.Next(0, 200000);
            int spouse_id = 0;

            if(marriedRadio.SelectedItem.ToString() == "Yes")
            {
                Random rand2 = new Random();
                spouse_id = rand.Next(0, 200000);
            }
            
            if (IsValid)
            {
                SqlConnection myConnection = new SqlConnection("Data Source=172.50.32.84\\SQLEXPRESS; Server=MININT-3L8403G\\SQLEXPRESS; Initial Catalog=Apartment; User ID=test; Password=1234");
                try
                {
                    myConnection.Open();
                }
                catch (Exception exception)
                {
                    Console.WriteLine(exception.ToString());
                }
                SqlCommand command = new SqlCommand("Tenant_Insert", myConnection);
                command.CommandType = System.Data.CommandType.StoredProcedure;
                command.Parameters.Add(new SqlParameter("@FirstName", firstname.Text));
                command.Parameters.Add(new SqlParameter("@LastName", lastname.Text));
                command.Parameters.Add(new SqlParameter("@PhoneNumber", phonenumber.Text));
                command.Parameters.Add(new SqlParameter("@TennantID", id));
                command.Parameters.Add(new SqlParameter("@SpouseID", spouse_id));
                command.Parameters.Add(new SqlParameter("@NumofChildren", int.Parse(childrenSelect.SelectedItem.Text)));

                command.ExecuteNonQuery();

                String unit = unitnum.Text;
                String building = unit.Substring(0, 1);
                String apt = unit.Substring(1, unit.Length - 1);

                String addTenant = "UPDATE Flats SET TenantID='" + id + "' WHERE Building='" + building + "' AND Apt='" + apt + "'";
                SqlCommand command2 = new SqlCommand(addTenant, myConnection);
                command2.ExecuteNonQuery();

                SqlCommand command3 = new SqlCommand("CoTenant_Insert", myConnection);
                command3.CommandType = System.Data.CommandType.StoredProcedure;
                command3.Parameters.Add(new SqlParameter("@Spouse_Firstname", hdnfield.Value));
                command3.Parameters.Add(new SqlParameter("@Spouse_Lastname", hdnfield2.Value));
                command3.Parameters.Add(new SqlParameter("@Spouse_PhoneNumber", hdnfield3.Value));
                command3.Parameters.Add(new SqlParameter("@CoTenantID", spouse_id));

                command3.ExecuteNonQuery();

                Response.Write("<script type='text/javascript'>");
                Response.Write("alert('" + apt + "');");
                Response.Write("</script>");
                myConnection.Close();
            }

            if (parkingButton.SelectedItem.ToString() == "Yes")
            {
                Response.Redirect("http://localhost:54810/ParkingLot");
            }
        }
    }
}