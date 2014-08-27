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
            int id = rand.Next(0, 500000);

            if (count == 2)
            {
                id = rand.Next(0, 200000);
                SqlCommand command = new SqlCommand("InsertInquiries", myConnection);
                command.CommandType = System.Data.CommandType.StoredProcedure;
                command.Parameters.Add(new SqlParameter("@id", id));
                command.Parameters.Add(new SqlParameter("@fname", HiddenField25.Value));
                command.Parameters.Add(new SqlParameter("@lname", HiddenField26.Value));
                command.Parameters.Add(new SqlParameter("@pnumber", HiddenField27.Value));
                command.Parameters.Add(new SqlParameter("@numbaths", int.Parse(HiddenField28.Value)));
                command.Parameters.Add(new SqlParameter("@numbeds", int.Parse(HiddenField29.Value)));
                command.Parameters.Add(new SqlParameter("@sfootage", int.Parse(HiddenField30.Value)));

                command.ExecuteNonQuery();
            }
            else if (count == 3)
            {
                id = rand.Next(0, 200000);
                SqlCommand command = new SqlCommand("InsertInquiries", myConnection);
                command.CommandType = System.Data.CommandType.StoredProcedure;
                command.Parameters.Add(new SqlParameter("@id", id));
                command.Parameters.Add(new SqlParameter("@fname", HiddenField25.Value));
                command.Parameters.Add(new SqlParameter("@lname", HiddenField26.Value));
                command.Parameters.Add(new SqlParameter("@pnumber", HiddenField27.Value));
                command.Parameters.Add(new SqlParameter("@numbaths", int.Parse(HiddenField28.Value)));
                command.Parameters.Add(new SqlParameter("@numbeds", int.Parse(HiddenField29.Value)));
                command.Parameters.Add(new SqlParameter("@sfootage", int.Parse(HiddenField30.Value)));

                command.ExecuteNonQuery();
                int id2 = rand.Next(0, 200000);

                SqlCommand command2 = new SqlCommand("InsertInquiries", myConnection);
                command2.CommandType = System.Data.CommandType.StoredProcedure;
                command2.Parameters.Add(new SqlParameter("@id", id2));
                command2.Parameters.Add(new SqlParameter("@fname", HiddenField1.Value));
                command2.Parameters.Add(new SqlParameter("@lname", HiddenField2.Value));
                command2.Parameters.Add(new SqlParameter("@pnumber", HiddenField3.Value));
                command2.Parameters.Add(new SqlParameter("@numbaths", int.Parse(HiddenField4.Value)));
                command2.Parameters.Add(new SqlParameter("@numbeds", int.Parse(HiddenField5.Value)));
                command2.Parameters.Add(new SqlParameter("@sfootage", int.Parse(HiddenField6.Value)));

                command2.ExecuteNonQuery();
            }
            else if (count == 4)
            {
                id = rand.Next(0, 200000);
                SqlCommand command = new SqlCommand("InsertInquiries", myConnection);
                command.CommandType = System.Data.CommandType.StoredProcedure;
                command.Parameters.Add(new SqlParameter("@id", id));
                command.Parameters.Add(new SqlParameter("@fname", HiddenField25.Value));
                command.Parameters.Add(new SqlParameter("@lname", HiddenField26.Value));
                command.Parameters.Add(new SqlParameter("@pnumber", HiddenField27.Value));
                command.Parameters.Add(new SqlParameter("@numbaths", int.Parse(HiddenField28.Value)));
                command.Parameters.Add(new SqlParameter("@numbeds", int.Parse(HiddenField29.Value)));
                command.Parameters.Add(new SqlParameter("@sfootage", int.Parse(HiddenField30.Value)));

                command.ExecuteNonQuery();
                int id2 = rand.Next(0, 200000);

                SqlCommand command2 = new SqlCommand("InsertInquiries", myConnection);
                command2.CommandType = System.Data.CommandType.StoredProcedure;
                command2.Parameters.Add(new SqlParameter("@id", id2));
                command2.Parameters.Add(new SqlParameter("@fname", HiddenField1.Value));
                command2.Parameters.Add(new SqlParameter("@lname", HiddenField2.Value));
                command2.Parameters.Add(new SqlParameter("@pnumber", HiddenField3.Value));
                command2.Parameters.Add(new SqlParameter("@numbaths", int.Parse(HiddenField4.Value)));
                command2.Parameters.Add(new SqlParameter("@numbeds", int.Parse(HiddenField5.Value)));
                command2.Parameters.Add(new SqlParameter("@sfootage", int.Parse(HiddenField6.Value)));

                command2.ExecuteNonQuery();
                int id3 = rand.Next(0, 200000);


                SqlCommand command3 = new SqlCommand("InsertInquiries", myConnection);
                command3.CommandType = System.Data.CommandType.StoredProcedure;
                command3.Parameters.Add(new SqlParameter("@id", id3));
                command3.Parameters.Add(new SqlParameter("@fname", HiddenField7.Value));
                command3.Parameters.Add(new SqlParameter("@lname", HiddenField8.Value));
                command3.Parameters.Add(new SqlParameter("@pnumber", HiddenField9.Value));
                command3.Parameters.Add(new SqlParameter("@numbaths", int.Parse(HiddenField10.Value)));
                command3.Parameters.Add(new SqlParameter("@numbeds", int.Parse(HiddenField11.Value)));
                command3.Parameters.Add(new SqlParameter("@sfootage", int.Parse(HiddenField12.Value)));

                command3.ExecuteNonQuery();
            }
            else if (count == 5)
            {
                id = rand.Next(0, 200000);
                SqlCommand command = new SqlCommand("InsertInquiries", myConnection);
                command.CommandType = System.Data.CommandType.StoredProcedure;
                command.Parameters.Add(new SqlParameter("@id", id));
                command.Parameters.Add(new SqlParameter("@fname", HiddenField25.Value));
                command.Parameters.Add(new SqlParameter("@lname", HiddenField26.Value));
                command.Parameters.Add(new SqlParameter("@pnumber", HiddenField27.Value));
                command.Parameters.Add(new SqlParameter("@numbaths", int.Parse(HiddenField28.Value)));
                command.Parameters.Add(new SqlParameter("@numbeds", int.Parse(HiddenField29.Value)));
                command.Parameters.Add(new SqlParameter("@sfootage", int.Parse(HiddenField30.Value)));

                command.ExecuteNonQuery();
                int id2 = rand.Next(0, 200000);

                SqlCommand command2 = new SqlCommand("InsertInquiries", myConnection);
                command2.CommandType = System.Data.CommandType.StoredProcedure;
                command2.Parameters.Add(new SqlParameter("@id", id2));
                command2.Parameters.Add(new SqlParameter("@fname", HiddenField1.Value));
                command2.Parameters.Add(new SqlParameter("@lname", HiddenField2.Value));
                command2.Parameters.Add(new SqlParameter("@pnumber", HiddenField3.Value));
                command2.Parameters.Add(new SqlParameter("@numbaths", int.Parse(HiddenField4.Value)));
                command2.Parameters.Add(new SqlParameter("@numbeds", int.Parse(HiddenField5.Value)));
                command2.Parameters.Add(new SqlParameter("@sfootage", int.Parse(HiddenField6.Value)));

                command2.ExecuteNonQuery();
                int id3 = rand.Next(0, 200000);


                SqlCommand command3 = new SqlCommand("InsertInquiries", myConnection);
                command3.CommandType = System.Data.CommandType.StoredProcedure;
                command3.Parameters.Add(new SqlParameter("@id", id3));
                command3.Parameters.Add(new SqlParameter("@fname", HiddenField7.Value));
                command3.Parameters.Add(new SqlParameter("@lname", HiddenField8.Value));
                command3.Parameters.Add(new SqlParameter("@pnumber", HiddenField9.Value));
                command3.Parameters.Add(new SqlParameter("@numbaths", int.Parse(HiddenField10.Value)));
                command3.Parameters.Add(new SqlParameter("@numbeds", int.Parse(HiddenField11.Value)));
                command3.Parameters.Add(new SqlParameter("@sfootage", int.Parse(HiddenField12.Value)));

                command3.ExecuteNonQuery();
                int id4 = rand.Next(0, 200000);


                SqlCommand command4 = new SqlCommand("InsertInquiries", myConnection);
                command4.CommandType = System.Data.CommandType.StoredProcedure;
                command4.Parameters.Add(new SqlParameter("@id", id4));
                command4.Parameters.Add(new SqlParameter("@fname", HiddenField13.Value));
                command4.Parameters.Add(new SqlParameter("@lname", HiddenField14.Value));
                command4.Parameters.Add(new SqlParameter("@pnumber", HiddenField15.Value));
                command4.Parameters.Add(new SqlParameter("@numbaths", int.Parse(HiddenField16.Value)));
                command4.Parameters.Add(new SqlParameter("@numbeds", int.Parse(HiddenField17.Value)));
                command4.Parameters.Add(new SqlParameter("@sfootage", int.Parse(HiddenField18.Value)));

                command4.ExecuteNonQuery();
            }
            else if (count == 6)
            {
                id = rand.Next(0, 200000);
                SqlCommand command = new SqlCommand("InsertInquiries", myConnection);
                command.CommandType = System.Data.CommandType.StoredProcedure;
                command.Parameters.Add(new SqlParameter("@id", id));
                command.Parameters.Add(new SqlParameter("@fname", HiddenField25.Value));
                command.Parameters.Add(new SqlParameter("@lname", HiddenField26.Value));
                command.Parameters.Add(new SqlParameter("@pnumber", HiddenField27.Value));
                command.Parameters.Add(new SqlParameter("@numbaths", int.Parse(HiddenField28.Value)));
                command.Parameters.Add(new SqlParameter("@numbeds", int.Parse(HiddenField29.Value)));
                command.Parameters.Add(new SqlParameter("@sfootage", int.Parse(HiddenField30.Value)));

                command.ExecuteNonQuery();
                int id2 = rand.Next(0, 200000);

                SqlCommand command2 = new SqlCommand("InsertInquiries", myConnection);
                command2.CommandType = System.Data.CommandType.StoredProcedure;
                command2.Parameters.Add(new SqlParameter("@id", id2));
                command2.Parameters.Add(new SqlParameter("@fname", HiddenField1.Value));
                command2.Parameters.Add(new SqlParameter("@lname", HiddenField2.Value));
                command2.Parameters.Add(new SqlParameter("@pnumber", HiddenField3.Value));
                command2.Parameters.Add(new SqlParameter("@numbaths", int.Parse(HiddenField4.Value)));
                command2.Parameters.Add(new SqlParameter("@numbeds", int.Parse(HiddenField5.Value)));
                command2.Parameters.Add(new SqlParameter("@sfootage", int.Parse(HiddenField6.Value)));

                command2.ExecuteNonQuery();
                int id3 = rand.Next(0, 200000);


                SqlCommand command3 = new SqlCommand("InsertInquiries", myConnection);
                command3.CommandType = System.Data.CommandType.StoredProcedure;
                command3.Parameters.Add(new SqlParameter("@id", id3));
                command3.Parameters.Add(new SqlParameter("@fname", HiddenField7.Value));
                command3.Parameters.Add(new SqlParameter("@lname", HiddenField8.Value));
                command3.Parameters.Add(new SqlParameter("@pnumber", HiddenField9.Value));
                command3.Parameters.Add(new SqlParameter("@numbaths", int.Parse(HiddenField10.Value)));
                command3.Parameters.Add(new SqlParameter("@numbeds", int.Parse(HiddenField11.Value)));
                command3.Parameters.Add(new SqlParameter("@sfootage", int.Parse(HiddenField12.Value)));

                command3.ExecuteNonQuery();
                int id4 = rand.Next(0, 200000);


                SqlCommand command4 = new SqlCommand("InsertInquiries", myConnection);
                command4.CommandType = System.Data.CommandType.StoredProcedure;
                command4.Parameters.Add(new SqlParameter("@id", id4));
                command4.Parameters.Add(new SqlParameter("@fname", HiddenField13.Value));
                command4.Parameters.Add(new SqlParameter("@lname", HiddenField14.Value));
                command4.Parameters.Add(new SqlParameter("@pnumber", HiddenField15.Value));
                command4.Parameters.Add(new SqlParameter("@numbaths", int.Parse(HiddenField16.Value)));
                command4.Parameters.Add(new SqlParameter("@numbeds", int.Parse(HiddenField17.Value)));
                command4.Parameters.Add(new SqlParameter("@sfootage", int.Parse(HiddenField18.Value)));

                command4.ExecuteNonQuery();
                int id5 = rand.Next(0, 200000);

               
                SqlCommand command5 = new SqlCommand("InsertInquiries", myConnection);
                command5.CommandType = System.Data.CommandType.StoredProcedure;
                command5.Parameters.Add(new SqlParameter("@id", id5));
                command5.Parameters.Add(new SqlParameter("@fname", HiddenField19.Value));
                command5.Parameters.Add(new SqlParameter("@lname", HiddenField20.Value));
                command5.Parameters.Add(new SqlParameter("@pnumber", HiddenField21.Value));
                command5.Parameters.Add(new SqlParameter("@numbaths", int.Parse(HiddenField22.Value)));
                command5.Parameters.Add(new SqlParameter("@numbeds", int.Parse(HiddenField23.Value)));
                command5.Parameters.Add(new SqlParameter("@sfootage", int.Parse(HiddenField24.Value)));

                command5.ExecuteNonQuery();
            }
            myConnection.Close();

            Response.Write("<script type='text/javascript'>");
            Response.Write("alert('Your inquiries have been successfully processed!');");
            Response.Write("</script>");
        }
    }
}