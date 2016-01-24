using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ForgatPwd : System.Web.UI.Page
{
    DALuser ObjDal = new DALuser();
    User objBal = new User();
    public string forgotPaasword()
    {
        try
        {
          if(!ObjDal.checkEmail(objBal))
          {
             lblError.Text= "Email Addres Not Found";
          }
          else
          {
              objBal.Password = ObjDal.GetPassword(objBal);
          }
          return objBal.Password;
        }
        catch
        {
            throw;
        }
        finally{

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
            lblError.Text = "Your Password Is Sended To Your Email";
        }
    }
}