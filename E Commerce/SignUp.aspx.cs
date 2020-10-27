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
                    SqlCommand cmd = new SqlCommand("Insert into tblUsers (Username, Password, Email, Name, Usertype) Values('" + txtUname.Text + "','" + txtPass.Text + "','" + txtEmail.Text + "','" + txtName.Text + "','User')", con);
                    cmd.ExecuteNonQuery();
                    Response.Write("<script> alert('Reg Successfully done'); </script>");
                    clr();
                    con.Close();
                    lblMsg.Text = "Registration Successfull";
                    lblMsg.ForeColor = System.Drawing.Color.Green;
                }
                Response.Redirect("~/SignIn.aspx");
            }
            else
            {
                Response.Write("<script> alert('Registration Failed'); </script>");
                lblMsg.Text = "All fields are mandatory";
                lblMsg.ForeColor = System.Drawing.Color.Red;
            }
        }

        private bool isformvalid()
        {
            if(txtUname.Text =="")
            {
                Response.Write("<script> alert ('Username is invalid')</script>");
                txtUname.Focus();
                return false;
            }
            else if (txtPass.Text == "")
            {
                Response.Write("<script> alert ('Password is invalid')</script>");
                txtPass.Focus();
                return false;
            }

            else if (txtPass.Text != txtCPass.Text)
            {
                Response.Write("<script> alert ('Confirm Password is invalid')</script>");
                txtCPass.Focus();
                return false;
            }
            else if (txtEmail.Text == "")
            {
                Response.Write("<script> alert ('Email is invalid')</script>");
                txtEmail.Focus();
                return false;
            }

            else if (txtName.Text == "")
            {
                Response.Write("<script> alert ('Name is invalid')</script>");
                txtName.Focus();
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
            txtCPass.Text = string.Empty;
        }
    }
}