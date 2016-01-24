using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_NewMessage : System.Web.UI.Page
{
    ExpressInterest objMsg = new ExpressInterest();
    protected void SendMSG()
    {
        objMsg.Sender = Session["uid_gender"].ToString().Split('_')[0];
        objMsg.Recever = txtTo.Text;
        objMsg.Msg = Editor1.Content; objMsg.Status = 0; objMsg.Sending_Date = DateTime.Today;
        objMsg.Add_Masg(txtSubject.Text.Trim());
        WebMsgBox.Show("Message Sended Sucusessfuly to " + objMsg.Recever);
        Server.Transfer("Inbox.aspx");
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["uid_gender"] != null && Request.QueryString["ProfileID"] != null)
            {
                txtTo.Text= Request.QueryString["ProfileID"].ToString();
            }
        }
    }
    protected void btnCancle_Click(object sender, EventArgs e)
    {
        Server.Transfer("Inbox.aspx");
    }
    protected void btnSend_Click(object sender, EventArgs e)
    {
        try
        {
             SendMSG();
        }
        catch
        {

        }
    }
}