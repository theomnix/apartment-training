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
                myConnection.Close();
            }

            if(parkingButton.SelectedItem.ToString() == "Yes")
            {
                Response.Redirect("http://localhost:54810/ParkingLot");
            }
        }
    }
}