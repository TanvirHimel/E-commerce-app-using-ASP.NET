using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Net.Mail;

namespace E_Commerce
{
    public partial class ForgetPassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnResetPass_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyShoppingDB"].ConnectionString))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("Select * from tblUsers where Email = @Email", con);
                cmd.Parameters.AddWithValue("@Email", txtEmailID.Text);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);

                if(dt.Rows.Count != 0)
                {
                    string myGuid = Guid.NewGuid().ToString();
                    int Uid = Convert.ToInt32(dt.Rows[0][0 ]);
                    SqlCommand cmd1 = new SqlCommand("Insert into ForgotPass(Id, Uid, RequestDateTime) values('"+ myGuid+"','"+Uid+"',GETDATE())", con);
                    cmd1.ExecuteNonQuery();

                    //send Reset link via Email
                    string ToEmailAddress = dt.Rows[0][3].ToString();
                    string Username = dt.Rows[0][1].ToString();
                    string EmailBody = "Hi ," + Username +", <br/> <br/> Click the link below to reset your password <br/>";
                    MailMessage PassRecMail = new MailMessage("your own email", ToEmailAddress);


                    lblResetPassMsg.Text = "Reset Link sent! Check your Email for reset password";
                    lblResetPassMsg.ForeColor = System.Drawing.Color.Green;
                    txtEmailID.Text = string.Empty;
                }
                else
                {
                    lblResetPassMsg.Text = "Oops! This Email Does not exist..Try with a valid Email";
                    lblResetPassMsg.ForeColor = System.Drawing.Color.Red;
                    txtEmailID.Text = string.Empty;
                    txtEmailID.Focus();
                }
            }
        }
    }
}