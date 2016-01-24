using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

/// <summary>
/// Summary description for DALProfile
/// </summary>
public class DALProfile
{
	public DALProfile()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    public bool UpdatePersionalDetail(UserDetails user)
    {
        try
        {
            SqlCommand com = new SqlCommand();
            com.Connection = DbManager.Con;
            com.CommandType = CommandType.StoredProcedure;
            com.CommandText = "SP_Update_Persional_Details";



            com.Parameters.AddWithValue("@Bride_Id", user.Id);
            com.Parameters.AddWithValue("@Groom_Id", user.Id);
            com.Parameters.AddWithValue("@Height", Convert.ToInt32( user.Height));
            com.Parameters.AddWithValue("@About_Me", user.About_Me);
            com.Parameters.AddWithValue("@About_My_Patner", user.About_My_Patner);
            com.Parameters.AddWithValue("@Physical_Status", user.Physical_Status);
            com.Parameters.AddWithValue("@Weight", user.Weight);
            com.Parameters.AddWithValue("@Gender", user.Gender);

            
            DbManager.Open();
            com.ExecuteNonQuery();
            return Convert.ToBoolean(com.ExecuteNonQuery());

        }
        catch { throw; }
        finally
        {
            DbManager.Close();

        }

    }

    public bool UpdateEducationlDetail(UserDetails user)
    {
        try
        {
            SqlCommand com = new SqlCommand();
            com.Connection = DbManager.Con;
            com.CommandType = CommandType.StoredProcedure;
            com.CommandText = "SP_Update_Education_And_Profession";



            com.Parameters.AddWithValue("@Bride_Id", user.Id);
            com.Parameters.AddWithValue("@Groom_Id", user.Id);


            com.Parameters.AddWithValue("@Occupation", user.Occupation);
            com.Parameters.AddWithValue("@Profession_Id", user.Profession_Id);
            com.Parameters.AddWithValue("@Anual_Incom", user.Anual_Incom);
            com.Parameters.AddWithValue("@Educational_Qualification", user.Education);

            com.Parameters.AddWithValue("@Gender", user.Gender);

            com.CommandType = System.Data.CommandType.StoredProcedure;
            DbManager.Open();
            return Convert.ToBoolean(com.ExecuteNonQuery());

        }
        catch { throw; }
        finally
        {
            DbManager.Close();

        }

    }

    public bool UpdateHabbitDetail(UserDetails user)
    {
        try
        {
            SqlCommand com = new SqlCommand();
            com.Connection = DbManager.Con;
            com.CommandType = CommandType.StoredProcedure;
            com.CommandText = "SP_Update_Habbit";



            com.Parameters.AddWithValue("@Bride_Id", user.Id);
            com.Parameters.AddWithValue("@Groom_Id", user.Id);

            com.Parameters.AddWithValue("@Food", user.Food);
            com.Parameters.AddWithValue("@Drink", user.Drink);
            com.Parameters.AddWithValue("@Smoke", user.Smoke);

            com.Parameters.AddWithValue("@Gender", user.Gender);

            com.CommandType = System.Data.CommandType.StoredProcedure;
            DbManager.Open();
            return Convert.ToBoolean(com.ExecuteNonQuery());

        }
        catch { throw; }
        finally
        {
            DbManager.Close();

        }

    }

    public bool UpdateLocationDetail(UserDetails user)
    {
        try
        {
            SqlCommand com = new SqlCommand();
            com.Connection = DbManager.Con;
            com.CommandType = CommandType.StoredProcedure;
            com.CommandText = "SP_Update_Location_Information";



            com.Parameters.AddWithValue("@Bride_Id", user.Id);
            com.Parameters.AddWithValue("@Groom_Id", user.Id);

            com.Parameters.AddWithValue("@Country", user.Country);
            com.Parameters.AddWithValue("@City_Id", user.City_Id);
            com.Parameters.AddWithValue("@State", user.State);

            com.Parameters.AddWithValue("@Zip_Code", user.Pin_Code);

            com.Parameters.AddWithValue("@Gender", user.Gender);

            com.CommandType = System.Data.CommandType.StoredProcedure;
            DbManager.Open();
            return Convert.ToBoolean(com.ExecuteNonQuery());

        }
        catch { throw; }
        finally
        {
            DbManager.Close();

        }

    }


    public bool UpdatePhysicalDetail(UserDetails user)
    {
        try
        {
            SqlCommand com = new SqlCommand();
            com.Connection = DbManager.Con;
            com.CommandType = CommandType.StoredProcedure;
            com.CommandText = "SP_Update_Physical_Info_And_Other";



            com.Parameters.AddWithValue("@Bride_Id", user.Id);
            com.Parameters.AddWithValue("@Groom_Id", user.Id);

            com.Parameters.AddWithValue("@Complexion_Id", user.Complexion_Id);
            com.Parameters.AddWithValue("@Body_Type_Code", user.Body_Type_Code);
            com.Parameters.AddWithValue("@Parents_Contects", user.Parents_Contects);
            com.Parameters.AddWithValue("@Blode_Group", user.Blode_Group);
            com.Parameters.AddWithValue("@Family_Status", user.Family_Status);


            com.Parameters.AddWithValue("@Gender", user.Gender);

            com.CommandType = System.Data.CommandType.StoredProcedure;
            DbManager.Open();
            return Convert.ToBoolean(com.ExecuteNonQuery());

        }
        catch { throw; }
        finally
        {
            DbManager.Close();

        }

    }

    public bool UpdateReligiousDetail(UserDetails user)
    {
        try
        {
            SqlCommand com = new SqlCommand();
            com.Connection = DbManager.Con;
            com.CommandType = CommandType.StoredProcedure;
            com.CommandText = "SP_Update_Religious_Information";



            com.Parameters.AddWithValue("@Bride_Id", user.Id);
            com.Parameters.AddWithValue("@Groom_Id", user.Id);

            com.Parameters.AddWithValue("@Dosham", user.Dosham);
            com.Parameters.AddWithValue("@Gothram", user.Gothram);
            com.Parameters.AddWithValue("@Cast_Id", user.Cast_Id);
            com.Parameters.AddWithValue("@Comunity_Id", user.Comunity_Id);


            com.Parameters.AddWithValue("@Gender", user.Gender);

            com.CommandType = System.Data.CommandType.StoredProcedure;
            DbManager.Open();
            return Convert.ToBoolean(com.ExecuteNonQuery());

        }
        catch { throw; }
        finally
        {
            DbManager.Close();

        }

    }

  

}