using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_Inbox : System.Web.UI.Page
{
       Membership objMembership = new Membership();
    ExpressInterest ObjMSG = new ExpressInterest();
    protected void BindInbox()
    {
        ObjMSG.User_Id = Session["uid_gender"].ToString().Split('_')[0];
        ListView1.DataSource = ObjMSG.Get_Inbox();
        ListView1.DataBind();
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["uid_gender"] != null)
            {
                if (Request.QueryString["Req"] == null)
                {
                    BindInbox();
                    lblTitle.Text = "Inbox";
                    lblHeader.Text = "Sender";
                }
                else
                {
                    ObjMSG.User_Id = Session["uid_gender"].ToString().Split('_')[0];
                    ListView1.DataSource = ObjMSG.Get_SentMSG();
                    ListView1.DataBind();
                    lblTitle.Text = "OutBox";
                    lblHeader.Text = "Receiver";
                }
            }
        }
    }
    protected void ListView1_ItemCommand(object sender, ListViewCommandEventArgs e)
    {

    }
    protected void ListView1_ItemDataBound(object sender, ListViewItemEventArgs e)
    {

    }
    protected void chkAll_CheckedChanged(object sender, EventArgs e)
    {
        foreach (ListViewDataItem dlitem in ListView1.Items)
        {
            CheckBox CHKsel = (CheckBox)dlitem.FindControl("ckeckboxSelect");
            if (CHKsel.Checked)
            {
                CHKsel.Checked = false;
            }
            else
            {
                CHKsel.Checked = true;
            }

        }
        
    }
    protected void btnNew_Click(object sender, EventArgs e)
    {
        if (Session["uid_gender"] != null)
        {
            objMembership.User_Id = Session["uid_gender"].ToString().Split('_')[0];
            if (objMembership.CheckMembershipExists())
            {


                Server.Transfer("NewMessage.aspx");

                // ModalPopupExtender1.Show();

            }
            else
            {
                pnlMSG.Visible = true;
                ModalPopupExtender2.Show();
                ModalPopupExtender2.CancelControlID = "btnCancle1";
            }
        }
    }
    protected void btnDelete_Click(object sender, EventArgs e)
    {
        foreach (ListViewDataItem dlitem in ListView1.Items)
        {
            CheckBox CHKsel = (CheckBox)dlitem.FindControl("ckeckboxSelect");
             Label lblMSgid =(Label)dlitem.FindControl("lblMSgid");
            if (CHKsel.Checked)
            {
                ObjMSG.Update_MSG_Status(-1, Convert.ToInt32(lblMSgid.Text.Trim()));
            }
            else
            {
               
            }

        }
        WebMsgBox.Show("Message Deleted Successfuly");
        BindInbox();
    }
}