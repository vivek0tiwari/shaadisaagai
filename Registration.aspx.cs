using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Globalization;
using System.Threading;

public partial class Registration : System.Web.UI.Page
{
    User user = new User();
    public int RegisterUser()
    {

        user.Member_name = txtName.Text.Trim();
        user.Email = txtEmail.Text.Trim();
        user.Mobile = Convert.ToInt64(txtMobile.Text.Trim());
        user.Password = txtPassword.Text.Trim();
        user.Submitted_By = ddlSubmittedBy.SelectedValue.Trim();
        user.Gender = ddlGender.SelectedValue.Trim();
        DateTime Dob = DateTime.ParseExact(txtDOB.Text.Trim(), "dd/MM/yyyy", CultureInfo.InvariantCulture);
        user.Dob = Dob;

        user.IsVerified = 'N';
        return user.RegisterUser_Step1();

    }

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnCancle_Click(object sender, EventArgs e)
    {
        Server.Transfer("Default.aspx");
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        try
        {
            int ValidateCode = RegisterUser();
            if (ValidateCode == 3)
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
}