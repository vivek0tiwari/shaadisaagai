using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class User_ViewMessage : System.Web.UI.Page
{
    ExpressInterest objIntrest = new ExpressInterest();
    DataTable MSGdt = new DataTable();
    Membership objMembership = new Membership();
    protected void EnableTrue()
    {
        txtSubject.Enabled = true;
        txtTo.Enabled = true;
        Editor1.Enabled = true;
        Editor1.ActiveMode = AjaxControlToolkit.HTMLEditor.ActiveModeType.Design;

    }
    protected void EnableFalse()
    {
        txtSubject.Enabled = false;
        txtTo.Enabled = false;
        Editor1.Enabled = false;
        Editor1.ActiveMode = AjaxControlToolkit.HTMLEditor.ActiveModeType.Preview;

    }
    protected void ForwordMSG()
    {
        EnableTrue();
        lblDynamic.Text = "To";
        txtTo.Text = "";
        btnReply.Text = "Send";
        btnForword.Text = "Cancle";
    }
    protected void ReplyMSG()
    {
        EnableTrue();
        lblDynamic.Text = "To";
       // txtTo.Text = Request.QueryString[""].ToString();
        btnReply.Text = "Send";
        btnForword.Text = "Cancle";
    }
    protected void ResetButton()
    {
        btnForword.Text = "Forword";
        btnReply.Text = "Reply";
    }
    protected void SendMSG()
    {
        objIntrest.Sender = Session["uid_gender"].ToString().Split('_')[0];
        objIntrest.Recever = txtTo.Text;
        objIntrest.Msg = Editor1.Content; objIntrest.Status = 0; objIntrest.Sending_Date = DateTime.Today;
        objIntrest.Add_Masg(txtSubject.Text.Trim());
        WebMsgBox.Show("Message Sended Sucusessfuly to " + objIntrest.Recever);
        Server.Transfer("Inbox.aspx");
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["uid_gender"] != null && Request.QueryString["mid"] != null)
            {
                MSGdt = objIntrest.Get_MSG(Convert.ToInt32(Request.QueryString["mid"].ToString()));
                txtTo.Text = MSGdt.Rows[0]["RechiverID"].ToString();
                txtSubject.Text = MSGdt.Rows[0]["MSGSubject"].ToString();
                Editor1.Content = MSGdt.Rows[0]["MSGBody"].ToString();
                lblSubject.Text = MSGdt.Rows[0]["MSGSubject"].ToString();
            }
            else
            {
                Server.Transfer("Inbox.aspx");
            }

        }
    }
    protected void btnReply_Click(object sender, EventArgs e)
    {
        try
        {
            if (objMembership.CheckMembershipExists())
            {
                if (Request.QueryString["mid"] != null && btnReply.Text == "Reply")
                {
                    EnableTrue(); ReplyMSG();
                }
                else
                {

                    SendMSG();
                    EnableFalse();
                    ResetButton();
                }
            }
            else
            {
                pnlMSG.Visible = true;
                ModalPopupExtender2.Show();
                ModalPopupExtender2.CancelControlID = "btnCancle1";
            }
        }
        catch
        {

        }
    }
    protected void btnForword_Click(object sender, EventArgs e)
    {
        try
        {
            if (Request.QueryString["mid"] != null && btnForword.Text == "Forword")
            {
                EnableTrue(); ReplyMSG();
            }
            else
            {
                EnableFalse();
                ResetButton();
            }
        }
        catch
        {

        }
    }
}