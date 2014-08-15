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
    public partial class Inquiry : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Submit(object sender, EventArgs e)
        {
            SqlConnection myConnection = new SqlConnection("Data Source=172.50.32.84\\SQLEXPRESS; Server=MININT-3L8403G\\SQLEXPRESS; Initial Catalog=Apartment; User ID=test; Password=1234");

            String counter = hdnfield.Value;
            int count = int.Parse(counter);
            String first_name;
            String last_name;
            String phone_number;
            String number_of_baths;
            String number_of_beds;
            String square_footage;


            for (int i = 0; i < count; i++)
            {
                if (i == 0)
                {
                    first_name = firstname.Text;
                    last_name = lastname.Text;
                    phone_number = phonenumber.Text;
                    number_of_baths = numofbaths.Text;
                    number_of_beds = numofbeds.Text;
                    square_footage = sqrfootage.Text;
                }
                else if (i == 1)
                {
                    
                }
            }

                myConnection.Open();
            /*
            String info = "INSERT INTO Flats VALUES('A', '101', '2', '3', 0, '1500')";

            SqlCommand myCommand = new SqlCommand(info, myConnection);

            myCommand.ExecuteNonQuery();
            */
            myConnection.Close();

            Response.Write("<script type='text/javascript'>");
            Response.Write("alert('Connected!!');");
            Response.Write("</script>");

           
        }
    }
}