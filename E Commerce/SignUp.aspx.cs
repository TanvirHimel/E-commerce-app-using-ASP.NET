using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace E_Commerce
{
    public partial class SignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void txtsignup_Click(object sender, EventArgs e)
        {
            if(isformvalid())
            {
                using(SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyShoppingDB"].ConnectionString))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("Insert into tblUsers (Username, Password, Email, Name) Values('" + txtUname.Text + "','" + txtPass.Text + "','" + txtEmail.Text + "','" + txtName.Text + "')", con);
                    cmd.ExecuteNonQuery();
                    Response.Write("<script> alert('Registration Successfully done'); </script>");
                    clr();
                    con.Close();
                }
            }
        }

        private bool isformvalid()
        {
            if(txtUname.Text =="")
            {
                Response.Write("<script> alert ('Username is invalid')</script>");
                return false;
            }
            else if (txtPass.Text == "")
            {
                Response.Write("<script> alert ('Password is invalid')</script>");
                return false;
            }

            else if (txtPass.Text != txtCPass.Text)
            {
                Response.Write("<script> alert ('Confirm Password is invalid')</script>");
                return false;
            }
            else if (txtEmail.Text == "")
            {
                Response.Write("<script> alert ('Email is invalid')</script>");
                return false;
            }

            else if (txtName.Text == "")
            {
                Response.Write("<script> alert ('Name is invalid')</script>");
                return false;
            }

            return true;
        }

        private void clr()
        {
            txtName.Text = string.Empty;
            txtPass.Text = string.Empty;
            txtUname.Text = string.Empty;
            txtEmail.Text = string.Empty;
        }
    }
}