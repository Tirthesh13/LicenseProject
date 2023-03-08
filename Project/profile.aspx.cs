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
    public partial class profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
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

                SqlCommand cmd = new SqlCommand("Select * from ApplicationInfo where Email='" + TextBox1.Text.Trim() + "' ", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        if (dr.GetValue(10).ToString() == "PASS")
                        {
                            
                            Label1.Text = dr.GetValue(0).ToString();
                            Label2.Text = dr.GetValue(1).ToString();
                            Label3.Text = dr.GetValue(4).ToString();
                            Label4.Text = dr.GetValue(11).ToString();
                            Label5.Text = dr.GetValue(6).ToString();
                            Label6.Text = dr.GetValue(9).ToString();

                        }
                        else
                        {
                            Response.Write("<script>alert('You have not passed your Exam yet');</script>");
                        }

                    }

                        
                    
                    
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