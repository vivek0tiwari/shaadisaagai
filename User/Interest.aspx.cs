using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Helper;

public partial class User_Interest : System.Web.UI.Page
{
    /// <summary>
    /// Intrest Status Codes
    /// 0-pending
    /// 1-Waiting(Aproved From Admin)
    /// 2-Decliend
    /// 3-Ignored
    /// 4-Accepted
    /// </summary>
    ExpressInterest ObjIntrest = new ExpressInterest();
    Membership objMembership = new Membership();
    public void LoadDefaultIntrestInbox()
    {
       

    }
    public int Add_ToFav()
    {
        ObjIntrest.Sender = Session["uid_gender"].ToString().Split('_')[0];
        ObjIntrest.Recever = lblFavuserid.Text;
        ObjIntrest.Sending_Date = DateTime.Now;
        ObjIntrest.Status = 0;
        ObjIntrest.Msg = "Hello";
        return ObjIntrest.Add_ToFav();
    }
    protected void BindDefaultIntrestInbox()
    {
        try
        {
            ObjIntrest.User_Id = Session["uid_gender"].ToString().Split('_')[0];
            ObjIntrest.Gender = Session["uid_gender"].ToString().Split('_')[1];
            ListView1.DataSource = ObjIntrest.IntrestInbox();
            ListView1.DataBind();
        }
        catch (Exception ex)
        {

           // ShowMessageMetro(ex.Message,WebMsgBox.Type.exception.ToString());
            WebMsgBox.Show(ex.Message);
        }

    }
    protected void BindDefaultIntrestOutbox()
    {
        try
        {
            ObjIntrest.User_Id = Session["uid_gender"].ToString().Split('_')[0];
            ObjIntrest.Gender = Session["uid_gender"].ToString().Split('_')[1];
            ListView1.DataSource = ObjIntrest.IntrestOutbox();
            ListView1.DataBind();
        }
        catch (Exception ex)
        {

            // ShowMessageMetro(ex.Message,WebMsgBox.Type.exception.ToString());
            WebMsgBox.Show(ex.Message);
        }

    }

    protected void BindFavList()
    {
        try
        {
            ObjIntrest.User_Id = Session["uid_gender"].ToString().Split('_')[0];
            ObjIntrest.Gender = Session["uid_gender"].ToString().Split('_')[1];
            ListView1.DataSource = ObjIntrest.GetFavList();
            ListView1.DataBind();
        }
        catch (Exception ex)
        {

            // ShowMessageMetro(ex.Message,WebMsgBox.Type.exception.ToString());
            WebMsgBox.Show(ex.Message);
        }

    }


    protected void BindAcceptedIntrests()
    {
        try
        {
            ObjIntrest.User_Id = Session["uid_gender"].ToString().Split('_')[0];
            ObjIntrest.Gender = Session["uid_gender"].ToString().Split('_')[1];
            ListView1.DataSource = ObjIntrest.IntrestAcceptedList();
            ListView1.DataBind();
        }
        catch (Exception ex)
        {

            // ShowMessageMetro(ex.Message,WebMsgBox.Type.exception.ToString());
            WebMsgBox.Show(ex.Message);
        }
    }
    protected void BindRejectedIntrests()
    {
        try
        {
            ObjIntrest.User_Id = Session["uid_gender"].ToString().Split('_')[0];
            ObjIntrest.Gender = Session["uid_gender"].ToString().Split('_')[1];
            ListView1.DataSource = ObjIntrest.IntrestRejectedList();
            ListView1.DataBind();
        }
        catch (Exception ex)
        {

            // ShowMessageMetro(ex.Message,WebMsgBox.Type.exception.ToString());
            WebMsgBox.Show(ex.Message);
        }
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["uid_gender"] != null)
            {
                if (Request.QueryString["IntrestType"] == null)
                {
                    BindDefaultIntrestInbox();
                    lblHeader.Text = "Received Requests";
                }
                else if (Request.QueryString["IntrestType"] == "AllAccepted")
                {
                    BindAcceptedIntrests();
                    lblHeader.Text = "Accepted Requests";
                }
                else if (Request.QueryString["IntrestType"] == "AllDecline")
                {
                    BindRejectedIntrests();
                    lblHeader.Text = "Rejected Requests";
                }
                else if (Request.QueryString["IntrestType"] == "outbox")
                {
                    BindDefaultIntrestOutbox();
                    lblHeader.Text = "Interst Expresed";
                }
                else if (Request.QueryString["IntrestType"] == "Favlist")
                {
                    BindFavList();
                    lblHeader.Text = "Fav. List";
                }
                
            }

        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       // ShowMessageMetro("Hello", WebMsgBox.Type.success.ToString());
       // Page_Load(sender, e);
        ucMessage.ShowMessage("Hello", WebMsgBox.Type.success.ToString());
    }
    protected void ListView1_ItemDataBound(object sender, ListViewItemEventArgs e)
    {
        ListViewDataItem Edit = (ListViewDataItem)e.Item;
        ImageButton BtnAccept = (ImageButton)Edit.FindControl("BtnAccept");
        ImageButton btnReject = (ImageButton)Edit.FindControl("btnReject");
        Label lblname = (Label)Edit.FindControl("Label15");
        Label lblstatusText = (Label)Edit.FindControl("Label4");
        Label lblStatus = (Label)Edit.FindControl("lblStatusCode");
        if (Convert.ToInt16(lblStatus.Text.Trim()) == 2)
        {
            lblstatusText.Text = "Rejected";
        }
        else if (Convert.ToInt16(lblStatus.Text.Trim()) == 3)
        {
            lblstatusText.Text = "Ignored";
        }
     if(   lblname.Text.Length > 15)
     {
         lblname.Text = lblname.Text.Substring(0, 15);
     }

     if (Request.QueryString["IntrestType"] == null)
     {
         BindDefaultIntrestInbox();
         lblHeader.Text = "Received Requests";
     }
     else if (Request.QueryString["IntrestType"] == "AllAccepted")
     {
         BtnAccept.Visible = false;
         btnReject.Visible = true;
     }
     else if (Request.QueryString["IntrestType"] == "AllDecline")
     {
         BtnAccept.Visible =  true;
         btnReject.Visible = false;
     }
     else if (Request.QueryString["IntrestType"] == "AllIgnored")
     {

     }
     else if (Request.QueryString["IntrestType"] == "outbox")
     {
          BtnAccept.Visible =  false;
         btnReject.Visible = false;
     }
     else if (Request.QueryString["IntrestType"] == "Favlist")
     {
         BtnAccept.Visible = false;
         btnReject.Visible = false;
     }
    }
    protected void ListView1_ItemCommand(object sender, ListViewCommandEventArgs e)
    {
        try
        {
            if (e.CommandName == "Accept")
            {
                if (Session["uid_gender"] != null)
                {
                    ListViewDataItem Edit = (ListViewDataItem)e.Item;
                    LinkButton lbtnUserId = (LinkButton)Edit.FindControl("lbtnUserId");
                    ObjIntrest.Recever =  Session["uid_gender"].ToString().Split('_')[0];
                    ObjIntrest.Sender = lbtnUserId.Text.Trim();
                    ObjIntrest.Status = 4;
                    if (ObjIntrest.UPdateIntrestCode() > 0)
                    {
                        ucMessage.ShowMessage ("You Are Accepted Req. From " + lbtnUserId.Text.Trim(), WebMsgBox.Type.success.ToString());

                        if (Request.QueryString["IntrestType"] == null)
                        {
                            BindDefaultIntrestInbox();
                        }
                        else
                        {
                            BindRejectedIntrests();
                        }
                        
                        
                    }
                    else
                    {
                        ucMessage.ShowMessage("There Is Some Problem .Please Try Agai After Some time ", WebMsgBox.Type.error.ToString());
                    }
                }
            }
            else if (e.CommandName == "Reject")
            {
                if (Session["uid_gender"] != null)
                {
                    ListViewDataItem Edit = (ListViewDataItem)e.Item;
                    LinkButton lbtnUserId = (LinkButton)Edit.FindControl("lbtnUserId");
                    ObjIntrest.Recever = Session["uid_gender"].ToString().Split('_')[0];
                    ObjIntrest.Sender = lbtnUserId.Text.Trim();
                    ObjIntrest.Status = 2;
                    if (ObjIntrest.UPdateIntrestCode() > 0)
                    {
                        ucMessage.ShowMessage("You Are Rejected Req. From " + lbtnUserId.Text.Trim(), WebMsgBox.Type.success.ToString());
                        
                        if (Request.QueryString["IntrestType"] == null)
                        {
                            BindDefaultIntrestInbox();
                        }
                        else
                        {
                            BindAcceptedIntrests();
                        }
                    }
                    else
                    {
                        ucMessage.ShowMessage("There Is Some Problem .Please Try Agai After Some time ", WebMsgBox.Type.error.ToString());
                    }
                }
            }
            else if (e.CommandName == "AddToFavourite")
            {

                ListViewDataItem Edit = (ListViewDataItem)e.Item;
                Label lblname = (Label)Edit.FindControl("Label14");
                lblFavName.Text = lblname.Text;
                //lblMsg.Text = "Hi \n " + lblMemberName.Text + " Please Accept My request. ";
                lblFavuserid.Text = Convert.ToString(ListView1.DataKeys[Edit.DisplayIndex].Value.ToString());
                Image img = (Image)Edit.FindControl("Image2");
                Image3.ImageUrl = img.ImageUrl;
                pnlAddtoFav.Visible = true;
                ObjIntrest.Recever = lblFavuserid.Text;
                ObjIntrest.Sender = Session["uid_gender"].ToString().Split('_')[0];
                if (ObjIntrest.checkFav())
                {
                    btnAddtoFav.Enabled = false;
                    lblFavStatus.Text = "you have Already Added As Fav Profile.";
                    ModalPopupExtender3.OkControlID = "btnAddtoFav";

                }
                else
                {
                    lblFavStatus.Text = "Click Ok/Send To Add In Fav list";
                    btnAddtoFav.Enabled = true;
                    ModalPopupExtender3.OkControlID = "";
                }
                ModalPopupExtender3.Show();
            }
            else if (e.CommandName == "SendMSG")
            {
               
                    if (Session["uid_gender"] != null)

                    {
                        objMembership.User_Id= Session["uid_gender"].ToString().Split('_')[0];
                        if (objMembership.CheckMembershipExists())
                        {
                            ListViewDataItem Edit = (ListViewDataItem)e.Item;
                            LinkButton lbtnUserId = (LinkButton)Edit.FindControl("lbtnUserId");
                            LinkButton lbPhotoRequest = (LinkButton)Edit.FindControl("lbPhotoRequest");
                            Label lblname = (Label)Edit.FindControl("Label14");
                            lblMemberName.Text = lblname.Text;
                            //lblMsg.Text = "Hi \n " + lblMemberName.Text + " Please Accept My request. ";
                           
                            ObjIntrest.Sender = Session["uid_gender"].ToString().Split('_')[0];

                            Server.Transfer("NewMessage.aspx?ProfileID=" + lbtnUserId.Text.Trim(),false);
                          
                            // ModalPopupExtender1.Show();

                        }
                        else
                        {
                            pnlMSG.Visible = true;
                            ModalPopupExtender2.Show();
                            ModalPopupExtender2.CancelControlID = "btnCancle1";
                        }
                    }
                    else
                    {

                        // Response.Redirect("Default.aspx");
                    }
                
            }
          

            
        }
        catch (Exception ec)
        {
            ucMessage.ShowMessage(ec.Message, WebMsgBox.Type.error.ToString());
        }
    }
    public int Add_PhotoReqest()
    {
        ObjIntrest.Sender = Session["uid_gender"].ToString().Split('_')[0];
        ObjIntrest.Recever = lblMembetId.Text;
        ObjIntrest.Sending_Date = DateTime.Now;
        ObjIntrest.Status = 0;

        return ObjIntrest.Add_PhotoReqest();
    }
    protected void btnExpressIntrest_Click(object sender, EventArgs e)
    {
        try
        {
            if (!Convert.ToBoolean(Add_PhotoReqest()))
            {
                pnlExpress.Visible = false;
                ModalPopupExtender1.Hide();
                // pnlConfirmation.Visible = true;
                //WebMsgBox.Show("Your Intrest Request Sended Successfully");
                ucMessage.ShowMessage("Your Intrest Request Sended Successfully", Message.Type.success.ToString());
            }
        }
        catch (Exception ex)
        {
            WebMsgBox.Show(ex.Message);
        }
    }

    protected void btnAddtoFav_Click(object sender, EventArgs e)
    {
        try
        {
            if (!Convert.ToBoolean(Add_ToFav()))
            {
                pnlAddtoFav.Visible = false;
                ModalPopupExtender2.Hide();
                // pnlConfirmation.Visible = true;
                //WebMsgBox.Show("Your Intrest Request Sended Successfully");
                ucMessage.ShowMessage("You Are  Successfully Added To Fav.", Message.Type.success.ToString());
            }
        }
        catch (Exception ex)
        {
            WebMsgBox.Show(ex.Message);
        }
    }
}