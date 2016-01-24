<%@ Page Title="" Language="C#" MasterPageFile="~/User/MasterPage.master" AutoEventWireup="true" CodeFile="Album.aspx.cs" Inherits="User_Album" EnableEventValidation="false" %>

<%@ Register assembly="CuteWebUI.AjaxUploader" namespace="CuteWebUI" TagPrefix="CuteWebUI" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
  
  
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min.js" type="text/javascript"></script>
    <script src="../lightbox/jquery.colorbox-min.js" type="text/javascript"></script>
    <script src="../lightbox/jquery.colorbox.js" type="text/javascript"></script>
    <link href="../lightbox/colorbox.css" rel="stylesheet" type="text/css" />
  <script>
      $(document).ready(function () {
          //Examples of how to assign the Colorbox event to elements
          $(".group1").colorbox({ rel: 'group1' });
          $(".group2").colorbox({ rel: 'group2', transition: "fade" });
          $(".group3").colorbox({ rel: 'group3', transition: "none", width: "75%", height: "75%" });
          $(".group4").colorbox({ rel: 'group4', slideshow: true });
          $(".ajax").colorbox();
          $(".youtube").colorbox({ iframe: true, innerWidth: 425, innerHeight: 344 });
          $(".vimeo").colorbox({ iframe: true, innerWidth: 500, innerHeight: 409 });
          $(".iframe").colorbox({ iframe: true, width: "80%", height: "80%" });
          $(".inline").colorbox({ inline: true, width: "50%" });
          $(".callbacks").colorbox({
              onOpen: function () { alert('onOpen: colorbox is about to open'); },
              onLoad: function () { alert('onLoad: colorbox has started to load the targeted content'); },
              onComplete: function () { alert('onComplete: colorbox has displayed the loaded content'); },
              onCleanup: function () { alert('onCleanup: colorbox has begun the close process'); },
              onClosed: function () { alert('onClosed: colorbox has completely closed'); }
          });

          $('.non-retina').colorbox({ rel: 'group5', transition: 'none' })
          $('.retina').colorbox({ rel: 'group5', transition: 'none', retinaImage: true, retinaUrl: true });

          //Example of preserving a JavaScript event for inline calls.
          $("#click").click(function () {
              $('#click').css({ "background-color": "#f00", "color": "#fff", "cursor": "inherit" }).text("Open this window again and this message will still be here.");
              return false;
          });
      });
		</script>
    

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <div class="sidebar1" >
    <div class="sidebarheading">
      
    Upload Photos</div><div class="slidebarcontent content">
    
       <ul>
     <li>You can upload upto 6 photos</li>
	<li>Profile with photo gets 14 times more responses from members</li>
   <li>You can choose to lock your photo & allow selective viewership</li>
   <li>Please make sure that the photograph is of 2 MB max</li>
   <li>You Can Not Upload Side Face,Blur,Group Photo And Watermark Photo</li>
   <li>You Can  Upload Close Up And Full View Photos</li>
   
   </ul>
   
    <br />
       <fieldset>
        
        <CuteWebUI:UploadAttachments ID="UploadAttachments1" runat="server" 
               InsertButtonStyle-CssClass="btnLogin Blacktext" InsertText="Add Photos" 
               ProgressPanelWidth="220" 
               onattachmentadded="UploadAttachments1_AttachmentAdded" 
               onuploadcompleted="UploadAttachments1_UploadCompleted" 
               onattachmentremoveclicked="UploadAttachments1_AttachmentRemoveClicked" 
               RemoveButtonBehavior="Delete" ItemTemplatePosition="AfterText" 
               onattachmentcreated="UploadAttachments1_AttachmentCreated" 
               MaxFilesLimit="6" 
               onattachmentactionclicked="UploadAttachments1_AttachmentActionClicked"   >
               
<InsertButtonStyle CssClass="btnLogin Blacktext"></InsertButtonStyle>

            <CancelButtonStyle CssClass="classname" />

<ValidateOption EnableMimetypeChecking="True" AllowedFileMimeTypes="" 
                AllowedFileExtensions="jpg,gif,png,bmp" MaxSizeKB="2048"  ></ValidateOption>
               
         </CuteWebUI:UploadAttachments>
         </fieldset>
   
          
        
        <div><br />
        <div>
             <img src="../images/devideline.gif" width="700px" />
        <br />
           <h5 style="padding-top:5px;padding-bottom:-2px;" ><center> Your Photo Album</center></h5>
            <img src="../images/devideline.gif" width="700px" />
            </div><br />
        <asp:DataList ID="dlQLImages" runat="server" RepeatDirection="Horizontal" 
                RepeatColumns="3" onitemcommand="dlQLImages_ItemCommand">  
            <FooterStyle HorizontalAlign="Left" VerticalAlign="Bottom" />
            <FooterTemplate>
                <asp:Button ID="Button2" CssClass="btnLogin Blacktext" runat="server" Text="Delete" style="float :right;" CommandArgument='<%# Eval("FilePath") %>' CommandName="Delete" />
            </FooterTemplate>
    <ItemTemplate>  
    
				
      <a class="group3" href='<%# string.Format("../ProfileImages/{0}",Eval("FilePath") ) %>' rel="prettyPhoto[gallery2]" >
      <img id="Img1" src='<%# string.Format("~/ProfileImages/{0}",Eval("FilePath") ) %>'   height="170" width="200" runat="server" />  
       </a>
       <asp:Label ID="lblFileName" runat="server" Text='<%# Eval("FilePath") %>' 
            Visible="False"></asp:Label>
      <br /> 
        
        <asp:CheckBox ID="cbSelect" runat="server"  />
      <asp:Button ID="Button1" runat="server" Text="Set Profile Picture" 
            CommandArgument='<%# Eval("FilePath") %>' CommandName="SetProfilePic" CssClass="classname" style="float :right;" />
       
        

         
    </ItemTemplate>  
</asp:DataList>

        </div>
         </div>  
          
    </div>
</asp:Content>

