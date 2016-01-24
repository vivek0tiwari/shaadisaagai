using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class tmp2 : System.Web.UI.Page
{
    Search ObjSearch = new Search();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request.QueryString["RelID"] != null)
            {
               // ListView1.DataSource = ObjSearch.GuestUserSearch(null, Request.QueryString["RelID"].ToString(), Request.QueryString["CastID"].ToString(), Convert.ToInt16(Request.QueryString["AgeFrom"].ToString()), Convert.ToInt16(Request.QueryString["AgeTo"].ToString()));
                //ListView1.DataBind();
            }
        }
    }
}