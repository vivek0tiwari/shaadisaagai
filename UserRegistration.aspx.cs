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
using System.Threading;

public partial class UserRegistration : System.Web.UI.Page
{
    EmailMsg objEmail = new EmailMsg();
    UserDetails BALuser = new UserDetails();
    Membership objMembership = new Membership();
    Album ObjAlbum = new Album();
   
    public void BindAllDDLS()
    {
        try
        {
           // DataBindig.BindCast(ddlcast);
            
            DataBindig.BindEducation(ddlEducation);
            DataBindig.BindFoodDrinkSmoke(rdoDiet, rdoDrink, rdoSmoke);
            DataBindig.BindReligion(ddlReligion);
            DataBindig.BindRashi(ddlRasi);
            DataBindig.BindStar(ddlStar);
            DataBindig.BindHeight(ddlHeight);
            DataBindig.BindBody_Complextion(ddlBodyType, ddlComplextion);
            DataBindig.BindState(ddlState);
            DataBindig.BindProfession(ddlProfession);
            DataBindig.BindTougne(ddlMtoungue);
        }
        catch (Exception ex)
        {
            throw;
        }
    }
    protected void NewCast()
    {
        if (DataBindig.CheckCast(txtOther.Text.Trim()))
        {
            if (txtOther.Text == "")
            {
                WebMsgBox.Show("Please Enter New Cast");
                txtOther.Focus();
            }
            else if (DataBindig.CheckCast(txtOther.Text.Trim()))
            {
                WebMsgBox.Show("New Cast Is Already Exist Please Select From List");
                txtOther.Visible = false;
                txtOther.Text = "";
                txtOther.Focus();

            }
            else
            {
                BALuser.Cast_Id = txtOther.Text.Trim();
                DataBindig.AddNewCast(txtOther.Text.Trim().ToLowerInvariant(), ddlReligion.SelectedValue);
            }
        }
    }

    public void RegisterUser()
    {
        try
        {
            
            BALuser.User_Id = Session["uid_gender"].ToString().Split('_')[0];
            BALuser.Gender = Session["uid_gender"].ToString().Split('_')[1];
            BALuser.Profession_Id = ddlProfession.SelectedValue.Trim();
            BALuser.Complexion_Id = ddlComplextion.SelectedValue.Trim();
            BALuser.Body_Type_Code = ddlBodyType.SelectedValue.Trim();
          

           
            BALuser.Comunity_Id = ddlReligion.SelectedValue.Trim();
            BALuser.Food = rdoDiet.SelectedValue.Trim();
            BALuser.Drink = rdoDrink.SelectedValue.Trim();
            BALuser.Smoke = rdoSmoke.SelectedValue.Trim();
            BALuser.Anual_Incom = ddlIncome.SelectedValue.ToString();
            BALuser.Height = ddlHeight.SelectedValue.Trim();
            BALuser.About_Me = txtAboutme.Text.Trim();
            BALuser.About_My_Patner = txtAboutPatner.Text.Trim();
            BALuser.Blode_Group = ddlBlodGroup.SelectedValue.Trim();
            BALuser.Family_Status = ddlFamilyStatus.SelectedValue.Trim();
            BALuser.Parents_Contects = txtContact.Text.Trim();
            BALuser.Dosham = Dosam.SelectedValue.Trim();
            BALuser.Gothram = txtGothram.Text.Trim();
            BALuser.Occupation = txtOccupation.Text.Trim();
            BALuser.City = Convert.ToInt16(ddlCity.SelectedValue);
            BALuser.Weight =Convert.ToInt16( ddlWeight.SelectedValue);
            BALuser.Mother_tounge = ddlMtoungue.SelectedValue;
            BALuser.Star = ddlStar.SelectedValue.Trim();
            BALuser.Rashi = ddlRasi.SelectedValue.Trim();
            BALuser.Physical_Status = ddlPhysicleStatus.SelectedValue.Trim();
            BALuser.Country = txtCountry.Text.Trim();
            BALuser.Pin_Code =Convert.ToInt32( txtZip.Text.Trim());
            BALuser.Education = ddlEducation.SelectedValue.Trim();
            BALuser.State = ddlState.SelectedValue;
            BALuser.MaritialStatus = ddlMaritialStatus.SelectedValue;
            BALuser.CastBar = ddlCastbar.SelectedValue;
            BALuser.RegisterUser_Step2();
            ObjAlbum.CreateAlbumDirectory(Server.MapPath(@"~\ProfileImages\") + Session["uid_gender"].ToString().Split('_')[0], Session["uid_gender"].ToString().Split('_')[0], Session["uid_gender"].ToString().Split('_')[1]);

            SendEmail();

        }
        catch
        {
            throw;
        }
    }

    protected void CheckCastAndRegister()
    {
        if (ddlcast.SelectedValue == "Others")
        {
            NewCast();
            CheckCastAndRegister();
        }
        else
        {
            BALuser.Cast_Id = ddlcast.SelectedValue.Trim();
            RegisterUser();
        }



        
    }
    protected void SendEmail()
    {
        objEmail.To = BALuser.GetEmail();
        objEmail.Subject = "Welcome To shaadisaagai.com";
        objEmail.Host = "mail.shaadisaagai.com";
        objEmail.sendTemplateMSg(lblUser.Text +"("+Session["uid_gender"].ToString().Split('_')[0]+")" , Server.MapPath("MSGTemplates\\WelcomeMSG1.txt"), Server.MapPath("MSGTemplates\\WelcomeMSG2.txt"));
        
    }
 


    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["uid_gender"] == null)
        {
            Server.Transfer("Default.aspx");
        }
       
        if(!IsPostBack )
        {
            BALuser.User_Id = Session["uid_gender"].ToString().Split('_')[0];
            lblUser.Text = BALuser.GetName();
            BindAllDDLS();
        }
    
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            CheckCastAndRegister();
            Response.Redirect("~/User/UserHome.aspx");
        }
        catch (ThreadAbortException exe)
        {

        }
        catch (Exception ex)
        {
            WebMsgBox.Show(ex.Message);
        }
    }
    protected void rdoDrink_DataBinding(object sender, EventArgs e)
    {

    }
    protected void rdoDrink_DataBound(object sender, EventArgs e)
    {
        
    }
   
    protected void btnLogout_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("~/Default.aspx");
    }
    protected void ddlState_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            DataBindig.BindCity(ddlCity, ddlState.SelectedValue);
        }
        catch(Exception ex)
        {
            WebMsgBox.Show(ex.Message);
        }
    }
    protected void ddlReligion_SelectedIndexChanged(object sender, EventArgs e)
    {
        
        try
        {
            
            DataBindig.BindCast(ddlcast, ddlReligion.SelectedValue);
        }
        catch(Exception ex)
        {
        }
    }
    protected void ddlcast_SelectedIndexChanged(object sender, EventArgs e)
    {
        txtOther.Text = "";
        if (ddlcast.Text == "Others")
        {
            txtOther.Visible = true;
        }
        else
        {
            txtOther.Visible = false;
        }

    }
   
}