using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=LAPTOP-Q4OKMRPP;Initial Catalog=ApplicationLicense;Integrated Security=True");
            try
            {
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("Select * from UserSignUpInfo where EmailId='"+TextBox1.Text.Trim()+"' AND Password='"+TextBox2.Text.Trim()+"' ", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        Response.Write("<script>alert('Login Successfull');</script>");
                        Session["username"] = dr.GetValue(0).ToString();
                        Session["role"] = "user";
                    }
                    Response.Redirect("Home.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Invalid credentials');</script>");
                }
                con.Close();
                

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }
}