using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_UpdateMembership : System.Web.UI.Page
{
    EmailMsg ObjEmail = new EmailMsg();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DataBindig.BintPlan(ddlPlane);
        }
    }
    protected void btnSendReq_Click(object sender, ImageClickEventArgs e)
    {
        try
        {
            Server.Transfer("PaymentRequest.aspx?PlaneID="+ddlPlane.SelectedValue);
        }
        catch

        {

        }
    }
}