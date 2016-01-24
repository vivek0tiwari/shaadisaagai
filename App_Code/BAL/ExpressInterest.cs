using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Text;

/// <summary>
/// Intrest Status Codes
/// 0-pending
/// 1-Waiting(Aproved From Admin)
/// 2-Decliend
/// 3-Ignored
/// 4-Accepted
/// -----------------
/// Fav StatusCode
/// 0-pending
/// 1-aproved
/// 2-accepted
/// 3-reject(ignored)
/// </summary>
public class ExpressInterest : UserDetails
{
    int _intrestsID;

    public int IntrestsID
    {
        get { return _intrestsID; }

    }
    string _sender;

    public string Sender
    {
        get { return _sender; }
        set { _sender = value; }
    }
    string _recever;

    public string Recever
    {
        get { return _recever; }
        set { _recever = value; }
    }
    string _msg;

    public string Msg
    {
        get { return _msg; }
        set { _msg = value; }
    }
    int _status;

    public int Status
    {
        get { return _status; }
        set { _status = value; }
    }
    DateTime _sending_Date;

    public DateTime Sending_Date
    {
        get { return _sending_Date; }
        set { _sending_Date = value; }
    }

    private SqlParameter[] param;
    public ExpressInterest()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    public int Add_ExpressInterest()
    {
        try
        {
            SqlDataReader dr;
            DbManager.Open();
            param = new SqlParameter[5];
            param[0] = new SqlParameter("@Sender_Id", Sender);
            param[1] = new SqlParameter("@Receiver_Id", Recever);
            param[2] = new SqlParameter("@Date", Sending_Date);
            param[3] = new SqlParameter("@Msg_Id", Msg);
            param[4] = new SqlParameter("@Status", Status);
            DbManager.RunProcedure("Add_ExpressInterest", param, out dr);
            return Convert.ToInt16(dr.HasRows);

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


    public int Add_ToFav()
    {
        try
        {
            SqlDataReader dr;
            DbManager.Open();
            param = new SqlParameter[5];
            param[0] = new SqlParameter("@Sender_Id", Sender);
            param[1] = new SqlParameter("@Receiver_Id", Recever);
            param[2] = new SqlParameter("@Date", Sending_Date);
            param[3] = new SqlParameter("@Msg_Id", Msg);
            param[4] = new SqlParameter("@Status", Status);
            DbManager.RunProcedure("SP_Insert_Favlist", param, out dr);
            return Convert.ToInt16(dr.HasRows);

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
    public bool checkFav()
    {
        try
        {
            DALuser.Open();
            SqlDataReader dr = DbManager.GetDataReader("select * from tblFavlist where Receiver_Id='" + Recever + "' and Sender_Id='" + Sender + "'");

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
    public int UPdateFavCode()
    {
        try
        {

            DbManager.Open();
            Dictionary<string, string> Param = new Dictionary<string, string>();
            Param.Add("@Sender_Id", Sender);
            Param.Add("@Receiver_Id", Recever);

            Param.Add("@Status", Status.ToString());
            return DbManager.ExecuteNonQuerySP("SP_Update_Intrest_Code", Param);

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
    public DataTable GetFavList()
    {
        try
        {
            StringBuilder Sql = new StringBuilder();

            Sql.Append("and tblFavlist.Sender_Id='" + User_Id + "'  and tblFavlist.Status>=0 order by tblFavlist.Date");

            Dictionary<string, string> Param = new Dictionary<string, string>();
            Param.Add("@injection", Sql.ToString());
            Param.Add("@Gender", Gender);
            Param.Add("@RequestFor", "REQoutbox");
            DataSet ds = DbManager.GetDataSetSP("SP_Select_Fav", Param);
            return ds.Tables[0];

        }
        catch
        {
            throw;
        }

    }


    public bool checkExpressInterest()
    {
        try
        {
            DALuser.Open();
            SqlDataReader dr = DbManager.GetDataReader("select * from tblInterest where Receiver_Id='" + Recever + "' and Sender_Id='" + Sender + "'");

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

  

    public DataTable IntrestInbox()
    {
        try
        {
            StringBuilder Sql = new StringBuilder();

            Sql.Append("and tblInterest.Receiver_Id='" + User_Id + "' and (tblInterest.Status<2)  order by tblInterest.Date");

            Dictionary<string, string> Param = new Dictionary<string, string>();
            Param.Add("@injection", Sql.ToString());
            Param.Add("@Gender", Gender);
            Param.Add("@RequestFor", "REQInbox");
            DataSet ds = DbManager.GetDataSetSP("SP_Select_Inbox_Intrests", Param);
            return ds.Tables[0];

        }
        catch
        {
            throw;
        }

    }
    public DataTable IntrestAcceptedList()
    {
        try
        {
            StringBuilder Sql = new StringBuilder();

            Sql.Append("and tblInterest.Receiver_Id='" + User_Id + "'  and tblInterest.Status=4 order by tblInterest.Date");

            Dictionary<string, string> Param = new Dictionary<string, string>();
            Param.Add("@injection", Sql.ToString());
            Param.Add("@Gender", Gender);
            Param.Add("@RequestFor", "REQInbox");
            DataSet ds = DbManager.GetDataSetSP("SP_Select_Inbox_Intrests", Param);
            return ds.Tables[0];

        }
        catch
        {
            throw;
        }

    }
  


    public DataTable IntrestRejectedList()
    {
        try
        {
            StringBuilder Sql = new StringBuilder();

            Sql.Append("and tblInterest.Receiver_Id='" + User_Id + "'  and tblInterest.Status=2 order by tblInterest.Date");

            Dictionary<string, string> Param = new Dictionary<string, string>();
            Param.Add("@injection", Sql.ToString());
            Param.Add("@Gender", Gender);
            Param.Add("@RequestFor", "REQInbox");
            DataSet ds = DbManager.GetDataSetSP("SP_Select_Inbox_Intrests", Param);
            return ds.Tables[0];

        }
        catch
        {
            throw;
        }

    }
    public DataTable IntrestOutbox()
    {
        try
        {
            StringBuilder Sql = new StringBuilder();

            Sql.Append("and tblInterest.Sender_Id='" + User_Id + "' order by tblInterest.Date");

            Dictionary<string, string> Param = new Dictionary<string, string>();
            Param.Add("@injection", Sql.ToString());
            Param.Add("@Gender", Gender);
            Param.Add("@RequestFor", "REQoutbox");
            DataSet ds = DbManager.GetDataSetSP("SP_Select_outbox_Intrests", Param);
            return ds.Tables[0];

        }
        catch
        {
            throw;
        }

    }


    public int UPdateIntrestCode()
    {
        try
        {

            DbManager.Open();
            Dictionary<string, string> Param = new Dictionary<string, string>();
            Param.Add("@Sender_Id", Sender);
            Param.Add("@Receiver_Id", Recever);

            Param.Add("@Status", Status.ToString());
            return DbManager.ExecuteNonQuerySP("SP_Update_Intrest_Code", Param);

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
    public int UPdatePhotoCode()
    {
        try
        {

            DbManager.Open();
            Dictionary<string, string> Param = new Dictionary<string, string>();
            Param.Add("@Sender_Id", Sender);
            Param.Add("@Receiver_Id", Recever);

            Param.Add("@Status", Status.ToString());
            return DbManager.ExecuteNonQuerySP("SP_Update_Intrest_Code", Param);

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

    public int Add_PhotoReqest()
    {
        try
        {
            SqlDataReader dr;
            DbManager.Open();
            param = new SqlParameter[5];
            param[0] = new SqlParameter("@Sender_Id", Sender);
            param[1] = new SqlParameter("@Receiver_Id", Recever);
            param[2] = new SqlParameter("@Date", Sending_Date);

            param[3] = new SqlParameter("@Status", Status);
            DbManager.RunProcedure("SP_Insert_PhotoReqest", param, out dr);
            return Convert.ToInt16(dr.HasRows);

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

    public DataTable PhotoReqInbox()
    {
        try
        {
            StringBuilder Sql = new StringBuilder();

            Sql.Append("and tblPhotoRequest.SenderId='" + User_Id + "' order by tblInterest.Date");

            Dictionary<string, string> Param = new Dictionary<string, string>();
            Param.Add("@injection", Sql.ToString());
            Param.Add("@Gender", Gender);
            Param.Add("@RequestFor", "REQoutbox");
            DataSet ds = DbManager.GetDataSetSP("SP_Select_Inbox_PhotoReqest", Param);
            return ds.Tables[0];

        }
        catch
        {
            throw;
        }

    }

    public DataTable PhotoReqAcceptedInbox()
    {
        try
        {
            StringBuilder Sql = new StringBuilder();

            Sql.Append("and tblPhotoRequest.SenderId='" + User_Id + "'  and tblPhotoRequest.Status=4 order by tblInterest.Date");

            Dictionary<string, string> Param = new Dictionary<string, string>();
            Param.Add("@injection", Sql.ToString());
            Param.Add("@Gender", Gender);
            Param.Add("@RequestFor", "REQoutbox");
            DataSet ds = DbManager.GetDataSetSP("SP_Select_Inbox_PhotoReqest", Param);
            return ds.Tables[0];

        }
        catch
        {
            throw;
        }

    }

    public DataTable PhotoReqRejectedInbox()
    {
        try
        {
            StringBuilder Sql = new StringBuilder();

            Sql.Append("and tblPhotoRequest.SenderId='" + User_Id + "'  and tblPhotoRequest.Status=2 order by tblInterest.Date");

            Dictionary<string, string> Param = new Dictionary<string, string>();
            Param.Add("@injection", Sql.ToString());
            Param.Add("@Gender", Gender);
            Param.Add("@RequestFor", "REQoutbox");
            DataSet ds = DbManager.GetDataSetSP("SP_Select_Inbox_PhotoReqest", Param);
            return ds.Tables[0];

        }
        catch
        {
            throw;
        }

    }

    public bool checkPhotoReq()
    {
        try
        {
            DALuser.Open();
            SqlDataReader dr = DbManager.GetDataReader("select * from tblPhotoRequest where ReceiverId='" + Recever + "' and SenderId='" + Sender + "'");

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


    public bool checkAlbumSetting()
    {
        try
        {
            DALuser.Open();
            SqlDataReader dr = DbManager.GetDataReader("  select * from tblAlbum where Permission=3  and MemberId='" + Recever + "'");

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


    public DataTable MessageInbox()
    {
        try
        {

            StringBuilder Sql = new StringBuilder();

            Sql.Append("and tblMessage.RechiverID='" + User_Id + "' and (tblMessage.Status>0)  order by tblMessage.Date");

            Dictionary<string, string> Param = new Dictionary<string, string>();
            Param.Add("@injection", Sql.ToString());
            Param.Add("@Member_Id", User_Id);
            DataSet ds = DbManager.GetDataSetSP("SP_Select_MSG_Inbox", Param);
            return ds.Tables[0];
        }
        catch
        {
            throw;
        }






    }

    public int Add_Masg(string subject)
    {
        try
        {
            SqlDataReader dr;
            DbManager.Open();
            param = new SqlParameter[6];
            param[0] = new SqlParameter("@SenderID", Sender);
            param[1] = new SqlParameter("@RechiverID", Recever);
            param[2] = new SqlParameter("@Date", Sending_Date);
            param[3] = new SqlParameter("@MSGSubject", subject);
            param[4] = new SqlParameter("@MSGBody", Msg);
            param[5] = new SqlParameter("@Status", Status);
            DbManager.RunProcedure("SP_Insert_MSG", param, out dr);
            return Convert.ToInt16(dr.HasRows);

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

    public int Update_MSG_Status(int Status,int MSgid)
    {
        try
        {
               SqlDataReader dr;
            DbManager.Open();
            param = new SqlParameter[2];
            param[0] = new SqlParameter("@ID", MSgid);
            param[1] = new SqlParameter("@Status", Status);
            DbManager.RunProcedure("SP_Update_MSG", param, out dr);
            return Convert.ToInt16(dr.HasRows);


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

   
  

    public DataTable  Get_Inbox()
    {
        
        
            try
            {
                StringBuilder Sql = new StringBuilder();

                Sql.Append(" tblMessage.RechiverID='" + User_Id + "' and (tblMessage.Status>=0) order by tblMessage.Date");

                Dictionary<string, string> Param = new Dictionary<string, string>();
                Param.Add("@injection", Sql.ToString());

                Param.Add("@Member_Id", User_Id);
                DataSet ds = DbManager.GetDataSetSP("SP_Select_MSG_Inbox", Param);
                return ds.Tables[0];

            }
            catch
            {
                throw;
            }

       

    }

    public DataTable Get_SentMSG()
    {
        try
        {
            StringBuilder Sql = new StringBuilder();

            Sql.Append("and tblMessage.SenderID='" + User_Id + "' and (tblMessage.Status>=0) order by tblMessage.Date");

            Dictionary<string, string> Param = new Dictionary<string, string>();
            Param.Add("@injection", Sql.ToString());

            Param.Add("@Member_Id", User_Id);
            DataSet ds = DbManager.GetDataSetSP("SP_Select_MSG_Outbox", Param);
            return ds.Tables[0];

        }
        catch
        {
            throw;
        }
    }

    public DataTable Get_MSG(int id)
    {
        try
        {

            DataSet ds = DbManager.GetDataSet("select * from tblMessage where ID=" + id);
            return ds.Tables[0];

        }
        catch
        {
            throw;
        }
    }
        
    

    public DataTable Get_Draft(string subject)
    {
        
            try
            {
                StringBuilder Sql = new StringBuilder();
               
                Sql.Append("and tblPhotoRequest.SenderId='" + User_Id + "' order by tblInterest.Date");

                Dictionary<string, string> Param = new Dictionary<string, string>();
                Param.Add("@injection", Sql.ToString());
                Param.Add("@Gender", Gender);
                Param.Add("@RequestFor", "REQoutbox");
                DataSet ds = DbManager.GetDataSetSP("SP_Select_Inbox_PhotoReqest", Param);
                return ds.Tables[0];

            }
            catch
            {
                throw;
            }

        

    }

    public DataSet GetCount()
    {
        try
        {
            StringBuilder Sql = new StringBuilder();

           

            Dictionary<string, string> Param = new Dictionary<string, string>();
            Param.Add("@Member_Id", User_Id);
          

            DataSet ds = DbManager.GetDataSetSP("SP_Select_Count", Param);
            return ds;

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