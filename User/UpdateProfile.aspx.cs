using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class User_UpdateProfile : System.Web.UI.Page
{
    UserDetails BAL = new UserDetails();
    DALProfile DalProfile = new DALProfile();
    DataSet ds = new DataSet();

    private void LoadDet()
    {

        LoadPersionalDetail();
        LoadPhysicallDetail();
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

        WebMsgBox.Show(DalProfile.UpdatePersionalDetail(BAL).ToString());
        LoadPersionalDetail();
        DVPersionalDetail.ChangeMode(DetailsViewMode.ReadOnly);
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

        WebMsgBox.Show(DalProfile.UpdatePhysicalDetail(BAL).ToString());
        LoadPhysicallDetail();
        DVPhysicalDetail.ChangeMode(DetailsViewMode.ReadOnly);
      
    }
}