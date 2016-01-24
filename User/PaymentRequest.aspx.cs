using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_PaymentRequest : System.Web.UI.Page
{
    Membership objMemberShip = new Membership();
    
    UserDetails objuserdetail = new UserDetails();
    protected int  SendRequest()
    {
        try
        {
            objMemberShip.User_Id = txtUserId.Text.Trim();
            objMemberShip.Mobile =Convert.ToInt64( txtMoNo.Text.Trim());
            objMemberShip.Email = txtEmail.Text.Trim();
            objMemberShip.PlaneID = ddlPlaneName.SelectedValue;
         return    objMemberShip.AddUserMembershipReqest(txtBranchDeps.Text.Trim(), Convert.ToInt32(txtAmountDeps.Text.Trim()), txtTranCheque.Text.Trim());
            
        }
        catch
        {
            throw;
        }
            
   
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            DataBindig.BintPlan(ddlPlaneName);
            if (Request.QueryString["PlaneID"] != null)
            {
                ddlPlaneName.SelectedValue = Request.QueryString["PlaneID"].ToString();
                objuserdetail.User_Id =  Session["uid_gender"].ToString().Split('_')[0];
               txtEmail.Text=  objuserdetail.GetEmail();
                
            }
        }
    }
    protected void btnCancle_Click(object sender, EventArgs e)
    {
        Server.Transfer("UserHome.aspx");
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        try
        {
            if (SendRequest() == 1)
            {
                WebMsgBox.Show("Youre Request Sended Successfully We will Contact You Soon");
                Server.Transfer("UserHome.aspx");
            }
            else
            {

            }
        }
        catch (Exception exc)
        {
            WebMsgBox.Show(exc.Message);
        }
           
            
    }
}