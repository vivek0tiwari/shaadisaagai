<%@ Page Title="" Language="C#" MasterPageFile="~/User/MasterPage.master" AutoEventWireup="true" CodeFile="Interest.aspx.cs" Inherits="User_Interest" %>
<%@ Register Src="~/User_Control/Message.ascx" TagName="Message" TagPrefix="uc" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script type="text/javascript">
    var msgBoxTimeout;
    var timeToShow = 10000;
    var msgBoxRight = -320;

    function ShowMessage(msg, type) {
        clearInterval(msgBoxTimeout);
        $("#divMessageBody").css("right", msgBoxRight);

        var classAttr = "message-box " + type;
        $("#divMessage").html(msg);
        $("#divMessageBody").attr("class", classAttr);

        $("#divMessageBody").stop().animate({
            right: "0px"
        }, 700, "easeInOutCirc");

        msgBoxTimeout = setTimeout(function () {
            HideMessage();
        }, timeToShow);
    }

    function HideMessage() {
        $("#divMessageBody").stop().animate({
            right: msgBoxRight
        }, 900, "easeInOutCirc");

        clearInterval(msgBoxTimeout);
    }
</script>

      <script src="../App_Themes/Default/js/jquery-1.9.1.min.js" type="text/javascript"></script>
    <script src="../App_Themes/Default/js/jquery.ui.effect.js" type="text/javascript"></script>
   
    <link href="../App_Themes/Default/css/layout.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc:message ID="ucMessage" runat="server" />
         
         <div class="sidebar1" >
       
    <div class="sidebarheading">
       
    
    
        <asp:Label ID="lblHeader" runat="server" Text=""></asp:Label>



   </div>
     <asp:ListView ID="ListView1" runat="server" DataKeyNames="Member_Id" 
                 onitemcommand="ListView1_ItemCommand" onitemdatabound="ListView1_ItemDataBound">
                   
                   
                   
                   
                   
                   
                   <EmptyDataTemplate>
                       <span>No data was returned.</span>
                   </EmptyDataTemplate>
                   
                   
                <ItemTemplate>
                        <div class="MainPhotoContainer">
                      
                            <div class="PhotouserId">
                               User ID <asp:LinkButton ID="lbtnUserId" CssClass="LinkUserId" runat="server" CommandName="ViewFullProfile"
                                    Text='<%# Eval("Member_Id") %>' />
                            </div>
                            <div class="PhotoMenubar">
                                <div class="PhotoSingleMenu">
                                <img src="../images/ExpressIntrest.png" height="16px" width="16px" />
                                     <asp:LinkButton ID="lbPhotoRequest" runat="server" CommandName="PhotoReqest">Send Photo Req.</asp:LinkButton></strong>
                                </div>
                                <div class="PhotoSingleMenu">
                                    <img src="../images/add_favorite_icon.png" />
                                    <asp:LinkButton ID="lbtnAddToFsvourite" runat="server" CommandName="AddToFavourite" OnClientClick="return comfirm('Are You Sure Want To Add To Favorite?')">Set Favourite</asp:LinkButton></strong></span>
                                </div>
                                <div class="PhotoSingleMenu">
                                <img src="../images/profile_detail.png" height="18px" width="18px" />
                                     <a href="../ViewFullProfile.aspx?ProfileID=<%# Eval("Member_Id") %>" target="_blank">   View Full Profile</a>
                                </div>
                            </div>w
                            <div class="PhotoLeftBox">
                                <div class="Photo">
                                  <asp:Label ID="lblPhotoStatus" runat="server" Visible="false" Text='<%# Eval("Member_Name") %>' />
                                    <asp:Label ID="PhotoAlbumId" runat="server" Visible="false" Text='<%# Eval("Member_Name") %>' />
                                    <asp:Label ID="lblStatusCode" runat="server" Visible="false" Text='<%# Eval("StatusCode") %>' />
                                    <asp:LinkButton ID="lbtnPhotoRequest" runat="server" CommandName="RequestPhoto" Visible="false">Request Photo</asp:LinkButton>
                                    <asp:Image ID="Image2" runat="server" ImageUrl='<%# string.Format("../ProfileImages/{0}",Eval("ProfilePhoto") ) %>' Width="146px"
                                        Height="153px" />
                                    
                                </div>
                                <div class="PhotoName">
                                    <asp:Label ID="Label14" runat="server" Text='<%# Eval("Member_Name") %>' /></div>
                            </div>
                            <div class="PhotoInfo">
                                <table width="100%" cellspacing="4px" cellpadding="4px">
                                    <tr>
                                        <td class="ColumnHeader">
                                            Age :
                                        </td>
                                        <td class="Column">
                                            <asp:Label ID="Label17" runat="server" Text='<%# Eval("Age") %>' />
                                        </td>
                                        <td class="ColumnHeader">
                                            Caste :
                                        </td>
                                        <td class="Column">
                                            <asp:Label ID="Label18" runat="server" Text='<%# Eval("Cast_Name") %>' />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="ColumnHeader">
                                            Height :
                                        </td>
                                        <td class="Column">
                                            <asp:Label ID="Label19" runat="server" Text='<%# Eval("Height") %>' /> Cm
                                        </td>
                                        <td class="ColumnHeader">
                                            Occupation :
                                        </td>
                                        <td class="Column">
                                            <asp:Label ID="Label15" runat="server" Text='<%# Eval("Profession")   %>' />
                                          
                                        </td>
                                        
                                    </tr>
                                    <tr>
                                        <td class="ColumnHeader">
                                            Native Place:
                                        </td>
                                        <td class="Column">
                                            <asp:Label ID="Label20" runat="server" Text='<%# Eval("city_name") %>' />
                                        </td>
                                        <td class="ColumnHeader">
                                            P.Location
                                        </td>
                                        <td class="Column" width="100%" >
                                          <asp:Label ID="Label2" runat="server" Text='<%# string.Concat(Eval("city_name"),",",Eval("state") ) %>' />
                                            <asp:Label ID="Label16" runat="server" Text="" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="ColumnHeader">
                                           Date :
                                        </td>
                                        <td  class="Column">
                                            <asp:Label ID="Label1" runat="server" Text='<%# String.Format("{0:y}",Eval("Date"))  %>' />
                                        </td>
                                        <td class="ColumnHeader">
                                            Status :
                                        </td>
                                        <td  class="Column">
                                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("status") %>' />
                                        </td>
                                    </tr>
                                    <tr><td colspan="4">
                                        <asp:ImageButton ID="BtnAccept" CommandName="Accept" runat="server" Height="28px" Width="120px" ImageUrl="~/images/btnAccept.png"/><asp:ImageButton CommandName="Reject" ID="btnReject" runat="server" ImageUrl="~/images/btnReject.png" Height="28px" Width="120px" />
                                        
                                        <asp:ImageButton ID="ImageButton1" CommandName="SendMSG" runat="server" Height="20px" Width="32px" style="float:right"  ImageUrl="~/images/email.png"/></td>
                                        
                                        </tr>
                                </table>
                            </div>
                            
                        </div>
                    </ItemTemplate>
                    <LayoutTemplate>
                        <ul id="itemPlaceholderContainer" runat="server" style="">
                            <li id="itemPlaceholder" runat="server" />
                        </ul>
                        <div style="">
                        </div>
                    </LayoutTemplate>
                    <EmptyDataTemplate>
                        <table class="SearchProfileTable" border="0" cellspacing="0" cellpadding="0">
                            <tr>
                                <td width="90">
                                   No Intrest Request
                                </td>
                                <td width="19">
                                    :
                                </td>
                                <td width="208">
                                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("Member_Name") %>' />
                                </td>
                            </tr>
                        </table>
                    </EmptyDataTemplate>
                   
               </asp:ListView>
            </div>  
                 <asp:HiddenField ID="HiddenField1" runat="server" />   
                 <style>
              
.modalBackground {
    background-color:Gray;filter:alpha(opacity=70);opacity:0.7;
} 
} 
</style>
<style type="text/css">
#overlay {
position: fixed;
top: 0;
left: 0;
width: 100%;
height: 100%;
background-color: #000;
filter:alpha(opacity=70);
-moz-opacity:0.7;
-khtml-opacity: 0.7;
opacity: 0.7;
z-index: 100;
display: none;
}
.content a{
text-decoration: none;
}
.popup{
width: 100%;
margin: 0 auto;
display: none;
position: fixed;
z-index: 101;
}
.content{
min-width: 570px;
width: 570px;
height:252px;
min-height: 252px;
margin: 100px auto;
background: #f3f3f3;
position: relative;
z-index: 103;
padding: 10px;
border-radius: 5px;
box-shadow: 0 2px 5px #000;
}
.content p{
clear: both;
color: #555555;
text-align: justify;
}
.content p a{
color: #d91900;
font-weight: bold;
}
.content .x{
float: right;
height: 35px;
left: 22px;
position: relative;
top: -25px;
width: 34px;
}
.content .x:hover{
cursor: pointer;
}
</style>
 <asp:Panel ID="pnlExpress" CssClass="content" runat="server">

   
   
<div class=''>
<a href='' class='close'><img src="../images/x.png" id='imgClose' alt='quit' class='x ' id='Img1' /></a>
<style>
.tblContent
{
    padding:20px;
    padding-left:40px;
    color:#7E8085;
    font-family:Agency FB;
    font-size:20px;
    width=100%
}
</style>
 <div style="float:right; padding-top:50px;padding-left:15px">
 <div style="padding:15px;">Upgrade Your Membership<br /></div>
 <center> <img src="../images/upgradeButton.png" height="50px" width="150px" align="middle" /></center>

      
    </div>
 
<div style="background-image:url('../images/LoginBG.png');background-repeat: no-repeat; height='250px'; width='475px' "  >
    <table class="tblContent" >
    
    <tr><td align="center"><asp:Image ID="Image1" runat="server" Width="146px"  Height="153px" /></td>
    <td><div ><table><tr>
       
            <td class="ColumnHeader" style="width:100%">User Id:</td >
       <td  class="Column"><asp:Label ID="lblMembetId" runat="server" Text="" class="Column"></asp:Label></td>
       </tr>
       <tr><td class="ColumnHeader" style="width=:100%"> Req. Status:</td>
           <td class="Column" ><asp:Label ID="lblStatus" runat="server" class="Column" Text=""></asp:Label></td>
        </tr>
       
       </table></div>
       
           <b>
            </b>
      
   
    </td>
    
    </tr>
  
     
 
  
    <tr><td style="font-family:Aparajita;color:Maroon;font-size:20px;" ><asp:Label ID="lblMemberName" runat="server" Text="Label"></asp:Label><a href=""></a></td></tr>
    <tr><td  > 
   

    <asp:Button ID="btnExpressIntrest" runat="server" Text="Send" class="btnLogin" 
                 style="" onclick="btnExpressIntrest_Click"/></td><td><asp:Button ID="btnCancle" runat="server" Text="Cancle" class="btnLogin" 
                 style="padding-right:20px;float:left;"/></td></tr>
    </table>
   
    </div>
    



<a href='' class='close'>Close</a>
    
  
    <p>
    </p>

    <p>
    </p>


</div>
           
             </asp:Panel>
             
    <asp:ModalPopupExtender ID="ModalPopupExtender1" runat="server" PopupControlID="pnlExpress" BackgroundCssClass="modalBackground" TargetControlID="HiddenField1"  >
    </asp:ModalPopupExtender>
              
    <asp:ModalPopupExtender ID="ModalPopupExtender2" runat="server" PopupControlID="pnlMSG" BackgroundCssClass="modalBackground" TargetControlID="HiddenField1"  >
    </asp:ModalPopupExtender>
      <asp:ModalPopupExtender ID="ModalPopupExtender3" runat="server" PopupControlID="pnlAddtoFav" BackgroundCssClass="modalBackground" TargetControlID="HiddenField1"  >
    </asp:ModalPopupExtender>
 <asp:Panel ID="pnlMSG" CssClass="content" runat="server">

   
   
<div class=''>
<a href='' class='close'><img src="../images/x.png" id='img1' alt='quit' class='x ' id='Img1' /></a>
<style>
.tblContent
{
    padding:20px;
    padding-left:40px;
    color:#7E8085;
    font-family:Agency FB;
    font-size:20px;
    width=100%
}
</style>
<center>
 <div style=" padding-top:50px;padding-left:15px">
 <div style="padding:15px;">Upgrade Your Membership To Send Message<br /></div>
 <a href="UpdateMembership.aspx" > <img src="../images/upgradeButton.png" height="50px" width="150px" align="middle" /></a></center>

      
    </div>
 
<div style="background-image:url('');background-repeat: no-repeat; height='250px'; width='475px' "  >
<br />
   <center> <button value="Close" type="button" class="btn close" id="btnCancle1">Close</button></center>
   
    </div>



           
</asp:Panel>
     

     <asp:Panel ID="pnlAddtoFav" CssClass="content" runat="server">

   
   
<div class=''>
<a href='' class='close'><img src="../images/x.png" id='img2' alt='quit' class='x ' id='Img1' /></a>
<style>
.tblContent
{
    padding:20px;
    padding-left:40px;
    color:#7E8085;
    font-family:Agency FB;
    font-size:20px;
    
}
</style>
 <div style="float:right; padding-top:50px;padding-left:15px">
 <div style="padding:15px;">Upgrade Your Membership<br /></div>
 <center> <img src="../images/upgradeButton.png" height="50px" width="150px" align="middle" /></center>

      
    </div>
 
<div style="background-image:url('../images/LoginBG.png');background-repeat: no-repeat; height='250px'; width='475px' "  >
    <table class="tblContent" >
    
    <tr><td align="center"><asp:Image ID="Image3" runat="server" Width="146px"  Height="153px" /></td>
    <td><div ><table><tr>
       
            <td class="ColumnHeader" style="width:100%">User Id:</td >
       <td  class="Column"><asp:Label ID="lblFavuserid" runat="server" Text="" class="Column"></asp:Label></td>
       </tr>
       <tr><td class="ColumnHeader" style="width=:100%"> Req. Status:</td>
           <td class="Column" ><asp:Label ID="lblFavStatus" runat="server" class="Column" Text=""></asp:Label></td>
        </tr>
       
       </table></div>
       
           <b>
            </b>
      
   
    </td>
    
    </tr>
  
     
 
  
    <tr><td style="font-family:Aparajita;color:Maroon;font-size:20px;" ><asp:Label ID="lblFavName" runat="server" Text="Label"></asp:Label><a href=""></a></td></tr>
    <tr><td  > 
   

    <asp:Button ID="btnAddtoFav" runat="server" Text="Add" class="btnLogin" 
                 style="" onclick="btnAddtoFav_Click" /></td><td><asp:Button ID="btnCancleFav" runat="server" Text="Cancle" class="btnLogin" 
                 style="padding-right:20px;float:left;"/></td></tr>
    </table>
   
    </div>
    



<a href='' class='close'>Close</a>
    
  
    <p>
    </p>

    <p>
    </p>


</div>
           
             </asp:Panel>

</asp:Content>

