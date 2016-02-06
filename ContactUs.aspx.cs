using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ContactUs : System.Web.UI.Page
{
    EmailMsg objEmail = new EmailMsg();
    protected void SendEmail()
    {
        objEmail.To = "info@shaadisaagai.com";
        objEmail.Subject = "Contact Request From <br/>"+txtEmail.Text+"("+txtUserId+ ")";
        objEmail.Host = "mail.shaadisaagai.com";
        objEmail.Body = txtMoNo.Text + txtEmail.Text;
        objEmail.SendEmail();

    }
 
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        try
        {
            SendEmail();
            lblError.Text = "We Have Got Your Feedback.Thanks For Contact Us";
        }
        catch(Exception exc)
        {
            lblError.ForeColor = System.Drawing.Color.Red;
            lblError.Text = exc.Message;
        }
    }
    protected void btnCancle_Click(object sender, EventArgs e)
    {
        Server.Transfer("Default.aspx");
    }
}