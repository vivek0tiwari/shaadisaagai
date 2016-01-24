using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using CuteWebUI;
using System.Data;

/// <summary>
/// Summary description for Album
/// </summary>
public class Album : User
{
    DbManager ObjDAL = new DbManager();

	public Album()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public string   CreateAlbumDirectory(string DirName,string UserID,string Gender)
    {
        try
        {
            
            if (!Directory.Exists(DirName))
            {
                Directory.CreateDirectory(DirName);

                Dictionary<string, string> Param = new Dictionary<string, string>();
                Param.Add("@MemberId", UserID);
                if (Gender == "Male")
                {
                    Param.Add("@ProfilePhoto", "MaleProfile.jpg");
                }
                else
                {
                    Param.Add("@ProfilePhoto", "FeMaleProfile.jpg");
                }
                Param.Add("@CreatedDate", DateTime.Today.ToString());
                Param.Add("@Permission", "2");
                Param.Add("@FolderName", UserID);
                Param.Add("@AlbumName", UserID);
                DbManager.ExecuteNonQuerySP("SP_Insert_Album", Param);


                return "Directory Created Succsefully ";
            }
            else
            {
                return "You Are Already Created Directory";
            }


        }
        catch
        {
            throw;
        }
            finally
        {
        }
        
    }
    public string CreateOnlyDirectory(string DirName)
    {
        if (!Directory.Exists(DirName))
        {
            Directory.CreateDirectory(DirName);
            return "SuccessFullyCreated";
        }
        else
        {
            return  "Folder AllReady Exixst!";
        }
        
    }

    public DataTable GetAllImages(string Path)
    {
        DataTable dt = new DataTable();
        try
        {
            if (Directory.Exists(Path))
            {
               
                dt.Columns.Add("FilePath", typeof(string));


                System.IO.DirectoryInfo objDI = new System.IO.DirectoryInfo(Path + "/");
                    string[] extensions = new[] { ".jpg", ".gif", ".bmp",".png" };
                
FileInfo[] fileSizes =
    objDI.EnumerateFiles()
         .Where(f => extensions.Contains(f.Extension.ToLower()))
         .ToArray();
                

                foreach (FileInfo Fi in fileSizes)
                {
                    DataRow dr = dt.NewRow();
                    dr["FilePath"] = Fi.Directory.Name + @"/" + Fi.Name;

                    dt.Rows.Add(dr);
                }


               
            }
            return dt;
        }
        catch
        {
            throw;
        }
        finally 
        { 
             
        }
      
    }

    //public bool IsprofilePic(string FileName, string UserID)
    //{
    //    bool isPP=false;
    //     try
    //    {

           
             

    //            Dictionary<string, string> Param = new Dictionary<string, string>();
    //            Param.Add("@MemberId", UserID);
    //            DataSet ds= DbManager.GetDataSetSP("SP_Select_Album", Param);
    //            if (ds.Tables[0].Rows[0]["ProfilePhoto"].ToString() == FileName)
    //            {
    //                isPP = true;
    //            }
    //            else
    //            {
    //                isPP = false;
    //            }

    //            return isPP;


    //    }
    //    catch
    //    {
    //        throw;
    //    }
    //    finally
    //    {
    //    }
    //}
   
  
    public bool validateNoOfFiles(string Path)
    {
        bool isvalid = false;
        try
        {
            if (Directory.GetFiles(Path).Count() < 6)
            {
                isvalid= true;
            }
            else
            {
                isvalid = false;
            }

            return isvalid;

        }
        catch
        {
            throw;
        }
        finally
        {

        }
    }
    public string  SetProfilePicture(string FileName,string UserID)
    {
        try
        {

           
              

                Dictionary<string, string> Param = new Dictionary<string, string>();
                Param.Add("@MemberId", UserID);
                Param.Add("@ProfilePhoto", FileName);

                if (DbManager.ExecuteNonQuerySP("[SP_Update_Album_ProfilePic]", Param) > 0)
                {
                    return "Your Profile Picture Updated.";
                }
                else
                {
                    return "Some Probleme In Server Plese Try Later";
                }


          
        }
        catch
        {
            throw;
        }
        finally
        {
        }
    }

    public string ResetProfilePic(string UserID,string Gender)
    {
        try
        {


            Dictionary<string, string> Param = new Dictionary<string, string>();
            Param.Add("@MemberId", UserID);
            if (Gender == "Male")
            {
                Param.Add("@ProfilePhoto", "MaleProfile.jpg");
            }
            else
            {
                Param.Add("@ProfilePhoto", "FeMaleProfile.jpg");
            }


            if (DbManager.ExecuteNonQuerySP("[SP_Update_Album_ProfilePic]", Param) > 0)
            {
                return "Your Profile Picture Updated.";
            }
            else
            {
                return "Some Probleme In Server Plese Try Later";
            }
        }catch
        {
            throw;
        }


    }
    public string  GetProfilePicture(string MemberId)
    {
        try
        {

           
             

                Dictionary<string, string> Param = new Dictionary<string, string>();
                Param.Add("@MemberId", MemberId);
                DataSet ds= DbManager.GetDataSetSP("SP_Select_Album", Param);
                return  ds.Tables[0].Rows[0]["ProfilePhoto"].ToString();

              


        }
        catch
        {
            throw;
        }
        finally
        {
        }
    }
    public string DeleteFile(string DirName,string fielName)
    {
        try
        {

            if (Directory.Exists(DirName) && File.Exists(DirName+@"\"+fielName))
            {
                File.Delete(DirName + @"\" + fielName);
                return "File Deleted Succsefully ";
            }
            else
            {
                return "File Does Not Exist. Please Try Again Later";
            }
        }
        catch
        {
            return "Some Problem With Server. Please Try Again Later";
        }
        finally
        {
        }
    }

    public int ChangephotoStatus(string MemberId,string  PermissionId)
    {
        try
        {


            //0-private No one Can see Even profile pic
            //1-show only profile pic to free members
            //3-show album with profile pic free members

            Dictionary<string, string> Param = new Dictionary<string, string>();
            Param.Add("@MemberId", MemberId);
            Param.Add("@Permission", PermissionId);
            return DbManager.ExecuteNonQuerySP("SP_Photo_Lock_Status", Param);
        



        }
        catch
        {
            throw;
        }
        finally
        {
        }
    }
    public DataSet GetphotoStatus(string MemberId, string PermissionId)
    {
        try
        {


            //0-private No one Can see Even profile pic
            //1-show only profile pic to free members
            //3-show album with profile pic free members

            Dictionary<string, string> Param = new Dictionary<string, string>();
           
            return DbManager.GetDataSet("Select * from tblAlbum where MemberId='" + MemberId + "'");




        }
        catch
        {
            throw;
        }
        finally
        {
        }
    }

    

    
    
}