using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Helper;

public partial class User_UserSearch : System.Web.UI.Page
{
    Search ObjSearch = new Search();
    ExpressInterest objIntrest = new ExpressInterest();
    string LokkingFor;

    protected string GetLokkingFor()
    {
        return (Session["uid_gender"].ToString().Split('_')[1] == "Male" ? "Bried" : "Groom");
    }

    public int  Add_ExpressIntrest()
    {
        objIntrest.Sender = Session["uid_gender"].ToString().Split('_')[0];
        objIntrest.Recever=lblMembetId.Text;
        objIntrest.Sending_Date=DateTime.Now;
        objIntrest.Status=0;
        objIntrest.Msg = "Hello";
       return objIntrest.Add_ExpressInterest();
    }
    public int Add_ToFav()
    {
        objIntrest.Sender = Session["uid_gender"].ToString().Split('_')[0];
        objIntrest.Recever = lblFavuserid.Text;
        objIntrest.Sending_Date = DateTime.Now;
        objIntrest.Status = 0;
        objIntrest.Msg = "Hello";
        return objIntrest.Add_ToFav();
    }


    public void BindAllDDL()
    {
        try
        {
            DataBindig.BindReligion(ddlReligion);
             DataBindig.BindTougne(ddlMotherTougue);
            DataBindig.BindCast(ddlCast);
        }
        catch (Exception ex)
        {
            throw;
        }
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["uid_gender"] != null)
            {
                BindAllDDL();
                if (Request.QueryString["RelID"] != null)
                {
                    ddlReligion.SelectedValue = Request.QueryString["RelID"].ToString();
                    ddlCast.SelectedValue = Request.QueryString["CastID"].ToString();
                    ddlAgeFrom.SelectedValue = "\r\n" + Request.QueryString["AgeFrom"].ToString().Trim() + "\r\n";
                    ddlAgeTo.SelectedValue = "\r\n" + Request.QueryString["AgeTo"].ToString().Trim() + "\r\n";

                    ListView1.DataSource = ObjSearch.GuestUserSearch(GetLokkingFor(), Request.QueryString["RelID"].ToString(), Request.QueryString["CastID"].ToString(), Convert.ToInt16(Request.QueryString["AgeFrom"].ToString()), Convert.ToInt16(Request.QueryString["AgeTo"].ToString()), Session["uid_gender"].ToString().Split('_')[0],ddlMotherTougue.SelectedValue,ddlCountry.SelectedValue);
                    ListView1.DataBind();
                }
                else
                {
                    //Response.Redirect("UserHome.aspx");
                }
            }
            else
            {
                //Response.Redirect("UserHome.aspx");
            }
        }
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Server.Transfer("UserSearch.aspx?CastID=" + ddlCast.SelectedValue + "&RelID=" + ddlReligion.SelectedValue + "&AgeFrom=" + ddlAgeFrom.SelectedValue.Trim() + "&AgeTo=" + Convert.ToInt16(ddlAgeTo.SelectedValue.Trim()) + "&LokingFor=" + GetLokkingFor()+ "&MT=" + ddlMotherTougue.SelectedValue.Trim() + "&Contry=" + ddlCountry.SelectedValue.Trim());
    }
    protected void Button2_Click(object sender, EventArgs e)
    {

    }
    protected void ListView1_ItemCommand(object sender, ListViewCommandEventArgs e)
    {

        if (e.CommandName == "ExpressInterest")
        {
            if (Session["uid_gender"] != null)
            {
                ListViewDataItem Edit = (ListViewDataItem)e.Item;
                Label lblname = (Label)Edit.FindControl("Label14");
                lblMemberName.Text = lblname.Text;
                //lblMsg.Text = "Hi \n " + lblMemberName.Text + " Please Accept My request. ";
                 lblMembetId.Text = Convert.ToString(ListView1.DataKeys[Edit.DisplayIndex].Value.ToString());
                 Image img=  (Image)Edit.FindControl("Image2");
                Image1.ImageUrl = img.ImageUrl;
                 pnlExpress.Visible = true;
                 objIntrest.Recever = lblMembetId.Text;
                 objIntrest.Sender = Session["uid_gender"].ToString().Split('_')[0];
                 if (objIntrest.checkExpressInterest())
                 {
                     btnExpressIntrest.Enabled = false;
                     lblStatus.Text = "you have Already Sended Request.";
                     ModalPopupExtender1.OkControlID = "btnExpressIntrest";

                 }
                 else
                 {
                     btnExpressIntrest.Enabled = true;
                     ModalPopupExtender1.OkControlID = "";
                 }
               ModalPopupExtender1.Show();
             

            }
            else if (e.CommandName == "NewMSG")
            {
                
               // Response.Redirect("Default.aspx");
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
            objIntrest.Recever = lblFavuserid.Text;
            objIntrest.Sender = Session["uid_gender"].ToString().Split('_')[0];
            if (objIntrest.checkFav())
            {
                btnAddtoFav.Enabled = false;
                lblFavStatus.Text = "you have Already Added As Fav Profile.";
                ModalPopupExtender2.OkControlID = "btnAddtoFav";

            }
            else
            {
                lblFavStatus.Text = "Click Ok/Send To Add In Fav list";
                btnAddtoFav.Enabled = true;
                ModalPopupExtender2.OkControlID = "";
            }
            ModalPopupExtender2.Show();
        }
    }

    protected void btnExpressIntrest_Click(object sender, EventArgs e)
    {
        try
        {
            if (!Convert.ToBoolean(Add_ExpressIntrest()))
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