using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace adug
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Login_click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-OIDLIMN\\SQLEXPRESS1;Initial Catalog=adug3;Integrated Security=True");
             con.Open();
            SqlCommand cmd = new SqlCommand("Select * from login where Username='" + TextBox1.Text + "' and Password ='" + TextBox2.Text + "'", con);
             SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
          if (dt.Rows.Count > 0)
           {
            Response.Redirect("Details.aspx");
           }
          else
         {
            Response.Write("<script>alert('Please enter valid Username and Password')</script>");
         }
        }

            
    }
}