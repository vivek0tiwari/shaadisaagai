using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ViewFullProfile : System.Web.UI.Page
{
    UserDetails objUser = new UserDetails();
    Album objAlbum = new Album();
    Search objSearch = new Search();
    
    protected void BindAllDetails()
    {
        objUser.User_Id = Request.QueryString["ProfileID"].ToString();
        objUser.Gender = Request.QueryString["ProfileID"].Substring(4, 1) == "F" ? "Female" : "Male";
        FVLocationDetails.DataSource = objUser.SelectLocation();
        FVLocationDetails.DataBind();
        FVPersionalDetails.DataSource = objUser.SelectPersionalDetail();
        FVPersionalDetails.DataBind();
        FVHabbit.DataSource = objUser.SelectHabbit();
        FVHabbit.DataBind();
        FVPhysicalDetail.DataSource= objUser.SelectPhysicalDetail();
        FVPhysicalDetail.DataBind();
        FVMaindetail.DataSource = objUser.SelectOtherDetails();
        FVMaindetail.DataBind();
        FVReligiouse.DataSource=objUser.SelectReligiousDetail();
        FVReligiouse.DataBind();
        lblName.Text = objUser.GetName();
        if (objAlbum.GetphotoStatus(objUser.User_Id, null).Tables[0].Rows[0]["Permission"].ToString() == "0")
        {
            imgProfileImage.ImageUrl = "~/ProfileImages/PhotoLock.png";
        
        }
        else
        {
            imgProfileImage.ImageUrl = "~/ProfileImages/" + objAlbum.GetProfilePicture(objUser.User_Id);
        }
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request.QueryString["ProfileID"] != null)
            {
                
                BindAllDetails();
                Page.Title = lblName.Text;
            }
            else
            {

            }
        }

    }
}