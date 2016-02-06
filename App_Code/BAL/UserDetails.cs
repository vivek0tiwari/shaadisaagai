using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Summary description for UserDetails
/// </summary>
public class UserDetails:User
{
    string _rashi;
    string mother_tounge;

    string _CastBar;

    public string CastBar
    {
        get { return _CastBar; }
        set { _CastBar = value; }
    }
    string _MaritialStatus;

    public string MaritialStatus
    {
        get { return _MaritialStatus; }
        set { _MaritialStatus = value; }
    }

    public string Mother_tounge
    {
        get { return mother_tounge; }
        set { mother_tounge = value; }
    }
    public string Rashi
    {
        get { return _rashi; }
        set { _rashi = value; }
    }
    string _star;

    public string Star
    {
        get { return _star; }
        set { _star = value; }
    }
    string _Id;

    public string Id
    {
        get { return _Id; }
        set { _Id = value; }
    }

    string _Profession_Id;

    public string Profession_Id
    {
        get { return _Profession_Id; }
        set { _Profession_Id = value; }
    }

    string _Complexion_Id;

    public string Complexion_Id
    {
        get { return _Complexion_Id; }
        set { _Complexion_Id = value; }
    }

    string _Body_Type_Code;

    public string Body_Type_Code
    {
        get { return _Body_Type_Code; }
        set { _Body_Type_Code = value; }
    }

    string _Cast_Id;

    public string Cast_Id
    {
        get { return _Cast_Id; }
        set { _Cast_Id = value; }
    }

    string _Comunity_Id;

    public string Comunity_Id
    {
        get { return _Comunity_Id; }
        set { _Comunity_Id = value; }
    }

    string _Food;

    public string Food
    {
        get { return _Food; }
        set { _Food = value; }
    }

    string _Drink;

    public string Drink
    {
        get { return _Drink; }
        set { _Drink = value; }
    }

    string _Smoke;

    public string Smoke
    {
        get { return _Smoke; }
        set { _Smoke = value; }
    }

    string _Anual_Incom;

    public string Anual_Incom
    {
        get { return _Anual_Incom; }
        set { _Anual_Incom = value; }
    }

    string _Height;

    public string Height
    {
        get { return _Height; }
        set { _Height = value; }
    }

    string _physical_Status;

    public string Physical_Status
    {
        get { return _physical_Status; }
        set { _physical_Status = value; }
    }

    int _weight;

    public int Weight
    {
        get { return _weight; }
        set { _weight = value; }
    }



    string _About_Me;

    public string About_Me
    {
        get { return _About_Me; }
        set { _About_Me = value; }
    }

    string _About_My_Patner;

    public string About_My_Patner
    {
        get { return _About_My_Patner; }
        set { _About_My_Patner = value; }
    }

    string _Blood_Group;

    public string Blood_Group
    {
        get { return _Blood_Group; }
        set { _Blood_Group = value; }
    }

    string _Family_Status;

    public string Family_Status
    {
        get { return _Family_Status; }
        set { _Family_Status = value; }
    }

    string _Parents_Contects;

    public string Parents_Contects
    {
        get { return _Parents_Contects; }
        set { _Parents_Contects = value; }
    }

    string _Dosham;

    public string Dosham
    {
        get { return _Dosham; }
        set { _Dosham = value; }
    }

    string _Gothram;

    public string Gothram
    {
        get { return _Gothram; }
        set { _Gothram = value; }
    }

    string _education;

    public string Education
    {
        get { return _education; }
        set { _education = value; }
    }
    string _occupation;

    public string Occupation
    {
        get { return _occupation; }
        set { _occupation = value; }
    }

    string _country;

    public string Country
    {
        get { return _country; }
        set { _country = value; }
    }
    int _city;

    public int City
    {
        get { return _city; }
        set { _city = value; }
    }

    string _State;

    public string State
    {
        get { return _State; }
        set { _State = value; }
    }
    int _pin_Code;

    public int Pin_Code
    {
        get { return _pin_Code; }
        set { _pin_Code = value; }
    }

    DALProfile DALProfile = new DALProfile();

	public UserDetails()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    public int RegisterUser_Step2()
    {

        try
        {
            DALuser DAL = new DALuser();


            {
                return DAL.InsertUser_Step2(this);
            }
        }
        catch
        {
            throw;
        }
    }
    public DataSet SelectPersionalDetail()
    {
        try
        {
            Dictionary<string, string> Param = new Dictionary<string, string>();
            Param.Add("@Gender", this.Gender);
            Param.Add("@ID", this.User_Id);

            DataSet ds = DbManager.GetDataSetSP("SP_Select_Persional_Details", Param);


            return ds;
        }
        catch (Exception ex)
        {
            throw;
        }
    }
    public DataSet SelectReligiousDetail()
    {
        try
        {
            Dictionary<string, string> Param = new Dictionary<string, string>();
            Param.Add("@Gender", this.Gender);
            Param.Add("@ID", this.User_Id);

            DataSet ds = DbManager.GetDataSetSP("SP_Select_Religious_Information", Param);


            return ds;
        }
        catch (Exception ex)
        {
            throw;
        }
    }
    public DataSet SelectPhysicalDetail()
    {
        try
        {
            Dictionary<string, string> Param = new Dictionary<string, string>();
            Param.Add("@Gender", this.Gender);
            Param.Add("@ID", this.User_Id);

            DataSet ds = DbManager.GetDataSetSP("SP_Select_Physical_Info_And_Other", Param);


            return ds;
        }
        catch (Exception ex)
        {
            throw;
        }
    }
    public DataSet SelectEducationDetails()
    {
        try
        {
            Dictionary<string, string> Param = new Dictionary<string, string>();
            Param.Add("@Gender", this.Gender);
            Param.Add("@ID", this.User_Id);

            DataSet ds = DbManager.GetDataSetSP("SP_Select_Education_And_Profession", Param);


            return ds;
        }
        catch (Exception ex)
        {
            throw;
        }
    }
    public DataSet SelectOtherDetails()
    {
        try
        {
            Dictionary<string, string> Param = new Dictionary<string, string>();
            Param.Add("@Gender", this.Gender);
            Param.Add("@ID", this.User_Id);

            DataSet ds = DbManager.GetDataSetSP("SP_Select_Other_Details", Param);


            return ds;
        }
        catch (Exception ex)
        {
            throw;
        }
    }
  
    public DataSet SelectHabbit()
    {
        try
        {
            Dictionary<string, string> Param = new Dictionary<string, string>();
            Param.Add("@Gender", this.Gender);
            Param.Add("@ID", this.User_Id);

            DataSet ds = DbManager.GetDataSetSP("SP_Select_Habbit", Param);


            return ds;
        }
        catch (Exception ex)
        {
            throw;
        }
    }
    public DataSet SelectLocation()
    {
        try
        {
            Dictionary<string, string> Param = new Dictionary<string, string>();
            Param.Add("@Gender", this.Gender);
            Param.Add("@ID", this.User_Id);

            DataSet ds = DbManager.GetDataSetSP("SP_Select_Location_Information", Param);


            return ds;
        }
        catch (Exception ex)
        {
            throw;
        }
    }

    public string GetName()
    {
        try
        {

            string name;
            SqlDataReader datareader =  DbManager.GetDataReader("select Member_Name from tblMember where Member_Id='" + this.User_Id+"'");
            datareader.Read();
            name= datareader["Member_Name"].ToString();
           datareader.Close ();
            return name;
            
            
        }
        catch (Exception ex)
        {
            throw;
        }
    }
    public string GetEmail()
    {
        try
        {

            string name;
            SqlDataReader datareader = DbManager.GetDataReader("select Email from tblMember where Member_Id='" + this.User_Id + "'");
            datareader.Read();
            name = datareader["Email"].ToString();
            datareader.Close();
            return name;


        }
        catch (Exception ex)
        {
            throw;
        }
    }


  


}