using System;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Collections.Generic;
using System.IO;
using System.Web.Script.Services;
using System.Threading;
using AjaxControlToolkit.Design;
using System.Globalization;
public partial class _Default : System.Web.UI.Page
{
    User user = new User();

    #region Methods
  
    
    
    public void BindAllDDL()
    {
        try
        {
            
            DataBindig.BindReligion(ddlReligion);
            DataBindig.BindTougne(ddlMotherTougue);
            DataBindig.BindCast(ddlCast);
        }
        catch ( Exception ex)
        {
            throw;
        }
    }


    public int  RegisterUser()
    {
       
            user.Member_name = txtName.Text.Trim();
            user.Email = txtEmail.Text.Trim();
            user.Mobile = Convert.ToInt64(txtMobile.Text.Trim());
            user.Password = txtPassword.Text.Trim();
            user.Submitted_By = ddlSubmittedBy.SelectedValue.Trim();
            user.Gender = ddlGender.SelectedValue.Trim();
            DateTime Dob= DateTime.ParseExact(txtDOB.Text.Trim(), "dd/MM/yyyy", CultureInfo.InvariantCulture);
            user.Dob=Dob;
       
            user.IsVerified = 'N';
            return user.RegisterUser_Step1();
       
    }

    #endregion
   

    public void Authenticateuser()
    {
       
        
        try
        {

            user.Email = txtUid.Text.Trim();
            user.Password = txtPwd .Text;
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
                WebMsgBox.Show("Invalid User Name Or Password !");
                txtUid.Focus();
            }

        }
        catch (ThreadAbortException exe)
        {

        }
        catch(Exception ex)
        {
            throw;
        }
    }
    protected void Page_Load(object sender, EventArgs e)
    {
       

        if (!IsPostBack)
        {
            try
            {
                BindAllDDL();
            }
            catch(Exception ex)
            {
                WebMsgBox.Show("There Is Some Problem In Server.");
            }
        }
    }





    protected void btnSingup_Click(object sender, EventArgs e)
    {
        try
        {
            int ValidateCode = RegisterUser();
            if (ValidateCode== 3)
            {
                
                WebMsgBox.Show("Mobile No. Is Already Registerd Please Enter other Mobile No.");
                txtMobile.Focus();

            }
            else if (ValidateCode == 4)
            {
                WebMsgBox.Show("Email  Is Already Registerd Please Enter  other Email Address");
                txtEmail.Focus();
            }
            else if (ValidateCode == 1)
            {
                Session["uid_gender"] = user._user_Id + "_" + user.Gender;
                Server.Transfer("UserRegistration.aspx", true);
            }
            
            else
            {
                WebMsgBox.Show("There Is Some Problem In Server.");
            }
        }
        catch (ThreadAbortException exe)
        {

        }
        catch (Exception ex)
        {
            WebMsgBox.Show(ex.Message);
        }
      
    }
    protected void btnLogin_Click(object sender, EventArgs e)
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
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        Server.Transfer("SearchResult.aspx?CastID=" + ddlCast.SelectedValue + "&RelID=" + ddlReligion.SelectedValue + "&AgeFrom=" + ddlAgeFrom.SelectedValue.Trim() + "&AgeTo=" + Convert.ToInt16(ddlAgeTo.SelectedValue.Trim()) + "&LokingFor=" + ddlLokingFor.SelectedValue.Trim() + "&MT=" + ddlMotherTougue.SelectedValue.Trim() + "&Contry=" + ddlCountry.SelectedValue.Trim());
    }
}
