using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Web.Services;

namespace Training
{
    public partial class Inquiry : System.Web.UI.Page, IPostBackEventHandler
    {
        public void RaisePostBackEvent(string eventArgument)
        {
            SqlConnection myConnection = new SqlConnection("Data Source=172.50.32.84\\SQLEXPRESS; Server=MININT-3L8403G\\SQLEXPRESS; Initial Catalog=Apartment; User ID=test; Password=1234");
            myConnection.Open();

            String counter = hdnfield.Value;
            int count = int.Parse(counter);
            Random rand = new Random();
            int id = rand.Next(0, 200000);

            if (count == 2)
            {
                String inquiry1 = "INSERT INTO Inquiries VALUES(" + id + ", '" + HiddenField25.Value + "', '" + HiddenField26.Value + "', '" +
                                   HiddenField27.Value + "', '" + HiddenField28.Value + "', '" + HiddenField29.Value + "', '" +
                                   HiddenField30.Value + "')";

                SqlCommand myCommand = new SqlCommand(inquiry1, myConnection);
                myCommand.ExecuteNonQuery();
            }
            else if (count == 3)
            {
                String inquiry1 = "INSERT INTO Inquiries VALUES(" + id + ", '" + HiddenField25.Value + "', '" + HiddenField26.Value + "', '" +
                                   HiddenField27.Value + "', '" + HiddenField28.Value + "', '" + HiddenField29.Value + "', '" +
                                   HiddenField30.Value + "')";
                id = rand.Next(0, 200000);
                String inquiry2 = "INSERT INTO Inquiries VALUES(" + id + ", '" + HiddenField1.Value + "', '" + HiddenField2.Value + "', '" +
                                   HiddenField3.Value + "', '" + HiddenField4.Value + "', '" + HiddenField5.Value + "', '" +
                                   HiddenField6.Value + "')";

                SqlCommand myCommand = new SqlCommand(inquiry1, myConnection);
                myCommand.ExecuteNonQuery();
                myCommand = new SqlCommand(inquiry2, myConnection);
                myCommand.ExecuteNonQuery();
            }
            else if (count == 4)
            {
                String inquiry1 = "INSERT INTO Inquiries VALUES(" + id + ", '" + HiddenField25.Value + "', '" + HiddenField26.Value + "', '" +
                                  HiddenField27.Value + "', '" + HiddenField28.Value + "', '" + HiddenField29.Value + "', '" +
                                  HiddenField30.Value + "')";
                id = rand.Next(0, 200000);
                String inquiry2 = "INSERT INTO Inquiries VALUES(" + id + ", '" + HiddenField1.Value + "', '" + HiddenField2.Value + "', '" +
                                   HiddenField3.Value + "', '" + HiddenField4.Value + "', '" + HiddenField5.Value + "', '" +
                                   HiddenField6.Value + "')";
                id = rand.Next(0, 200000);
                String inquiry3 = "INSERT INTO Inquiries VALUES(" + id + ", '" + HiddenField7.Value + "', '" + HiddenField8.Value + "', '" +
                                   HiddenField9.Value + "', '" + HiddenField10.Value + "', '" + HiddenField11.Value + "', '" +
                                   HiddenField12.Value + "')";

                SqlCommand myCommand = new SqlCommand(inquiry1, myConnection);
                myCommand.ExecuteNonQuery();
                myCommand = new SqlCommand(inquiry2, myConnection);
                myCommand.ExecuteNonQuery();
                myCommand = new SqlCommand(inquiry3, myConnection);
                myCommand.ExecuteNonQuery();
            }
            else if (count == 5)
            {
                String inquiry1 = "INSERT INTO Inquiries VALUES(" + id + ", '" + HiddenField25.Value + "', '" + HiddenField26.Value + "', '" +
                                 HiddenField27.Value + "', '" + HiddenField28.Value + "', '" + HiddenField29.Value + "', '" +
                                 HiddenField30.Value + "')";
                id = rand.Next(0, 200000);
                String inquiry2 = "INSERT INTO Inquiries VALUES(" + id + ", '" + HiddenField1.Value + "', '" + HiddenField2.Value + "', '" +
                                   HiddenField3.Value + "', '" + HiddenField4.Value + "', '" + HiddenField5.Value + "', '" +
                                   HiddenField6.Value + "')";
                id = rand.Next(0, 200000);
                String inquiry3 = "INSERT INTO Inquiries VALUES(" + id + ", '" + HiddenField7.Value + "', '" + HiddenField8.Value + "', '" +
                                   HiddenField9.Value + "', '" + HiddenField10.Value + "', '" + HiddenField11.Value + "', '" +
                                   HiddenField12.Value + "')";
                id = rand.Next(0, 200000);
                String inquiry4 = "INSERT INTO Inquiries VALUES(" + id + ", '" + HiddenField13.Value + "', '" + HiddenField14.Value + "', '" +
                                  HiddenField15.Value + "', '" + HiddenField16.Value + "', '" + HiddenField17.Value + "', '" +
                                  HiddenField18.Value + "')";

                SqlCommand myCommand = new SqlCommand(inquiry1, myConnection);
                myCommand.ExecuteNonQuery();
                myCommand = new SqlCommand(inquiry2, myConnection);
                myCommand.ExecuteNonQuery();
                myCommand = new SqlCommand(inquiry3, myConnection);
                myCommand.ExecuteNonQuery();
                myCommand = new SqlCommand(inquiry4, myConnection);
                myCommand.ExecuteNonQuery();
            }
            else if (count == 6)
            {
                String inquiry1 = "INSERT INTO Inquiries VALUES(" + id + ", '" + HiddenField25.Value + "', '" + HiddenField26.Value + "', '" +
                                 HiddenField27.Value + "', '" + HiddenField28.Value + "', '" + HiddenField29.Value + "', '" +
                                 HiddenField30.Value + "')";
                id = rand.Next(0, 200000);
                String inquiry2 = "INSERT INTO Inquiries VALUES(" + id + ", '" + HiddenField1.Value + "', '" + HiddenField2.Value + "', '" +
                                   HiddenField3.Value + "', '" + HiddenField4.Value + "', '" + HiddenField5.Value + "', '" +
                                   HiddenField6.Value + "')";
                id = rand.Next(0, 200000);
                String inquiry3 = "INSERT INTO Inquiries VALUES(" + id + ", '" + HiddenField7.Value + "', '" + HiddenField8.Value + "', '" +
                                   HiddenField9.Value + "', '" + HiddenField10.Value + "', '" + HiddenField11.Value + "', '" +
                                   HiddenField12.Value + "')";
                id = rand.Next(0, 200000);
                String inquiry4 = "INSERT INTO Inquiries VALUES(" + id + ", '" + HiddenField13.Value + "', '" + HiddenField14.Value + "', '" +
                                  HiddenField15.Value + "', '" + HiddenField16.Value + "', '" + HiddenField17.Value + "', '" +
                                  HiddenField18.Value + "')";
                id = rand.Next(0, 200000);
                String inquiry5 = "INSERT INTO Inquiries VALUES(" + id + ", '" + HiddenField19.Value + "', '" + HiddenField20.Value + "', '" +
                                  HiddenField21.Value + "', '" + HiddenField22.Value + "', '" + HiddenField23.Value + "', '" +
                                  HiddenField24.Value + "')";

                SqlCommand myCommand = new SqlCommand(inquiry1, myConnection);
                myCommand.ExecuteNonQuery();
                myCommand = new SqlCommand(inquiry2, myConnection);
                myCommand.ExecuteNonQuery();
                myCommand = new SqlCommand(inquiry3, myConnection);
                myCommand.ExecuteNonQuery();
                myCommand = new SqlCommand(inquiry4, myConnection);
                myCommand.ExecuteNonQuery();
                myCommand = new SqlCommand(inquiry5, myConnection);
                myCommand.ExecuteNonQuery();
            }
            myConnection.Close();

            Response.Write("<script type='text/javascript'>");
            Response.Write("alert('Your inquiries have been successfully processed!');");
            Response.Write("</script>");
        }
    }
}