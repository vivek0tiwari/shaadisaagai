using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_PhotoRequests : System.Web.UI.Page
{
    ExpressInterest ObjIntrest = new ExpressInterest();
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
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["uid_gender"] != null)
            {
                BindDefaultIntrestInbox();
            }
        }
    }
    protected void ListView1_ItemCommand(object sender, ListViewCommandEventArgs e)
    {

    }
    protected void ListView1_ItemDataBound(object sender, ListViewItemEventArgs e)
    {

    }
}