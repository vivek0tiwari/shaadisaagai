using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Collections;
using Helper;
public partial class User_UpdateProfile : System.Web.UI.Page
{
    UserDetails BAL = new UserDetails();
    DALProfile DalProfile = new DALProfile();
    DataSet ds = new DataSet();


    protected void WebMSG(bool Fctn)
    {
        if (Fctn)
            ucMessage.ShowMessage("Your Profile Updated", WebMsgBox.Type.success.ToString());
        else
            ucMessage.ShowMessage("Please Try Again ", WebMsgBox.Type.success.ToString());
        
    }

    private void LoadDet()
    {

        LoadPersionalDetail();
        LoadPhysicallDetail();
        LoadEducation();
        LoadReligion();
    }
    private void LoadPersionalDetail()
    {
        ds = BAL.SelectPersionalDetail();
        Session["Bride_groom_Id"] = ds.Tables[0].Rows[0]["id"].ToString();
       // System.Threading.Thread.Sleep(2000);
        DVPersionalDetail.DataSource = ds;

        DVPersionalDetail.DataBind();
    }
    private void LoadPhysicallDetail()
    {
        DVPhysicalDetail.DataSource = BAL.SelectPhysicalDetail();

        DVPhysicalDetail.DataBind();
    }
    private void LoadReligion()
    {
        DVReligion.DataSource = BAL.SelectReligiousDetail();
        DVReligion.DataBind();
    }
    private void LoadEducation()
    {
        DVEducation.DataSource = BAL.SelectEducationDetails();
        DVEducation.DataBind();
    }



    protected void Page_Load(object sender, EventArgs e)
    {
        DataSet DS = new DataSet();

        if (Session["uid_gender"] != null)
        {

            BAL.User_Id = Session["uid_gender"].ToString().Split('_')[0];
            BAL.Gender = Session["uid_gender"].ToString().Split('_')[1];
            if (!IsPostBack)
            {
                LoadDet();
            }
        }

    }
    protected void DVPersionalDetail_ModeChanging(object sender, DetailsViewModeEventArgs e)
    {


        DVPersionalDetail.ChangeMode(e.NewMode);
        LoadPersionalDetail();

    }


    protected void DVPersionalDetail_ItemUpdating(object sender, DetailsViewUpdateEventArgs e)
    {
        //DataRowView row = (DataRowView)((DetailsView)sender).DataItem;
        TextBox txtAboutMyPatner = (TextBox)((DetailsView)sender).FindControl("txtAboutMyPatner");
        TextBox txtAboutMe = (TextBox)((DetailsView)sender).FindControl("txtAboutMe");

        DropDownList ddlHeight = (DropDownList)((DetailsView)sender).FindControl("ddlHeight");
        DropDownList ddlWeight = (DropDownList)((DetailsView)sender).FindControl("ddlWeight");
        DropDownList ddlPhysicleStatus = (DropDownList)((DetailsView)sender).FindControl("ddlPhysicleStatus");
        BAL.About_Me = txtAboutMe.Text.Trim();
        BAL.About_My_Patner = txtAboutMyPatner.Text.Trim();
        BAL.Height = ddlHeight.SelectedValue;
        BAL.Weight = Convert.ToInt32(ddlWeight.SelectedValue);
        BAL.Physical_Status = ddlPhysicleStatus.SelectedValue;
        BAL.Gender = Session["uid_gender"].ToString().Split('_')[1];
        BAL.Id = Session["Bride_groom_Id"].ToString();
        //SqlCommand com = new SqlCommand("update tblGroom set About_Me='" + txtAboutMe .Text + "' where Groom_Id=" + BAL.Id, DbManager.Con);
        //DbManager.Open();
        //WebMsgBox.Show( com.ExecuteNonQuery().ToString());

        WebMSG(DalProfile.UpdatePersionalDetail(BAL));
        
        

        DVPersionalDetail.ChangeMode(DetailsViewMode.ReadOnly);
        LoadPersionalDetail();
     //   System.Threading.Thread.Sleep(3000);
        




    }
    protected void DVPersionalDetail_DataBound(object sender, EventArgs e)
    {
        if (((DetailsView)sender).CurrentMode == DetailsViewMode.Edit)
        {
            DataRowView row = (DataRowView)((DetailsView)sender).DataItem;

            DropDownList ddlHeight = (DropDownList)((DetailsView)sender).FindControl("ddlHeight");
            DataBindig.BindHeight(ddlHeight);
            ddlHeight.SelectedValue = row["Height"].ToString();

        }
    }

    protected void DVPhysicalDetail_PageIndexChanging(object sender, DetailsViewPageEventArgs e)
    {

    }
    protected void DVPhysicalDetail_ModeChanging(object sender, DetailsViewModeEventArgs e)
    {
        DVPhysicalDetail.ChangeMode(e.NewMode);
        LoadPhysicallDetail();
    }
    protected void DVPhysicalDetail_DataBound(object sender, EventArgs e)
    {
        if (((DetailsView)sender).CurrentMode == DetailsViewMode.Edit)
        {
            DataRowView row = (DataRowView)((DetailsView)sender).DataItem;




            RadioButtonList ddlBodyType = (RadioButtonList)((DetailsView)sender).FindControl("ddlBodyType");
            RadioButtonList ddlComplextion = (RadioButtonList)((DetailsView)sender).FindControl("radioComplextion");
            DataBindig.BindBody_Complextion(ddlBodyType, ddlComplextion);
            ddlBodyType.SelectedValue = row["Body_Type_Code"].ToString();
            ddlComplextion.SelectedValue = row["Complexion_Id"].ToString();

        }
    }
    protected void DVPhysicalDetail_ItemUpdating(object sender, DetailsViewUpdateEventArgs e)
    {
        TextBox txtParentsContact = (TextBox)((DetailsView)sender).FindControl("txtParentsContact");

        RadioButtonList radioBodyType = (RadioButtonList)((DetailsView)sender).FindControl("ddlBodyType");
        RadioButtonList radioComplextion = (RadioButtonList)((DetailsView)sender).FindControl("radioComplextion");

        DropDownList ddlFamilyStatus = (DropDownList)((DetailsView)sender).FindControl("ddlFamilyStatus");
        DropDownList ddlBlodGroup = (DropDownList)((DetailsView)sender).FindControl("ddlBlodGroup");

        BAL.Parents_Contects = txtParentsContact.Text.Trim();
        BAL.Body_Type_Code = radioBodyType.SelectedValue;
        BAL.Complexion_Id = radioComplextion.SelectedValue;
        BAL.Blode_Group = ddlBlodGroup.SelectedValue;
        BAL.Family_Status = ddlFamilyStatus.SelectedValue;

        BAL.Gender = Session["uid_gender"].ToString().Split('_')[1];
        BAL.Id = Session["Bride_groom_Id"].ToString();
        //SqlCommand com = new SqlCommand("update tblGroom set About_Me='" + txtAboutMe .Text + "' where Groom_Id=" + BAL.Id, DbManager.Con);
        //DbManager.Open();
        //WebMsgBox.Show( com.ExecuteNonQuery().ToString());

        WebMSG(DalProfile.UpdatePhysicalDetail(BAL));
       
        DVPhysicalDetail.ChangeMode(DetailsViewMode.ReadOnly);
        LoadPhysicallDetail();
    }
   
    protected void DVReligion_ModeChanging(object sender, DetailsViewModeEventArgs e)
    {
        DVReligion.ChangeMode(e.NewMode);
        LoadReligion();
    }
    protected void DVReligion_ItemUpdating(object sender, DetailsViewUpdateEventArgs e)
    {
      
        DataRowView row = (DataRowView)((DetailsView)sender).DataItem;
        DropDownList ddlReligion = (DropDownList)((DetailsView)sender).FindControl("ddlReligion");
        DropDownList ddlCast = (DropDownList)((DetailsView)sender).FindControl("ddlCast");
        DropDownList ddlRashi = (DropDownList)((DetailsView)sender).FindControl("ddlRashi");
        DropDownList ddlStar = (DropDownList)((DetailsView)sender).FindControl("ddlStar");
        TextBox txtCastOther1 = DVReligion.Rows[1].Cells[1].Controls[3] as TextBox;
        TextBox txtCastOther = (TextBox)((DetailsView)sender).FindControl("txtCastOther");
        TextBox txtDosham = (TextBox)((DetailsView)sender).FindControl("txtDosham");
        TextBox txtGothram = (TextBox)((DetailsView)sender).FindControl("txtGothram");
        BAL.Comunity_Id = ddlReligion.SelectedValue;
        BAL.Star = ddlStar.SelectedValue;
        BAL.Rashi = ddlRashi.SelectedValue;
        BAL.Dosham = txtDosham.Text.Trim();
        BAL.Gothram = txtGothram.Text.Trim();
        BAL.Gender = Session["uid_gender"].ToString().Split('_')[1];
        BAL.Id = Session["Bride_groom_Id"].ToString();

        if (ddlCast.SelectedValue == "Others" )
        {
            if (txtCastOther.Text == "")
            {
                WebMsgBox.Show("Please Enter New Cast");
                txtCastOther.Focus();
            }
            else if (DataBindig.CheckCast(txtCastOther.Text.Trim()))
            {
                WebMsgBox.Show("New Cast Is Already Exist Please Select From List");
                txtCastOther.Visible = false;
                txtCastOther.Text = "";
                ddlCast.Focus();
                
            }
            else
            {
                BAL.Cast_Id = txtCastOther.Text.Trim();
                DataBindig.AddNewCast(txtCastOther.Text.Trim().ToLowerInvariant(), ddlReligion.SelectedValue);
                WebMSG(DalProfile.UpdateReligiousDetail(BAL));
                
                DVReligion.ChangeMode(DetailsViewMode.ReadOnly);
                LoadReligion();
            }
        }
        else
        {
            BAL.Cast_Id = ddlCast.SelectedValue;
            WebMSG(DalProfile.UpdateReligiousDetail(BAL));

            DVReligion.ChangeMode(DetailsViewMode.ReadOnly);
            LoadReligion();
        }
    
        
        
       
    }
    protected void DVReligion_DataBound(object sender, EventArgs e)
    {
        if (((DetailsView)sender).CurrentMode == DetailsViewMode.Edit)
        {
           
       




            DataRowView row = (DataRowView)((DetailsView)sender).DataItem;
            DropDownList ddlReligion = (DropDownList)((DetailsView)sender).FindControl("ddlReligion");
            DropDownList ddlCast = (DropDownList)((DetailsView)sender).FindControl("ddlCast");
            DropDownList ddlRashi = (DropDownList)((DetailsView)sender).FindControl("ddlRashi");
            DropDownList ddlStar = (DropDownList)((DetailsView)sender).FindControl("ddlStar");
            TextBox txtCastOther = (TextBox)((DetailsView)sender).FindControl("txtCastOther");
           
//            string javascript = "if (this.options[this.selectedIndex].value =='Others')" +
//"{document.getElementById('" +txtCastOther.ClientID+
//"').style.visibility='visible'} else{document.getElementById('" + txtCastOther.ClientID + "').style.visibility='hidden'};";

            DataBindig.BindReligion(ddlReligion);
            DataBindig.BindStar(ddlStar);
            DataBindig.BindRashi(ddlRashi);
            ddlStar.SelectedValue = row["Star_Id"].ToString();
            ddlRashi.SelectedValue = row["Rashi_Id"].ToString();
            ddlReligion.SelectedValue = row["Religion_Id"].ToString();
            DataBindig.BindCast(ddlCast);
          //  ddlCast.Attributes.Add("onchange", javascript);
            ddlCast.SelectedValue = row["Cast_Id"].ToString();

        }
    }
    protected void ddlReligion_SelectedIndexChanged(object sender, EventArgs e)
    {
        DataRowView row = (DataRowView)DVReligion.DataItem;
        DropDownList ddlReligion = (DropDownList)DVReligion.FindControl("ddlReligion");
        DropDownList ddlCast = (DropDownList)DVReligion.FindControl("ddlCast");
        DataBindig.BindCast(ddlCast, ddlReligion.SelectedValue);
    }
    protected void ddlCast_SelectedIndexChanged(object sender, EventArgs e)
    {
        ((TextBox)DVReligion.FindControl("txtCastOther")).Text = "";
        if (((DropDownList)DVReligion.FindControl("ddlCast")).SelectedValue == "Others")
        {

            ((TextBox)DVReligion.FindControl("txtCastOther")).Visible = true;
        }
        else
        {
            ((TextBox)DVReligion.FindControl("txtCastOther")).Visible = false;
        }
    }
    protected void DVEducation_ModeChanging(object sender, DetailsViewModeEventArgs e)
    {

        DVEducation.ChangeMode(e.NewMode);
        LoadEducation();
    }
    protected void DVEducation_DataBinding(object sender, EventArgs e)
    {
       
    }
    protected void DVEducation_DataBound(object sender, EventArgs e)
    {
        if (((DetailsView)sender).CurrentMode == DetailsViewMode.Edit)
        {
            DataRowView row = (DataRowView)((DetailsView)sender).DataItem;




            DropDownList ddlProfession = (DropDownList)((DetailsView)sender).FindControl("ddlProfession");
            DropDownList ddlIncome = (DropDownList)((DetailsView)sender).FindControl("ddlIncome");
            DropDownList ddlEducation = (DropDownList)((DetailsView)sender).FindControl("ddlEducation");
            DataBindig.BindEducation(ddlEducation);
            ddlEducation.SelectedValue = row["Educational_Qualification"].ToString();
            DataBindig.BindProfession(ddlProfession);
            ddlProfession.SelectedValue = row["Profession_Id"].ToString();
            ddlIncome.SelectedValue = row["Anual_Incom"].ToString();


        }
    }
    protected void DVEducation_ItemUpdating(object sender, DetailsViewUpdateEventArgs e)
    {
        DataRowView row = (DataRowView)((DetailsView)sender).DataItem;
        DropDownList ddlProfession = (DropDownList)((DetailsView)sender).FindControl("ddlProfession");
        DropDownList ddlIncome = (DropDownList)((DetailsView)sender).FindControl("ddlIncome");
        DropDownList ddlEducation = (DropDownList)((DetailsView)sender).FindControl("ddlEducation");
        TextBox txtoccupation = (TextBox)((DetailsView)sender).FindControl("txtoccupation");
        BAL.Profession_Id = ddlProfession.SelectedValue;
        BAL.Anual_Incom = ddlIncome.SelectedValue;
        BAL.Education = ddlEducation.SelectedValue;
        BAL.Occupation = txtoccupation.Text.Trim();
        BAL.Gender = Session["uid_gender"].ToString().Split('_')[1];
        BAL.Id = Session["Bride_groom_Id"].ToString();
        
        WebMSG(DalProfile.UpdateEducationlDetail(BAL));
        DVEducation.ChangeMode(DetailsViewMode.ReadOnly);
        LoadEducation();
    }
}