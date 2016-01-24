using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class MasterPage : System.Web.UI.MasterPage
{
    ExpressInterest objIntrest = new ExpressInterest();
    DataSet Allcount = new DataSet();
    protected void SetAllMsgCount()
    {

        Allcount = objIntrest.GetCount();
        lblAccepted.Text = Allcount.Tables[4].Rows[0]["RC"].ToString();
        lblDeclined.Text = Allcount.Tables[5].Rows[0]["RC"].ToString();
        lblExpressed.Text = Allcount.Tables[6].Rows[0]["RC"].ToString();
        lblDraft.Text = Allcount.Tables[2].Rows[0]["RC"].ToString();
        lblInbox.Text = Allcount.Tables[0].Rows[0]["RC"].ToString();
        lblSendMSG.Text = Allcount.Tables[1].Rows[0]["RC"].ToString();
        lblRechived.Text = Allcount.Tables[3].Rows[0]["RC"].ToString();
        lblFav.Text = Allcount.Tables[7].Rows[0]["RC"].ToString();
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        UserDetails BAL = new UserDetails();
        if (Session["uid_gender"] == null)
        {
            Response.Redirect("~/Default.aspx?refPage=" + Page.AppRelativeVirtualPath);
        }
        else 
        {
            if (!IsPostBack)
            {
                try
                {
                    objIntrest.User_Id = Session["uid_gender"].ToString().Split('_')[0];
                    BAL.User_Id = Session["uid_gender"].ToString().Split('_')[0];
                    lblUser.Text = BAL.GetName();
                    SetAllMsgCount();
                }
                catch (Exception ex)
                {
                    WebMsgBox.Show(ex.Message);
                }
            }
        }
    }
    protected void btnLogout_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("~/Default.aspx");
    }
}
