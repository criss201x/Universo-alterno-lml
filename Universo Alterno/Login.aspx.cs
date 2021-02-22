using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace Universo_Alterno
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            String constr = WebConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
            SqlConnection con = new SqlConnection(constr);
            try
            {

                con.Open();
                SqlCommand cmd = new SqlCommand("select count(*) from login where username='" + txtuser.Text + "' and password ='" + txtpass.Text + "' ", con);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                cmd.ExecuteNonQuery();
                if (dt.Rows[0][0].ToString() == "1")
                {
                    //Response.Write("<script>alert('Successful in login')</script>");-->
                    Response.Redirect("~/Home.aspx");
                }
                else
                {
                    txtuser.Text = String.Empty;
                    txtpass.Text = String.Empty;
                    Response.Write("<script>alert('!!!ERROR IN LOGIN!!!')</script>");

                }
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }

        }
    }
}
