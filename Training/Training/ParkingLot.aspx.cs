using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
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
            if(IsPostBack){

            }
            else
            {

            }

        }

        protected void TEST_Click(object sender, EventArgs e)
        {
            int handi = Convert.ToInt32(Handicap.Text);
            int comp = Convert.ToInt32(Compact.Text);
            int reg = Convert.ToInt32(Regular.Text);
            int total = handi + comp + reg;
            SqlConnection conn = new SqlConnection(SqlDataSource1.ConnectionString);
            SqlCommand cmd = new SqlCommand("submitparkinglot", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@NumberOfSpots", SqlDbType.Int).Value = total;
            if (Covered.SelectedValue.Equals("YES"))
            {
                cmd.Parameters.Add("@Covered", SqlDbType.Bit).Value = 1;
            }
            else
            {
                cmd.Parameters.Add("@Covered", SqlDbType.Bit).Value = 0;
            }

            cmd.Parameters.Add("@Compact", SqlDbType.Int).Value = comp;
            cmd.Parameters.Add("@Handicapped", SqlDbType.Int).Value = handi;
            cmd.Parameters.Add("@Building", SqlDbType.NChar).Value = Buildingchoose.SelectedValue;
            conn.Open();
            cmd.ExecuteNonQuery();
            
            conn.Close();
            populateSpots();
           
            
        }

        private void populateSpots()
        {
            SqlConnection con = new SqlConnection(SqlDataSource1.ConnectionString);
            
            SqlCommand cmd = new SqlCommand("getnewestlot", con);
            cmd.CommandType = CommandType.StoredProcedure;
            con.Open();
            SqlDataReader read = cmd.ExecuteReader();
            read.Read();
            
            int lotnumber = read.GetInt32(0);
            int totalspots = read.GetInt32(1);
            int compy = read.GetInt32(3);
            int handi = read.GetInt32(4);
            con.Close();

            SqlCommand insert = new SqlCommand("newspot", con);

            for (int i = 0; i <= compy; i++)
            {
                con = new SqlConnection(SqlDataSource1.ConnectionString);
                insert = new SqlCommand("newspot",con);
            insert.CommandType = CommandType.StoredProcedure;
            insert.Parameters.Add("@LotNumber", SqlDbType.Int).Value = lotnumber;
            insert.Parameters.Add("@Compact", SqlDbType.Bit).Value = 1;
            insert.Parameters.Add("@Handicapped", SqlDbType.Bit).Value = 0;
            con.Open();
            insert.ExecuteNonQuery();
            con.Close();
            }

            for (int i = 0; i <= handi; i++)
            {
                con = new SqlConnection(SqlDataSource1.ConnectionString);
                insert = new SqlCommand("newspot",con);
                insert.CommandType = CommandType.StoredProcedure;
                insert.Parameters.Add("@LotNumber", SqlDbType.Int).Value = lotnumber;
                insert.Parameters.Add("@Compact", SqlDbType.Bit).Value = 0;
                insert.Parameters.Add("@Handicapped", SqlDbType.Bit).Value = 1;
                con.Open();
                insert.ExecuteNonQuery();
                con.Close();
            }

            for (int i = 0; i <= totalspots-(compy+handi); i++)
            {
                con = new SqlConnection(SqlDataSource1.ConnectionString);
                
                insert = new SqlCommand("newspot",con);
                insert.CommandType = CommandType.StoredProcedure;
                insert.Parameters.Add("@LotNumber", SqlDbType.Int).Value = lotnumber;
                insert.Parameters.Add("@Compact", SqlDbType.Bit).Value = 0;
                insert.Parameters.Add("@Handicapped", SqlDbType.Bit).Value = 0;
                con.Open();
                insert.ExecuteNonQuery();
                con.Close();
            }
                

        }

        protected void LotChoose_SelectedIndexChanged(object sender, EventArgs e)
        {
            SpotChoose.DataBind();
        }

        protected void SpotType_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (SpotType.SelectedValue.Equals("Regular"))
            {
                hidcomp.Text = "0";
                hidhand.Text = "0";
            }
            else if (SpotType.SelectedValue.Equals("Compact"))
            {
                hidcomp.Text = "1";
                hidhand.Text = "0";
            }
            else if (SpotType.SelectedValue.Equals("Handicap"))
            {
                hidcomp.Text = "0";
                hidhand.Text = "1";
            }
        }

        protected void Claimbutton_Click(object sender, EventArgs e)
        {
            SqlConnection connect = new SqlConnection(SqlDataSource1.ConnectionString);
            connect.Open();
            SqlCommand owns = new SqlCommand("getowner", connect);
            owns.CommandType = CommandType.StoredProcedure;
            //owns.Parameters.Add("@SpotID", SqlDbType.Int).Value = SpotChoose.SelectedValue;
           
            owns.Parameters.Add("@Owner", SqlDbType.Int).Value = Convert.ToInt32(NewOwner.Text);
            
            //connect.Open();
            SqlDataReader read = owns.ExecuteReader();
            //owns.ExecuteNonQuery();
            read.Read();
            if (read.HasRows)
            {
                setOwnerEvent();
                Response.Write("<script type='text/javascript'>");
                Response.Write("alert('Parking spot successfully claimed!!');");
                Response.Write("</script>");
            }
            else
            {
                Response.Write("<script type='text/javascript'>");
                Response.Write("alert('You did not enter a valid tenant ID!!');");
                Response.Write("</script>");
            }
            connect.Close();
            

        }

        private void setOwnerEvent()
        { 
            SqlConnection connect = new SqlConnection(SqlDataSource1.ConnectionString);
            SqlCommand owns = new SqlCommand("setowner", connect);
            owns.CommandType = CommandType.StoredProcedure;
            owns.Parameters.Add("@SpotID", SqlDbType.Int).Value = SpotChoose.SelectedValue;

            owns.Parameters.Add("@Owner", SqlDbType.Int).Value = NewOwner.Text;
            
            connect.Open();
           
            owns.ExecuteNonQuery();
            connect.Close();
        }

        
    }
}