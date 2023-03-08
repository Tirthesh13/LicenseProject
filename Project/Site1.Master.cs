using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["role"] == "user")
                {
                    LinkButton1.Visible = false;
                    LinkButton2.Visible = false;
                    LinkButton3.Visible = true;
                    LinkButton4.Visible = true;
                }
            }
            catch(Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("SignUp.aspx");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Session["username"] = "";
            Session["role"] = "";

            LinkButton1.Visible = true;
            LinkButton2.Visible = true;
            LinkButton3.Visible = false;
            LinkButton4.Visible = false;
            Response.Redirect("Home.aspx");
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            
            Response.Redirect("profile.aspx");
           

        }
    }
}