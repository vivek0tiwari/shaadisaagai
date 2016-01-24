using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using System.Data;

/// <summary>
/// Summary description for DALuser
/// </summary>
public class DALuser:DbManager
{
	public DALuser()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    public int  InsertUser_Step1(User user,out string member_Id)
    {
        try
        {
            using (SqlCommand com = new SqlCommand("New_Member", DbManager.Con))
            {
                SqlParameter parm2 = new SqlParameter("@member_id", SqlDbType.VarChar);
                parm2.Size = 10;
                parm2.Direction = ParameterDirection.Output;
                com.Parameters.Add(parm2); 

                
                com.Parameters.AddWithValue("@member_name", user.Member_name);
                
                com.Parameters.AddWithValue("@Mobile", user.Mobile);
                com.Parameters.AddWithValue("@Email", user.Email);
                com.Parameters.AddWithValue("@gender", user.Gender);
                com.Parameters.AddWithValue("@Dob", user.Dob);
                com.Parameters.AddWithValue("@Password", user.Password);
                com.Parameters.AddWithValue("@Profile_Submitted_By", user.Submitted_By);
                com.Parameters.AddWithValue("@IsVerified", user.IsVerified);
                
                
                com.CommandType = System.Data.CommandType.StoredProcedure;
                DbManager.Open();
                int i= com.ExecuteNonQuery();
                member_Id = parm2.Value.ToString();
                DbManager.Close();
                return i;
               
            }
        }
        catch { throw; }
        finally
        {
            DbManager.Close();
            
        }
        
       
    }

    public bool CheckUser(User user)
    {

        try
        {
            DALuser.Open();
            SqlDataReader dr = DbManager.GetDataReader("select * from tblMember where Email='" + user.Email + "' and Password='" + user.Password + "'");
            bool IsValidate = false;
            IsValidate = dr.HasRows;
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    user.Gender = dr["Gender"].ToString();
                    user.IsVerified = dr["IsVerified"].ToString().ToCharArray()[0];
                    user.User_Id = dr["Member_Id"].ToString();
                }
            }
            dr.Close();
            DALuser.Close();
            return IsValidate;
        }
        catch (Exception ex)
        {
            throw;
        }
    }

    public bool checkEmail(User user)
    {
        try
        {
            DALuser.Open();
            SqlDataReader dr = DbManager.GetDataReader("select * from tblMember where Email='" + user.Email + "'");
            bool IsValidate = false;
            IsValidate = dr.HasRows;
           
            dr.Close();
            DALuser.Close();
            return IsValidate;
        }
        catch (Exception ex)
        {
            throw;
        }
    }
    public string GetPassword(User user)
    {
        try
        {
            DALuser.Open();
            SqlDataReader dr = DbManager.GetDataReader("select Password from tblMember where Email='" + user.Email + "'");
            string IsValidate = "";
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    IsValidate = dr["Password"].ToString();
                }
            }
            dr.Close();
            DALuser.Close();
            return IsValidate;
        }
        catch (Exception ex)
        {
            throw;
        }
    }

    public bool checkMobile(User user)
    {
        try
        {
            DALuser.Open();
            SqlDataReader dr = DbManager.GetDataReader("select * from tblMember where Mobile=" + user.Mobile  );
            bool IsValidate = false;
            IsValidate = dr.HasRows;

            dr.Close();
            DALuser.Close();
            return IsValidate;
        }
        catch (Exception ex)
        {
            throw;
        }
    }
    
    public int InsertUser_Step2(UserDetails user)
    {
        try
        {
            SqlCommand com = new SqlCommand();
            com.Connection = DbManager.Con;
            com.CommandType = CommandType.StoredProcedure;
            if (user.Gender == "Male")
            {
                com.CommandText = "New_Groom";

            }
            else
            {
                com.CommandText = "New_Bride";
            }


                com.Parameters.AddWithValue("@Member_Id",user.User_Id );
                com.Parameters.AddWithValue("@Mother_Tongue", user.Mother_tounge);
                com.Parameters.AddWithValue("@Profession_Id", user.Profession_Id);
                com.Parameters.AddWithValue("@Complexion_Id", user.Complexion_Id);
                com.Parameters.AddWithValue("@Body_Type_Code", user.Body_Type_Code);
                com.Parameters.AddWithValue("@Cast_Id", user.Cast_Id);
                com.Parameters.AddWithValue("@Comunity_Id", user.Comunity_Id);
                com.Parameters.AddWithValue("@Food", user.Food);
                com.Parameters.AddWithValue("@Drink", user.Drink);
                com.Parameters.AddWithValue("@Smoke", user.Smoke);
                com.Parameters.AddWithValue("@Anual_Incom", user.Anual_Incom);
                com.Parameters.AddWithValue("@Height", user.Height);
                com.Parameters.AddWithValue("@About_Me", user.About_Me);
                com.Parameters.AddWithValue("@About_My_Patner", user.About_My_Patner);
                com.Parameters.AddWithValue("@Blode_Group", user.Blode_Group);
                com.Parameters.AddWithValue("@Family_Status", user.Family_Status);
                com.Parameters.AddWithValue("@Parents_Contects", user.Parents_Contects);
                com.Parameters.AddWithValue("@Dosham", user.Dosham);
                com.Parameters.AddWithValue("@Gothram", user.Gothram);
                com.Parameters.AddWithValue("@City_Id", user.City);
                com.Parameters.AddWithValue("@Weight", user.Weight);
                com.Parameters.AddWithValue("@Physical_Status", user.Physical_Status);

                com.Parameters.AddWithValue("@Country", user.Country);
                com.Parameters.AddWithValue("@State", user.State);
                com.Parameters.AddWithValue("@Zip_Code", user.Pin_Code);

                com.Parameters.AddWithValue("@Educational_Qualification", user.Education);
                com.Parameters.AddWithValue("@Occupation", user.Occupation);
                com.Parameters.AddWithValue("@Religion", user.Comunity_Id);

                com.Parameters.AddWithValue("@Rasi", user.Rashi);
                com.Parameters.AddWithValue("@Star", user.Star);
                

            

                com.CommandType = System.Data.CommandType.StoredProcedure;
                DbManager.Open();
                return com.ExecuteNonQuery();

        }
        catch { throw; }
        finally
        {
            DbManager.Close();

        }
        

    }

    public User GetDetail(User user)
    {
        try
        {
            DALuser.Open();
            SqlDataReader dr = DbManager.GetDataReader("select * from tblMember where Email='" + user.Email + "'");
            
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    user.Password = dr["Password"].ToString();
                    user.User_Name = dr["Member_Name"].ToString();
                    user.Mobile =Convert.ToInt64( dr["Mobile"].ToString());
                    user.Dob = Convert.ToDateTime( dr["Dob"].ToString());
                    user.User_Id = dr["Member_Id"].ToString();
                    
                }
            }
            dr.Close();
            DALuser.Close();
            return user;
        }
        catch (Exception ex)
        {
            throw;
        }
    }
    //public int InsertUser_Step2(User user)
    //{

    //}

}




