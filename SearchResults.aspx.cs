using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SearchResults : System.Web.UI.Page
{
    Search ObjSearch = new Search();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request.QueryString["RelID"] != null)
            {
                ListView1.DataSource = ObjSearch.GuestUserSearch(null, Request.QueryString["RelID"].ToString(), Request.QueryString["CastID"].ToString(), Convert.ToInt16(Request.QueryString["AgeFrom"].ToString()), Convert.ToInt16(Request.QueryString["AgeTo"].ToString()),null,null,null);
                ListView1.DataBind();
            }
        }
    }
    protected void ListView1_ItemCommand(object sender, ListViewCommandEventArgs e)
    {
        try
        {
            if (e.CommandName == "ExpressInterest")
            {
                if (Session["UserId"] != null)
                {
                    ListViewDataItem Edit = (ListViewDataItem)e.Item;
                    //lblreceiverId.Text = Convert.ToString(ListViewCommentsDetails.DataKeys[Edit.DisplayIndex].Value.ToString());
                   // PanelExpressInterest.Visible = true;
                   // ModalPopupInterest.Show();

                }
                else
                {

                    Response.Redirect("Default.aspx");
                }
            }
          

        }
        catch
        {
        }
         
             
    }
}