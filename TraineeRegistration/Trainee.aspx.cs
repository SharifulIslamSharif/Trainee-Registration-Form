using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TraineeRegistration
{
    public partial class Trainee : System.Web.UI.Page
    {
        String cs = ConfigurationManager.ConnectionStrings["TCS"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGrid();
            }
        }
        public void Resetall()
        {
            txt_Name.Text = "";
            ddl_Batch.ClearSelection();
            ddl_Gender.ClearSelection();
            txt_Address.Text = "";
            txt_Email.Text = "";
            txt_Contact.Text = "";
            txt_DOB.Text = "";
            lblValidation.Visible = false;
            GetImage.Visible = false;
            GridView1.SelectedIndex = -1;
        }
        public void BindGrid()
        {
            SqlConnection con = new SqlConnection(cs);
            String Query = "SELECT * FROM Trainee_Details";
            SqlDataAdapter sda = new SqlDataAdapter(Query, con);
            DataTable data = new DataTable();
            sda.Fill(data);
            GridView1.DataSource = data;
            GridView1.DataBind();
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);
            String filePath = Server.MapPath("Image/");
            String fileName = Path.GetFileName(FileUpload1.FileName);
            String extension = Path.GetExtension(fileName);
            HttpPostedFile postedFile = FileUpload1.PostedFile;
            int size = postedFile.ContentLength;

            if (FileUpload1.HasFile == true)
            {
                if (extension.ToLower() == ".jpg" || extension.ToLower() == ".jepg" || extension.ToLower() == ".png")
                {
                    if (size <= 2000000)
                    {
                        FileUpload1.SaveAs(filePath + fileName);
                        String ImagePath = "Image/" + fileName;

                        String Query = "INSERT INTO Trainee_Details VALUES(@name, @batch, @gender, @dob, @adress, @email, @contact, @Image)";
                        SqlCommand cmd = new SqlCommand(Query, con);
                        cmd.Parameters.AddWithValue("@name", txt_Name.Text);
                        cmd.Parameters.AddWithValue("@batch", ddl_Batch.SelectedItem.Value);
                        cmd.Parameters.AddWithValue("@gender", ddl_Gender.SelectedItem.Value);
                        cmd.Parameters.AddWithValue("@dob", txt_DOB.Text);
                        cmd.Parameters.AddWithValue("@adress", txt_Address.Text);
                        cmd.Parameters.AddWithValue("@email", txt_Email.Text);
                        cmd.Parameters.AddWithValue("@contact", txt_Contact.Text);
                        cmd.Parameters.AddWithValue("@Image", ImagePath);
                        con.Open();
                        int x = cmd.ExecuteNonQuery();
                        if (x > 0)
                        {
                            Response.Write("<script>alert('Your data successfully inserted.')</script>");
                            BindGrid();
                            Resetall();
                            lblValidation.Visible = false;
                        }
                        else
                        {
                            Response.Write("<script>alert('Your data is not inserted.')</script>");
                        }
                        con.Close();
                    }
                    else
                    {
                        lblValidation.Text = "Image maximum size 2MB";
                        lblValidation.Visible = true;
                        lblValidation.ForeColor = Color.Red;
                    }
                }
                else
                {
                    lblValidation.Text = "Image must be jpg, jpeg, or png";
                    lblValidation.Visible = true;
                    lblValidation.ForeColor = Color.Red;
                }
            }
            else
            {
                lblValidation.Text = "Please upload a Image";
                lblValidation.Visible = true;
                lblValidation.ForeColor = Color.Red;
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);
            String filePath = Server.MapPath("Image/");
            String fileName = Path.GetFileName(FileUpload1.FileName);
            String extension = Path.GetExtension(fileName);
            HttpPostedFile postedFile = FileUpload1.PostedFile;
            int size = postedFile.ContentLength;

            String UpdatePath = "Image/";

            if (FileUpload1.HasFile == true)
            {
                if (extension.ToLower() == ".jpg" || extension.ToLower() == ".jepg" || extension.ToLower() == ".png")
                {
                    if (size <= 2000000)
                    {
                        UpdatePath = UpdatePath + fileName;
                        FileUpload1.SaveAs(Server.MapPath(UpdatePath));

                        String Query = "UPDATE Trainee_Details SET Trainee_Name = @name, Batch_Name = @batch, Gender_Name = @gender, Trainee_DOB = @dob, Trainee_Address = @adress, Trainee_Email = @email, Trainee_Contact = @contact, Trainee_Picture = @Image Where Trainee_ID = @id";
                        SqlCommand cmd = new SqlCommand(Query, con);
                        cmd.Parameters.AddWithValue("@id", LabelForId.Text);
                        cmd.Parameters.AddWithValue("@name", txt_Name.Text);
                        cmd.Parameters.AddWithValue("@batch", ddl_Batch.SelectedItem.Value);
                        cmd.Parameters.AddWithValue("@gender", ddl_Gender.SelectedItem.Value);
                        cmd.Parameters.AddWithValue("@dob", txt_DOB.Text);
                        cmd.Parameters.AddWithValue("@adress", txt_Address.Text);
                        cmd.Parameters.AddWithValue("@email", txt_Email.Text);
                        cmd.Parameters.AddWithValue("@contact", txt_Contact.Text);
                        cmd.Parameters.AddWithValue("@Image", UpdatePath);
                        con.Open();
                        int x = cmd.ExecuteNonQuery();
                        if (x > 0)
                        {
                            Response.Write("<script>alert('Updated successfully')</script>");
                            BindGrid();
                            Resetall();
                            lblValidation.Visible = false;
                            GetImage.Visible = false;
                        }
                        else
                        {
                            Response.Write("<script>alert('Not updated')</script>");
                        }
                        con.Close();

                    }
                    else
                    {
                        lblValidation.Text = "Image maximum size 2MB";
                        lblValidation.Visible = true;
                        lblValidation.ForeColor = Color.Red;
                    }
                }
                else
                {
                    lblValidation.Text = "Image must be jpg, jpeg, or png";
                    lblValidation.Visible = true;
                    lblValidation.ForeColor = Color.Red;
                }
            }
            else
            {
                UpdatePath = GetImage.ImageUrl.ToString();
                String Query = "UPDATE Trainee_Details SET Trainee_Name = @name,Batch_Name = @batch, Gender_Name = @gender, Trainee_DOB = @dob, Trainee_Address = @adress, Trainee_Email = @email, Trainee_Contact = @contact, Trainee_Picture = @Image Where Trainee_ID = @id";
                SqlCommand cmd = new SqlCommand(Query, con);
                cmd.Parameters.AddWithValue("@id", LabelForId.Text);
                cmd.Parameters.AddWithValue("@name", txt_Name.Text);
                cmd.Parameters.AddWithValue("@batch", ddl_Batch.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@gender", ddl_Gender.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@dob", txt_DOB.Text);
                cmd.Parameters.AddWithValue("@adress", txt_Address.Text);
                cmd.Parameters.AddWithValue("@email", txt_Email.Text);
                cmd.Parameters.AddWithValue("@contact", txt_Contact.Text);
                cmd.Parameters.AddWithValue("@Image", UpdatePath);
                con.Open();
                int x = cmd.ExecuteNonQuery();
                if (x > 0)
                {
                    Response.Write("<script>alert('Updated successfully')</script>");
                    BindGrid();
                    Resetall();
                    lblValidation.Visible = false;
                    GetImage.Visible = false;
                }
                else
                {
                    Response.Write("<script>alert('Update failed')</script>");
                }
                con.Close();
            }
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);
            String Query = "DELETE FROM Trainee_Details where Trainee_ID = @id";
            SqlCommand cmd = new SqlCommand(Query, con);
            cmd.Parameters.AddWithValue("@id", LabelForId.Text);
            con.Open();
            int xyz = cmd.ExecuteNonQuery();
            if (xyz > 0)
            {
                Response.Write("<script>alert('Deleted successfully')</script>");
                BindGrid();
                Resetall();
                lblValidation.Visible = false;
                GetImage.Visible = false;

                string DeletePath = Server.MapPath(GetImage.ImageUrl.ToString());
                if (File.Exists(DeletePath) == true)
                {
                    File.Delete(DeletePath);
                }
            }
            else
            {
                Response.Write("<script>alert('Not deleted')</script>");
            }
            con.Close();
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            Resetall();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow row = GridView1.SelectedRow;
            Label lid = (Label)row.FindControl("TID");
            Label lname = (Label)row.FindControl("TName");
            Label lbatch = (Label)row.FindControl("TBatch");
            Label lgender = (Label)row.FindControl("TGender");
            Label ldob = (Label)row.FindControl("TDOB");
            Label laddress = (Label)row.FindControl("TAddress");
            Label lemail = (Label)row.FindControl("TEmail");
            Label lcontact = (Label)row.FindControl("TContact");
            System.Web.UI.WebControls.Image lpicture = (System.Web.UI.WebControls.Image)row.FindControl("TPicture");

            LabelForId.Text = lid.Text;
            txt_Name.Text = lname.Text;
            ddl_Batch.Text = lbatch.Text;
            ddl_Gender.Text = lgender.Text;
            txt_DOB.Text = ldob.Text;
            txt_Address.Text = laddress.Text;
            txt_Email.Text = lemail.Text;
            txt_Contact.Text = lcontact.Text;
            GetImage.ImageUrl = lpicture.ImageUrl;
            GetImage.Visible = true;
        }
    }
}