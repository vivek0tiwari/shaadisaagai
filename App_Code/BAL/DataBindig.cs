using System;
using System.Collections.Generic;

using System.Web;
using System.Data;
using System.Web.UI.WebControls;

/// <summary>
/// Summary description for DataBindig
/// </summary>
public class DataBindig
{
	public DataBindig()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public static DropDownList BintPlan(DropDownList plane)
    {

        try
        {

            DataSet ds = DbManager.GetDataSet("Select * From tblPlan  ");


            plane.DataSource = ds;
            plane.DataTextField = "PlanId";
            plane.DataValueField = "PlanId";
            plane.CssClass = "Select";
            plane.Width = 150;
            plane.DataBind();
            plane.Items.Insert(0, "Select");
          
            return plane;
        }
        catch (Exception ex)
        {
            return null;
        }
    }
    public static DropDownList BindCast(DropDownList ddlCast)
    {
        
        try
        {

            DataSet ds = DbManager.GetDataSet("Select * From tblCast  Cast_Name");
        
            ddlCast.ID = "ddlCast";
            ddlCast.DataSource = ds;
            ddlCast.DataTextField = "Cast_Name";
            ddlCast.DataValueField = "Cast_Id";
            ddlCast.CssClass = "Select";
            ddlCast.Width=150;
            ddlCast.DataBind();
            ddlCast.Items.Insert(0, "Select");
            ddlCast.Items.Insert(ddlCast.Items.Count, "Others");
            return ddlCast;
        }
        catch (Exception ex)
        {
            return null;
        }
    }
    public static DropDownList BindCast(DropDownList ddlCast,string ReligionNmae)
    {

        try
        {

            DataSet ds = DbManager.GetDataSet("Select * From tblCast  Cast_Name where Religion_Id='" + ReligionNmae+"'");

            ddlCast.ID = "ddlCast";
            ddlCast.DataSource = ds;
            ddlCast.DataTextField = "Cast_Name";
            ddlCast.DataValueField = "Cast_Id";
            ddlCast.CssClass = "Select";
            ddlCast.Width = 150;
            ddlCast.DataBind();
            ddlCast.Items.Insert(0, "Select");
            ddlCast.Items.Insert(ddlCast.Items.Count, "Others");
            return ddlCast;
        }
        catch (Exception ex)
        {
            return null;
        }
    }

    public static DataSet BindReligion(DropDownList ddlReligion)
    {
        
        try
        {
            DataSet ds = DbManager.GetDataSet("Select * From tblReligion ");
            ddlReligion.DataSource = ds;
            ddlReligion.CssClass = "Select";
            ddlReligion.DataTextField = "Religion";
            ddlReligion.DataValueField = "Religion_Id";
            ddlReligion.DataBind();
            ddlReligion.Items.Insert(0, "Select");
            return ds;
        }
        catch (Exception ex)
        {
            throw;
        }
    }
    public static DataSet BindEducation(DropDownList ddlEducation)
    {

        try
        {
            DataSet ds = DbManager.GetDataSet("Select * From tblEducation ");
            ddlEducation.DataSource = ds;
            ddlEducation.DataTextField = "Education";
            ddlEducation.DataValueField = "Education_Id";
            ddlEducation.DataBind();
            ddlEducation.Items.Insert(0, "Select");
            ddlEducation.Items.Insert(ddlEducation.Items.Count, "Others");
            return ds;
        }
        catch (Exception ex)
        {
            throw;
        }
    }

    public static void BindFoodDrinkSmoke(RadioButtonList ddlFood, RadioButtonList ddlDrink, RadioButtonList ddlSmoke)
    {

        try
        {
            

            DataSet ds1 = DbManager.GetDataSet("Select * From tblDrink");
            ddlDrink.DataSource = ds1;
            ddlDrink.DataTextField = "Drink";
            ddlDrink.DataValueField = "Drink_Id";
            ddlDrink.DataBind();

            DataSet ds2 = DbManager.GetDataSet("Select * From tblDrink");
            ddlSmoke.DataSource = ds2;
            ddlSmoke.DataTextField = "Drink";
            ddlSmoke.DataValueField = "Drink_Id";
            ddlSmoke.DataBind();

            DataSet ds3 = DbManager.GetDataSet("Select * From tblDiet");
            ddlFood.DataSource = ds3;
            ddlFood.DataTextField = "Diet";
            ddlFood.DataValueField = "Diet_Id";
            ddlFood.DataBind();
            

            
        }
        catch (Exception ex)
        {
            throw;
        }
    }

    public static DataSet BindRashi(DropDownList ddlRashi)
    {

        try
        {
            DataSet ds = DbManager.GetDataSet("Select * From tblRashi ");
            ddlRashi.DataSource = ds;
            ddlRashi.DataTextField = "Rashi_Name";
            ddlRashi.DataValueField = "Rashi_Id";
            ddlRashi.DataBind();
            ddlRashi.Items.Insert(0,"Select");
            return ds;
        }
        catch (Exception ex)
        {
            throw;
        }
    }
    public static DataSet BindStar(DropDownList ddlStar)
    {

        try
        {
            DataSet ds = DbManager.GetDataSet("Select * From tblStar ");
            ddlStar.DataSource = ds;
            ddlStar.DataTextField = "Star_Name";
            ddlStar.DataValueField = "Star_Id";
            ddlStar.DataBind();
            ddlStar.Items.Insert(0, "Select");
            return ds;
        }
        catch (Exception ex)
        {
            throw;
        }
    }
    public static DataSet BindHeight(DropDownList ddlHeight)
    {

        try
        {
            DataSet ds = DbManager.GetDataSet("Select * From tblHeight ");
            ddlHeight.DataSource = ds;
            ddlHeight.DataTextField = "Ft_Cm";
            ddlHeight.DataValueField = "Height";
            ddlHeight.DataBind();
            ddlHeight.Items.Insert(0, "Select");
            return ds;
        }
        catch (Exception ex)
        {
            throw;
        }
    }
    public static DataSet BindBody_Complextion(RadioButtonList ddlBodyType, RadioButtonList ddlComplexton)
    {

        try
        {
            DataSet ds2 = DbManager.GetDataSet("Select * From tblBodyType");
            ddlBodyType.DataSource = ds2;
            ddlBodyType.DataTextField = "Body_Type";
            ddlBodyType.DataValueField = "Body_Type_Code";
            ddlBodyType.DataBind();

            DataSet ds3 = DbManager.GetDataSet("Select * From tblBodyComplexion");
            ddlComplexton.DataSource = ds3;
            ddlComplexton.DataTextField = "Complexion";
            ddlComplexton.DataValueField = "Complexion_Id";
            ddlComplexton.DataBind();

            return ds2;
        }
        catch (Exception ex)
        {
            throw;
        }
    }

    public static DataSet BindTougne(DropDownList ddlMotherTougne)
    {
        try
        {
            DataSet ds = DbManager.GetDataSet("Select * From tblMother_Tongue");
            ddlMotherTougne.DataSource = ds;
            ddlMotherTougne.DataTextField = "Mother_Tongue";
            ddlMotherTougne.DataValueField = "Mother_Tongue";
            ddlMotherTougne.DataBind();
            ddlMotherTougne.Items.Insert(0, "Select");
            return ds;
        }
        catch (Exception ex)
        {
            throw;
        }

    }

    public static DataSet BindCity(DropDownList ddlCity,string State )
    {
        try
        {
            DataSet ds = DbManager.GetDataSet("select * from tblCity    where state='" + State + "'");
            ddlCity.DataSource = ds;
            ddlCity.DataTextField = "city_name";
            ddlCity.DataValueField = "city_id";
            ddlCity.DataBind();
            ddlCity.Items.Insert(0, "Select");
            return ds;
        }
        catch (Exception ex)
        {
            throw;
        }

    }
    public static DataSet BindState(DropDownList ddlState)
    {
        try
        {
            DataSet ds = DbManager.GetDataSet("select state  from tblCity group by state order by state");
            ddlState.DataSource = ds;
            ddlState.DataTextField = "state";
            ddlState.DataValueField = "state";
            ddlState.DataBind();
            ddlState.Items.Insert(0, "Select");
            return ds;
        }
        catch (Exception ex)
        {
            throw;
        }

    }
    public static DataSet BindProfession(DropDownList ddlProfession)
    {
        try
        {
            DataSet ds = DbManager.GetDataSet("Select * From tblProfession_Child");
            ddlProfession.DataSource = ds;
            ddlProfession.DataTextField = "Profession";
            ddlProfession.DataValueField = "Profession_Id";
            ddlProfession.DataBind();
            ddlProfession.Items.Insert(0, "Select");
            
            return ds;
        }
        catch (Exception ex)
        {
            throw;
        }

    }







    
}