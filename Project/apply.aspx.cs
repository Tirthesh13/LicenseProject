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
    public partial class apply : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            RangeValidator1.MinimumValue = DateTime.Now.AddYears(-70).ToShortDateString();
            RangeValidator1.MaximumValue = DateTime.Now.AddYears(-18).ToShortDateString();
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (check())
            {
                Response.Write("<script>alert('Application Already exits with that email or Phone no.');</script>");
            }
            else
            {
                newApply();
            }

            
        }

        bool check()
        {
            SqlConnection con = new SqlConnection("Data Source=LAPTOP-Q4OKMRPP;Initial Catalog=ApplicationLicense;Integrated Security=True");
            try
            {
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from ApplicationInfo where Email='" + TextBox3.Text.Trim() + "'Or PhoneNumber= '"+TextBox2.Text.Trim()+"'", con);

                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count >= 1)
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
        void newApply()
        {
            SqlConnection con = new SqlConnection("Data Source=LAPTOP-Q4OKMRPP;Initial Catalog=ApplicationLicense;Integrated Security=True");
            try
            {
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("Insert INTO ApplicationInfo(Name,PhoneNumber,Email,DOB,Address,State,City,PinCode,VechicleType,Aadhar) values(@Name,@PhoneNumber,@Email,@DOB,@Address,@State,@City,@PinCode,@VechicleType,@Aadhar)", con);

                cmd.Parameters.AddWithValue("@Name", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@PhoneNumber", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@Email", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@DOB", TextBox7.Text.Trim());
                cmd.Parameters.AddWithValue("@Address", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@State", DropDownList1.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@City", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@PinCode", TextBox6.Text.Trim());
                cmd.Parameters.AddWithValue("@VechicleType", DropDownList2.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@Aadhar",TextBox8.Text.Trim());

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Application Successful.Visit your neareast RTO Office for Giving Test and check your profile after successfully completing test.  ');</script>");

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }
}