using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Text;

/// <summary>
/// Summary description for Search
/// </summary>
public class Search
{
	public Search()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    public DataTable GuestUserSearch(string LookingFor,string Religion,string Cast,int MinAge,int MaxAge,string MemberID,string MT,string Contry)
    {
        try
        {
            StringBuilder Sql = new StringBuilder();
            if (Religion == "Select")
            {

            }
            else
            {
                Sql.Append(" and tblReligion.Religion_Id='" + Religion + "'");
            }

            if (Cast == "Select")
            {

            }
            else
            {
                Sql.Append(" and tblCast.Cast_Id='" + Cast + "'");
            }
            if (MT == "Select" )
            {
                
            }
            else
            {
                if (LookingFor == "Bried")
                {
                    Sql.Append(" and tblBride.Mother_Tongue='" + MT + "'");
                }
                else
                {
                    Sql.Append(" and tblGroom.Mother_Tongue='" + MT + "'");
                }
            }
           
            Sql.Append(" and DATEDIFF(hour,tblMember.Dob,GETDATE())/8766 between " + MinAge + " and " + MaxAge);
            Sql.Append(" and tblMember.Member_Id<>'" + MemberID + "'");
            Dictionary<string, string> Param = new Dictionary<string, string>();
            Param.Add("@ConditionQuery", Sql.ToString());
            Param.Add("@Gender", LookingFor);
            DataSet ds = DbManager.GetDataSetSP("SP_GuestUserSearch", Param);
            return ds.Tables[0];
            
        }
        catch
        {
            throw;
        }
        
    }

    public DataTable UserById(string MemberID, string SearchFor, string LookingFor)
    {
        try
        {
            StringBuilder Sql = new StringBuilder();
           
               
            Sql.Append(" and  tblMember.Member_Id='" + SearchFor + "'");
           // Sql.Append(" and tblMember.Member_Id<>'" + MemberID + "'");
            Dictionary<string, string> Param = new Dictionary<string, string>();
            Param.Add("@ConditionQuery", Sql.ToString());
            Param.Add("@Gender", LookingFor);
            DataSet ds = DbManager.GetDataSetSP("SP_GuestUserSearch", Param);
            return ds.Tables[0];

        }
        catch
        {
            throw;
        }

    }

    public DataTable DefaultSearchResult(string LookingFor, string Religion, string Cast, int MinAge, int MaxAge, string MemberID)
    {
        try
        {
            StringBuilder Sql = new StringBuilder();
            if (Religion == "Select")
            {

            }
            else
            {
                Sql.Append(" and tblReligion.Religion_Id='" + Religion + "'");
            }

            if (Cast == "Select")
            {

            }
            else
            {
                Sql.Append(" and tblCast.Cast_Id='" + Cast + "'");
            }
            Sql.Append(" and DATEDIFF(hour,tblMember.Dob,GETDATE())/8766 between " + MinAge + " and " + MaxAge);
            Sql.Append(" and tblMember.Member_Id<>'" + MemberID + "'");
            Dictionary<string, string> Param = new Dictionary<string, string>();
            Param.Add("@ConditionQuery", Sql.ToString());
            Param.Add("@Gender", LookingFor);
            DataSet ds = DbManager.GetDataSetSP("SP_GuestUserSearch", Param);
            return ds.Tables[0];

        }
        catch
        {
            throw;
        }

    }

    

}