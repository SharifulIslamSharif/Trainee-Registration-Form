using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TraineeRegistration
{
    public partial class Login : System.Web.UI.Page
    {
        String cs = ConfigurationManager.ConnectionStrings["TCS"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);
            string query = "SELECT Trainee_Name, Trainee_Password FROM Trainee_Registration WHERE Trainee_Name = @name and Trainee_Password = @Pass";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@name", TrName.Text);
            cmd.Parameters.AddWithValue("@Pass", TrPass.Text);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                Response.Redirect("Trainee.aspx");
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Script", "<script>alert('Something went wrong. Unable to login.')</script>");
            }
            con.Close();

        }
    }
}