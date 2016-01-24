using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    Search ObjSearch = new Search();
    static int PgLoadCount = 0;
   
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack )
        {
           
            if (Request.QueryString["RelID"] != null)
            {
              
            }
            else
            {
               // BindAllDDL();
            }
        }
         
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       // Server.Transfer("SearchResults.aspx?CastID=" + ddlCast.SelectedValue + "&RelID=" + ddlReligion.SelectedValue + "&AgeFrom=" + ddlAgeFrom.SelectedValue.Trim() + "&AgeTo=" + Convert.ToInt16(ddlAgeTo.SelectedValue.Trim()));
    }
}
