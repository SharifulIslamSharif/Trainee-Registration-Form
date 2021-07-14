using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TraineeRegistration
{
    public partial class Registration : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-SV5OLUK;Initial Catalog=TraineeInfoDB;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void RegisterButton_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("INSERT INTO [Trainee_Registration] ([Trainee_Name],[Trainee_Email],[Trainee_Password],[Trainee_CPassword]) VALUES (@Trainee_Name, @Trainee_Email, @Trainee_Password, @Trainee_CPassword)", con);

            //cmd.Connection = con;
            cmd.Parameters.AddWithValue("@Trainee_Name", TrName.Text);
            cmd.Parameters.AddWithValue("@Trainee_Email", TrEmail.Text);
            cmd.Parameters.AddWithValue("@Trainee_Password", TrPass.Text);
            cmd.Parameters.AddWithValue("@Trainee_CPassword", TrCPass.Text);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("Login.aspx");
        }

        protected void ResetButton_Click(object sender, EventArgs e)
        {
            TrName.Text = "";
            TrEmail.Text = "";
            TrPass.Text = "";
            TrCPass.Text = "";
        }
    }
}