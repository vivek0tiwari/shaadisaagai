using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

/// <summary>
/// Summary description for DbManager
/// </summary>
public class DbManager
{
    private static SqlCommand command = null;
    public static   SqlConnection Con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
    
    public DbManager()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    



    public static void Open()
    {
        if (Con.State != ConnectionState.Open)
            Con.Open();
    }

    public static void Close()
    {
        if (Con.State != ConnectionState.Closed)
            Con.Close();
    }







    public static  DataSet GetDataSet(String sqlString)
    {
        using (SqlCommand Cmd = new SqlCommand(sqlString))

            try
            {



                Cmd.CommandText = sqlString;
                Cmd.Connection = DbManager.Con;
                SqlDataAdapter dbDataAdapter = new SqlDataAdapter(Cmd);
                DataSet dataSet = new DataSet();
                DataTable dataTable = new DataTable();
                dataTable.BeginLoadData();
                dbDataAdapter.Fill(dataTable);
                dataTable.EndLoadData();
                dataSet.EnforceConstraints = false;
                dataSet.Tables.Add(dataTable);
                return dataSet;
            }

            catch (Exception ex)
            {
                throw;
            }
    }
    public static DataSet GetDataSetSP(String sqlString,Dictionary<string,string > ARGS)
    {
        using (SqlCommand Cmd = new SqlCommand(sqlString))

            try
            {



                Cmd.CommandText = sqlString;
                Cmd.CommandType = CommandType.StoredProcedure;
                Cmd.Connection = DbManager.Con;
                foreach (var Param in ARGS)
                {
                    Cmd.Parameters.AddWithValue(Param.Key, Param.Value);
                }


                SqlDataAdapter dbDataAdapter = new SqlDataAdapter(Cmd);
                DataSet dataSet = new DataSet();
               
                dbDataAdapter.Fill(dataSet);
                
                dataSet.EnforceConstraints = false;
                
                return dataSet;
            }

            catch (Exception ex)
            {
                throw;
            }
    }


    public static int  ExecuteNonQuerySP(String sqlString, Dictionary<string, string> ARGS)
    {
        using (SqlCommand Cmd = new SqlCommand(sqlString))

            try
            {



                Cmd.CommandText = sqlString;
                Cmd.CommandType = CommandType.StoredProcedure;
                Cmd.Connection = DbManager.Con;
                DbManager.Open();
                foreach (var Param in ARGS)
                {
                    Cmd.Parameters.AddWithValue(Param.Key, Param.Value);
                }

                int i = 0;
                i = Cmd.ExecuteNonQuery();
                DbManager.Close();
                return i;

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
    public static void RunProcedure(string StoredProcedureName, SqlParameter[] parametersList, out SqlDataReader reader)
    {
     SqlCommand   command = CreateCommand(Con, StoredProcedureName, parametersList);
        reader = command.ExecuteReader(System.Data.CommandBehavior.CloseConnection);
    }
    private  static SqlCommand CreateCommand(SqlConnection connection, string StoredProcedureName, SqlParameter[] parametersList)
    {
        command = new SqlCommand(StoredProcedureName, connection);
        command.CommandType = CommandType.StoredProcedure;

        // add proc parameters
        if (parametersList != null)
        {
            foreach (SqlParameter parameter in parametersList)
                command.Parameters.Add(parameter);
        }
        // return objaPrams
        command.Parameters.Add(
            new SqlParameter("ReturnValue", SqlDbType.Int, 4,
            ParameterDirection.ReturnValue, false, 0, 0,
            string.Empty, DataRowVersion.Default, null));

        return command;
    }

    public static SqlDataReader GetDataReader(String sqlString)
    {
        using (SqlCommand Cmd = new SqlCommand(sqlString))

            try
            {



                Cmd.CommandText = sqlString;
                Cmd.Connection = DbManager.Con;
                DbManager.Open();
                SqlDataReader datareader = Cmd.ExecuteReader();
                
                return datareader;

            }

            catch (Exception ex)
            {
                return null;
            }
            finally
            {
               
            }
    }






    
}