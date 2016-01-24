using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class User_ChangeProfilePic : System.Web.UI.Page
{
    Album objAlbum = new Album();
    protected void DisplayImages()
    {
        dlQLImages.DataSource = objAlbum.GetAllImages(Server.MapPath(@"~\ProfileImages\") + Session["uid_gender"].ToString().Split('_')[0]);
        dlQLImages.DataBind();
       
    }
    protected void BindDettingRadioList()
    {
        DataSet ds = new DataSet();
       ds= objAlbum.GetphotoStatus(Session["uid_gender"].ToString().Split('_')[0], null);
       rblSetting.SelectedValue = ds.Tables[0].Rows[0]["Permission"].ToString();

    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["uid_gender"] != null)
        {
            imgProfileImage.ImageUrl = "~/ProfileImages/" + objAlbum.GetProfilePicture(Session["uid_gender"].ToString().Split('_')[0]);
            if (!IsPostBack)
            {
                DisplayImages();
                BindDettingRadioList();

            }
        }
        else
        {
            Response.Redirect("~/Default.aspx?refPage=" + Page.AppRelativeVirtualPath);
        }
    }
    protected void dlQLImages_ItemCommand(object source, DataListCommandEventArgs e)
    {
        try
        {
            if (e.CommandName == "SetProfilePic")
            {
                WebMsgBox.Show(objAlbum.SetProfilePicture(e.CommandArgument.ToString(), e.CommandArgument.ToString().Split('/')[0]));
                imgProfileImage.ImageUrl = "~/ProfileImages/" + objAlbum.GetProfilePicture(Session["uid_gender"].ToString().Split('_')[0]);

            }
        }
        catch (Exception ex)
        {
            WebMsgBox.Show(ex.Message);
        }
      

    }
    protected void btnReset_Click(object sender, EventArgs e)
    {
        WebMsgBox.Show(objAlbum.ResetProfilePic( Session["uid_gender"].ToString().Split('_')[0], Session["uid_gender"].ToString().Split('_')[1]));
        imgProfileImage.ImageUrl = "~/ProfileImages/" + objAlbum.GetProfilePicture(Session["uid_gender"].ToString().Split('_')[0]);
    }
    protected void btnChange_Setting_Click(object sender, EventArgs e)
    {
        try
        {
            if (objAlbum.ChangephotoStatus(Session["uid_gender"].ToString().Split('_')[0], rblSetting.SelectedValue) > 0)
            {
                WebMsgBox.Show("Your Settings Changes Succesfully");
                BindDettingRadioList();
            }
        }
        catch(Exception ex)
        {
        }
    }
}