using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.IO;
using System.Data;
using System.Data.SqlClient;
using System.Net;
using System.Net.Mail;
using System.Text;

namespace Maintenance_Fee
{
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(Helper.GetCon());
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "SELECT UserID,Username,Password FROM Users WHERE Username=@Username AND Password=@Password";
            cmd.Parameters.AddWithValue("@Username", txtUsername.Text);
            cmd.Parameters.AddWithValue("@Password", txtPassword.Text);
            SqlDataReader data = cmd.ExecuteReader();
            if (data.HasRows)
            {
                con.Close();
                Response.Redirect("WebForm2.aspx");
            }
            else
            {
                //Response.Redirect("Login.aspx");    
                txtUsername.Text = string.Empty;
                txtPassword.Text = string.Empty;
                con.Close();
            }
        }
    }
}