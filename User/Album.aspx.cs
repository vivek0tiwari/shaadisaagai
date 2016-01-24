using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using CuteWebUI;
using System.Data;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Drawing.Imaging;

public partial class User_Album : System.Web.UI.Page
{
    Album objAlbum = new Album();

    public static System.Drawing.Image ScaleImage(System.Drawing.Image image, int maxHeight)
    {
        var ratio = (double)maxHeight / image.Height;
        var newWidth = (int)(image.Width * ratio);
        var newHeight = (int)(image.Height * ratio);
        var newImage = new Bitmap(newWidth, newHeight);
        using (var g = Graphics.FromImage(newImage))
        {
            g.DrawImage(image, 0, 0, newWidth, newHeight);
        }
        return newImage;
    }

    protected void CreateDirectory(string dirName)
    {
        if (!Directory.Exists(Server.MapPath(@"~\ProfileImages\") + dirName))
        {
            Directory.CreateDirectory(Server.MapPath( @"~\ProfileImages\") + dirName);
        }
    }
   
    protected void DisplayImages()
    {
        dlQLImages.DataSource = objAlbum.GetAllImages(Server.MapPath(@"~\ProfileImages\") + Session["uid_gender"].ToString().Split('_')[0]);
        dlQLImages.DataBind();
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (!IsPostBack)
            {

                objAlbum.CreateOnlyDirectory(Server.MapPath(@"~\ProfileImages\") + Session["uid_gender"].ToString().Split('_')[0]);
               // DisplayImages(Session["uid_gender"].ToString().Split('_')[0]);
                DisplayImages();
            }

        }
        catch(Exception ex)
        {
            WebMsgBox.Show(ex.Message);
        }

    }
    protected void Uploader1_UploadCompleted(object sender, CuteWebUI.UploaderEventArgs[] args)
    {

    }
    protected void Uploader_FileUploaded(object sender, CuteWebUI.UploaderEventArgs args)
    {
        

       // InsertMsg("File uploaded! " & args.FileName & ", " + args.FileSize.ToString() & " bytes.");
    }

    protected void UploadAttachments1_UploadCompleted(object sender, CuteWebUI.UploaderEventArgs[] args)
    {
        DisplayImages();
    }
    protected void UploadAttachments1_AttachmentAdded(object sender, AttachmentItemEventArgs args)
    {
       Stream file=  args.Item.OpenStream();

       try
       {

           if (objAlbum.validateNoOfFiles(Server.MapPath(@"~\ProfileImages\") + Session["uid_gender"].ToString().Split('_')[0]))
           {
               if (!File.Exists(Server.MapPath(@"~\ProfileImages\") + Session["uid_gender"].ToString().Split('_')[0] + @"\" + args.Item.FileName))
               {
                   System.Drawing.Bitmap bmpPostedImage = new System.Drawing.Bitmap(file);
                   System.Drawing.Image objImage = ScaleImage(bmpPostedImage, 380);
                  Graphics  canvas   = Graphics.FromImage(objImage);

                  canvas.DrawString("ShadiSagai.com", new Font("Verdana", 16, FontStyle.Bold), new SolidBrush(Color.LightGray),new  RectangleF(50,0,8,500), StringFormat.GenericTypographic);

                   objImage.Save(Server.MapPath(@"~\ProfileImages\") + Session["uid_gender"].ToString().Split('_')[0] + @"\" + args.Item.FileName);
                   //args.Item.MoveTo(Server.MapPath(@"~\ProfileImages\") + Session["uid_gender"].ToString().Split('_')[0] + @"\" + args.Item.FileName);
               }
               else
               {
                   string newFilename = args.Item.FileName.Split('.')[0] + args.Item.FileName.Split('.')[0][args.Item.FileName.Length - 5] + "." + args.Item.FileName.Split('.')[1];
                   System.Drawing.Bitmap bmpPostedImage = new System.Drawing.Bitmap(file);
                   System.Drawing.Image objImage = ScaleImage(bmpPostedImage, 380);
                   Graphics canvas = Graphics.FromImage(objImage);

                   canvas.DrawString("ShadiSagai.com", new Font("Verdana", 16, FontStyle.Bold), new SolidBrush(Color.LightGray), new RectangleF(50, 0, 8, 500), StringFormat.GenericTypographic);

                   objImage.Save(Server.MapPath(@"~\ProfileImages\") + Session["uid_gender"].ToString().Split('_')[0] + @"\" + args.Item.FileName);
                   //args.Item.MoveTo(Server.MapPath(@"~\ProfileImages\") + Session["uid_gender"].ToString().Split('_')[0] + @"\" + newFilename);
               }
           }
           else
           {
               args.Item.DataItem.Remove();
           }
       }
       catch (IOException ex)
       {

       }
       finally
       {
           file.Dispose();
       }
           

      
       

    }
    protected void dlQLImages_ItemCommand(object source, DataListCommandEventArgs e)
    {

        if (e.CommandName == "SetProfilePic")
        {
            WebMsgBox.Show(objAlbum.SetProfilePicture(e.CommandArgument.ToString(), e.CommandArgument.ToString().Split('/')[0]));
            
        }
        else if (e.CommandName == "Delete")
        {
            int i = 0;
            bool isProfilePicSelected = false;
            string ProfilPic = objAlbum.GetProfilePicture(Session["uid_gender"].ToString().Split('_')[0]);
            foreach (DataListItem dlitem in dlQLImages.Items)
            {
                CheckBox chkSelected = (CheckBox)dlitem.FindControl("cbSelect");
                Label filename = (Label)dlitem.FindControl("lblFileName");
                if (chkSelected.Checked)
                {
                    i++;
                    if (ProfilPic == filename.Text)
                    {
                        isProfilePicSelected = true;
                    }
                    else
                    {
                        objAlbum.DeleteFile(Server.MapPath(@"~\ProfileImages\") + Session["uid_gender"].ToString().Split('_')[0], filename.Text.Split('/')[1]);
                    }
                }
            }
            if (i == 0)
            {
                WebMsgBox.Show("Please Select Images For Delete");
            }
            else if (isProfilePicSelected)
            {
                WebMsgBox.Show("You Can Not Delete Youre Profile Picture From Album. Reset Your Profile Picture From Change Profile Pic And Try Again");
            }
            else
            {
                WebMsgBox.Show("File Deleted Succsefully");
            }
            DisplayImages();
        }
        else
        {
        }

    }

    protected void UploadAttachments1_AttachmentRemoveClicked(object sender, AttachmentItemEventArgs args)
    {
        try
        {
            if (args.Behavior == AttachmentItemBehavior.Delete && File.Exists(Server.MapPath(@"~\ProfileImages\") + Session["uid_gender"].ToString().Split('_')[0] + @"\" + args.Item.FileName))
            WebMsgBox.Show(objAlbum.DeleteFile(Server.MapPath(@"~\ProfileImages\") + Session["uid_gender"].ToString().Split('_')[0], args.Item.FileName));
        }
        catch(Exception Ex)
        {
            WebMsgBox.Show(Ex.Message);
        }
        DisplayImages();
    }
    protected void UploadAttachments1_AttachmentCreated(object sender, AttachmentItemEventArgs args)
    {
        
    }
    protected void UploadAttachments1_AttachmentActionClicked(object sender, AttachmentItemEventArgs args)
    {
        
    }
}