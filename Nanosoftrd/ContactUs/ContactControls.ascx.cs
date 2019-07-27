using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Mail;
using System.Net;

namespace Nanosoftrd.ContactUs
{
    public partial class ContactControls : System.Web.UI.UserControl
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void SendMail()
        {
            var fromAddress = "nanosoftrd@gmail.com";// Gmail Address from where you send the mail
            var toAddress = YourEmail.Text.ToString();
            const string fromPassword = "nanosoftrs12";//Password of your gmail address
            string subject = YourSubject.Text.ToString();
            string body = "From: " + YourName.Text + "\n";
            body += "Email: " + YourEmail.Text + "\n";
            body += "Mobile:" + YourMobile.Text + "\n";
            body += "Subject: " + YourSubject.Text + "\n";
            body += "Question: \n" + Comments.Text + "\n";
            var smtp = new System.Net.Mail.SmtpClient();
            {
                smtp.Host = "smtp.gmail.com";
                smtp.Port = 587;
                smtp.EnableSsl = true;
                smtp.DeliveryMethod = System.Net.Mail.SmtpDeliveryMethod.Network;
                smtp.Credentials = new NetworkCredential(fromAddress, fromPassword);
                smtp.Timeout = 20000;
            }
            smtp.Send(fromAddress, toAddress, subject, body);
        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string Name = YourName.Text;
            string Email = YourEmail.Text;
            string Mobile = YourMobile.Text;
            string Subject = YourSubject.Text;
            string Question = Comments.Text;

            SqlConnection con = new SqlConnection(@"Data Source=N\SQLEXPRESS;Initial Catalog=Nanosoft;Integrated Security=True");

            string sql = "insert into maildetails(Name, Email, Mobile, Subject, Question)values(@Name, @Email, @Mobile, @subject, @Question)";

            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand(sql, con);
                cmd.Parameters.AddWithValue("@Name",Name);
                cmd.Parameters.AddWithValue("@Email", Email);
                cmd.Parameters.AddWithValue("@Mobile", Mobile);
                cmd.Parameters.AddWithValue("@Subject",Subject);
                cmd.Parameters.AddWithValue("@Question", Question);


                SendMail();
                lblMsgSend.Text = "Your Comments after sending the mail";
                lblMsgSend.Visible = true;
                YourName.Text = "";
                YourEmail.Text = "";
                YourMobile.Text = "";
                YourSubject.Text = "";
                Comments.Text = "";
                cmd.ExecuteNonQuery();

            }
            catch (System.Data.SqlClient.SqlException ex)
            {
                string msg = "Insert Error:";
                msg += ex.Message;
            }
            finally
            {
                con.Close();
            }

        }
    }
}