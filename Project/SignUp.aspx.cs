using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project
{
    public partial class SignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            RangeValidator1.MinimumValue = DateTime.Now.AddYears(-70).ToShortDateString();
            RangeValidator1.MaximumValue = DateTime.Now.AddYears(-18).ToShortDateString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (checkMember())
            {
                Response.Write("<script>alert('Member Already exits with that email');</script>");
            }
            else
            {
                newSignUpMember();
                Response.Redirect("Login.aspx");
            }
 
           
        }

        bool checkMember()
        {
            SqlConnection con = new SqlConnection("Data Source=LAPTOP-Q4OKMRPP;Initial Catalog=ApplicationLicense;Integrated Security=True");
            try
            {
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from UserSignUpInfo where EmailID='"+TextBox1.Text.Trim()+"'", con);

                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if(dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }
                
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                return false;
            }
            
        }
        void newSignUpMember()
        {
            SqlConnection con = new SqlConnection("Data Source=LAPTOP-Q4OKMRPP;Initial Catalog=ApplicationLicense;Integrated Security=True");
            try
            {
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("Insert INTO UserSignUpInfo(Name,EmailID,DOB,Password) values(@Name,@EmailID,@DOB,@Password)", con);

                cmd.Parameters.AddWithValue("@Name", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@EmailId", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@DOB", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@Password", TextBox4.Text.Trim());

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('signUp Successful.Go to User Login to Login');</script>");

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }
}