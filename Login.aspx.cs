using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Threading;

public partial class Login : System.Web.UI.Page
{
    User user = new User();
    public void Authenticateuser()
    {


        try
        {

            user.Email = txtUid.Text.Trim();
            user.Password = txtPwd.Text;
            if (user.Authentication())
            {
                Session["uid_gender"] = user.User_Id + "_" + user.Gender;

                if (user.IsVerified != 'Y')
                {
                    Response.Redirect("UserRegistration.aspx");
                }
                else
                {
                    if (Request.QueryString["refPage"] != null)
                    {
                        Response.Redirect(Request.QueryString["refPage"].ToString(), false);
                    }

                    else
                    {
                        Response.Redirect("~/User/UserHome.aspx", false);
                    }
                }
            }
            else
            {
                lblError.Text= "Invalid User Name Or Password !";
                txtUid.Focus();
            }

        }
        catch (ThreadAbortException exe)
        {

        }
        catch (Exception ex)
        {
            throw;
        }
    }
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnlogin_Click(object sender, EventArgs e)
    {
        try
        {
            Authenticateuser();
        }
        catch (ThreadAbortException exe)
        {

        }
        catch (Exception ex)
        {
            WebMsgBox.Show(ex.Message);
        }
    }
    protected void btnCancle_Click(object sender, EventArgs e)
    {
        Server.Transfer("Default.aspx");
    }
}