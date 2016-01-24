<%@ Page Title="" Language="C#" MasterPageFile="~/User/MasterPage.master" AutoEventWireup="true" CodeFile="ViewMessage.aspx.cs" Inherits="User_ViewMessage" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit.HTMLEditor"
    TagPrefix="cc1" %>
    <%@ Register Src="~/User_Control/Message.ascx" TagName="Message" TagPrefix="uc" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="sidebar1" >
       
    <div class="sidebarheading">
       
    
        <asp:Label ID="lblSubject" runat="server" Text=""></asp:Label>
        

        <a href="Inbox.aspx" style="float:right;">Back</a>

   </div>
   <table>
   <tr><td>
       <asp:Label ID="lblDynamic" runat="server" Text="From"></asp:Label></td><td>
       <asp:TextBox ID="txtTo" runat="server" class="textbox" Enabled="False"></asp:TextBox></td></tr>
   <tr><td>Subject</td><td><asp:TextBox ID="txtSubject" runat="server" class="textbox" 
           Width="450px" Enabled="False"></asp:TextBox></td></tr>
   <tr><td colspan=3 >
       <cc1:Editor ID="Editor1"
           runat="server" Enabled="False" ActiveMode="Preview" AutoFocus="False"  /> </td></tr>
           <tr><td colspan=5>
           <asp:Button ID="btnDelete" runat="server" Text="Delete"  class="btnLogin Black" 
                   />
           <asp:Button ID="btnForword" runat="server" Text="Forword"  class="btnLogin Black" onclick="btnForword_Click" 
                   />
               <asp:Button ID="btnReply" runat="server" Text="Reply" class="btnLogin Black" 
                   onclick="btnReply_Click" />
           </td></tr>
   </table>
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
    <asp:ModalPopupExtender ID="ModalPopupExtender2" runat="server" PopupControlID="pnlMSG" BackgroundCssClass="modalBackground" TargetControlID="HiddenField1"  >
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
</asp:Content>

