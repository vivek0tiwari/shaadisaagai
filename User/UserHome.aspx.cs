using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_UserHome : System.Web.UI.Page
{
   
    protected void Page_Load(object sender, EventArgs e)
    {
        Album objAlbum=new Album();
        Membership ObjMembership =new Membership();
        UserDetails ObjUser = new UserDetails();
          if (Session["uid_gender"] == null)
            {
                Response.Redirect("~/Default.aspx?refPage=" + Page.AppRelativeVirtualPath);
            }
            else
            {
                if (!IsPostBack)
                {
                    ObjUser.User_Id = Session["uid_gender"].ToString().Split('_')[0];
                    lblUser.Text= ObjUser.GetName();
                    lblProfileID.Text = Session["uid_gender"].ToString().Split('_')[0];
                    imgProfileImage.ImageUrl = "~/ProfileImages/" + objAlbum.GetProfilePicture(Session["uid_gender"].ToString().Split('_')[0]);
                    
                 ObjMembership = ObjMembership.GetMembershipDetail();
                 if (ObjMembership != null)
                 {
                     lblPlane.Text = ObjMembership.PlaneName;
                 }
                 else
                 {
                     lblPlane.Text = "Free Plan";
                 }
                }
            }

    }
}