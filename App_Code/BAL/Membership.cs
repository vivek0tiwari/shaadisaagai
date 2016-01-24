using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

/// <summary>
/// Summary description for Membership
/// </summary>
/// duration is in days e.g. 30 days,60 days,90 days
public class Membership:User
{
    string _PlaneName;
    string _PlaneID;

    public string PlaneID
    {
        get { return _PlaneID; }
        set { _PlaneID = value; }
    }

    public string PlaneName
    {
        get { return _PlaneName; }
        set { _PlaneName = value; }
    }
    DateTime _StartDate;

    public DateTime StartDate
    {
        get { return _StartDate; }
        set { _StartDate = value; }
    }
    DateTime _EndDate;

    public DateTime EndDate
    {
        get { return _EndDate; }
        set { _EndDate = value; }
    }
    long _Price;

    public long Price
    {
        get { return _Price; }
        set { _Price = value; }
    }
    int _Duration;

    public int Duration
    {
        get { return _Duration; }
        set { _Duration = value; }
    }

    private SqlParameter[] param;
	public Membership()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public int GetPlaneDuration()
    {
        try
        {
            int returnVal=0;
            DALuser.Open();
            SqlDataReader dr = DbManager.GetDataReader("select * from tblMembership_Plane where PlanId='" + PlaneID + "' and ActivationStatus='A'");

            bool IsValidate = false;
            IsValidate = dr.HasRows;
            while (dr.Read())
            {
                returnVal = Convert.ToInt32(dr["PlanDuration"].ToString());
            }
            dr.Close();
            DALuser.Close();
            return returnVal;
            
        }
        catch
        {
            throw;
        }


    }
   
    public string EditMembershipPlane()
    {
        try
        {
            return null;

        }
        catch (Exception ex)
        {
            throw;
        }
        finally
        {
            DbManager.Close();
        }
    }

    public string UpdateUserMembeship()
    {
        try
        {
        }
        catch
        {
            throw;
        }
        return null;
    }

    public int AddUserMembership()
    {
        try
        {
            SqlDataReader dr;
            DbManager.Open();
            param = new SqlParameter[6];
            param[0] = new SqlParameter("@Member_ID", User_Id);
            param[1] = new SqlParameter("@Plan_Id", PlaneID);
            param[2] = new SqlParameter("@Start_date", StartDate);
            param[3] = new SqlParameter("@End_date", EndDate);
            param[3] = new SqlParameter("@ActivationStatus", "A");

            if (!CheckMembershipExists())
            {
                DbManager.RunProcedure("SP_Insert_MemberPlane", param, out dr);
                return Convert.ToInt16(dr.HasRows);
            }
            else
            {
                return 0;
            }
            
        }
        catch
        {
            throw;
        }
        finally
        {
            DbManager.Close();
        }
    }

    public bool CheckMembershipExists()
    {
       
            try
            {
                DALuser.Open();
                SqlDataReader dr = DbManager.GetDataReader("select * from tblUser_Plan where Member_ID='" + User_Id + "' and ActivationStatus='A'");

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

    public Membership GetMembershipDetail()
    {
        try
        {
            DALuser.Open();
            SqlDataReader dr = DbManager.GetDataReader("select * from tblUser_Plan where Member_ID='" + User_Id + "' and ActivationStatus='A'");

            bool IsValidate = false;
            Membership ObjReturn=null;

            IsValidate = dr.HasRows;
            if (IsValidate)
            {
                ObjReturn = new Membership();
                ObjReturn.StartDate = Convert.ToDateTime( dr["Start_date"].ToString());
                ObjReturn.EndDate = Convert.ToDateTime(dr["End_date"].ToString());
               
                ObjReturn.PlaneID = dr["Plan_Id"].ToString();
            }
            dr.Close();
            DALuser.Close();
            return ObjReturn;
        }
        catch (Exception ex)
        {
            throw;
        }
        
    }

    public int AddUserMembershipReqest(string BankAdd,int amount,string chequeNo)
    {
        try
        {
            SqlDataReader dr;
            DbManager.Open();
            param = new SqlParameter[6];
            param[0] = new SqlParameter("@Member_ID", User_Id);
            param[1] = new SqlParameter("@PlanId", PlaneID);
            param[2] = new SqlParameter("@Email", Email);
            param[3] = new SqlParameter("@Mobile", Mobile);
            param[3] = new SqlParameter("@Bank_Name", BankAdd);
            param[3] = new SqlParameter("@Tran_Cheque_No", chequeNo);
            param[3] = new SqlParameter("@Amount", amount);
          
 

            if (!CheckMembershipExists())
            {
                DbManager.RunProcedure("SP_Insert_MemberPlaneReq", param, out dr);
                return Convert.ToInt16(dr.HasRows);
            }
            else
            {
                return 0;
            }

        }
        catch
        {
            throw;
        }
        finally
        {
            DbManager.Close();
        }
    }

}