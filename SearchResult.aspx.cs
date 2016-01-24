using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Threading;

public partial class SearchResult : System.Web.UI.Page
{
    Search ObjSearch = new Search();
    User user = new User();
    public void Authenticateuser()
    {


        try
        {

            user.Email = txtEmail.Text.Trim();
            user.Password = txtPassword.Text.Trim();
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
                       Response.Redirect("User/UserSearch.aspx?CastID=" + ddlCast.SelectedValue + "&RelID=" + ddlReligion.SelectedValue + "&AgeFrom=" + ddlAgeFrom.SelectedValue.Trim() + "&AgeTo=" + Convert.ToInt16(ddlAgeTo.SelectedValue.Trim()) + "&LokingFor=" + ddlLokingFor.SelectedValue.Trim());
                    }
                }
            }
            else
            {
                WebMsgBox.Show("Invalid User Name Or Password !");
                //txtUid.Focus();
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
    public void BindAllDDL()
    {
        try
        {
            DataBindig.BindReligion(ddlReligion);
           // DataBindig.BindTougne(ddlMotherTougue);
            DataBindig.BindCast(ddlCast);
            DataBindig.BindTougne(ddlMotherTougue);
        }
        catch (Exception ex)
        {
            throw;
        }
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            
            BindAllDDL();
            if (Request.QueryString["RelID"] != null)
            {
                ddlReligion.SelectedValue = Request.QueryString["RelID"].ToString();
                ddlCast.SelectedValue = Request.QueryString["CastID"].ToString();
                ddlAgeFrom.SelectedValue = "\r\n" + Request.QueryString["AgeFrom"].ToString().Trim() + "\r\n";
                ddlAgeTo.SelectedValue = "\r\n" + Request.QueryString["AgeTo"].ToString().Trim() + "\r\n";
                ddlLokingFor.SelectedValue = Request.QueryString["LokingFor"].ToString().Trim();
                ddlMotherTougue.SelectedValue = Request.QueryString["MT"].ToString().Trim();
                ListView1.DataSource = ObjSearch.GuestUserSearch(Request.QueryString["LokingFor"].ToString().Trim(), Request.QueryString["RelID"].ToString(), Request.QueryString["CastID"].ToString(), Convert.ToInt16(Request.QueryString["AgeFrom"].ToString()), Convert.ToInt16(Request.QueryString["AgeTo"].ToString()), null, Request.QueryString["MT"].ToString().Trim(), Request.QueryString["Contry"].ToString().Trim());
                ListView1.DataBind();
            }
        }
        
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Server.Transfer("SearchResult.aspx?CastID=" + ddlCast.SelectedValue + "&RelID=" + ddlReligion.SelectedValue + "&AgeFrom=" + ddlAgeFrom.SelectedValue.Trim() + "&AgeTo=" + Convert.ToInt16(ddlAgeTo.SelectedValue.Trim()) + "&LokingFor=" + ddlLokingFor.SelectedValue.Trim() + "&MT=" + ddlMotherTougue.SelectedValue.Trim() + "&Contry=" + ddlCountry.SelectedValue.Trim());
      
    }
    protected void Button2_Click(object sender, EventArgs e)
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
    protected void ListView1_ItemCommand(object sender, ListViewCommandEventArgs e)
    {
        if (e.CommandName == "ViewFullProfile")
            {
               
            }
    }
}