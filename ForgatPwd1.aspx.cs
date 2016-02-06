using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ForgatPwd1 : System.Web.UI.Page
{
    DALuser ObjDal = new DALuser();
    User objBal = new User();
    EmailMsg objEmail = new EmailMsg();
    protected void SendEmail()
    {
        objBal=ObjDal.GetDetail(objBal);
        objEmail.To = txtEmail1.Text.Trim();
        objEmail.Subject = "Password From shaadisaagai.com";
        objEmail.Host = "shaadisaagai.com";
        objEmail.sendTemplateMSg("<br>UserID :- <b>" + objBal.User_Id + "</b> <br>Password :-<b>" + objBal.Password+"</b>", Server.MapPath("MSGTemplates\\WelcomeMSG1.txt"), Server.MapPath("MSGTemplates\\WelcomeMSG2.txt"));

    }
    public string forgotPaasword()
    {
        try
        {
            if (!ObjDal.checkEmail(objBal))
            {
                lblError.Text = "Email Addres Not Found";
            }
            else
            {
                SendEmail();// objBal.Password = ObjDal.GetPassword(objBal);
            }
            return objBal.Password;
        }
        catch
        {
            throw;
        }
        finally
        {

        }
    }
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnGetPassword_Click(object sender, EventArgs e)
    {
        objBal.Email = txtEmail1.Text.Trim();
        if (forgotPaasword() != null)
        {
            lblError.ForeColor = System.Drawing.Color.Gray;
            lblError.Text = "Your Password Is Sended To Your Email.<br> <a href='Login.aspx'>Login</a> Access Your Account";
        }
    }
}