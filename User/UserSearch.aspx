<%@ Page Title="" Language="C#" MasterPageFile="~/User/MasterPage.master" AutoEventWireup="true" CodeFile="UserSearch.aspx.cs" Inherits="User_UserSearch" EnableEventValidation="false" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<%@ Register Src="~/User_Control/Message.ascx" TagName="Message" TagPrefix="uc" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script src="../App_Themes/Default/js/jquery-1.9.1.min.js" type="text/javascript"></script>
    <script src="../App_Themes/Default/js/jquery.ui.effect.js" type="text/javascript"></script>
   
    <link href="../App_Themes/Default/css/layout.css" rel="stylesheet" type="text/css" />
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

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
<uc:Message ID="ucMessage" runat="server" />

<div class='popup'>
   
   
<div class='content'>
<a href='' class='close'><img src="images/x.png" alt='quit' class='x ' id='x' /></a>
<style>
.tblContent
{
    padding:10px;
    color:#7E8085;
    font-family:Agency FB;
    font-size:20px;
}
</style>
 <div style="float:right;">
 <div style="padding:15px;"><h3>Upgrade Membership</h3></div>
  <img src="../images/upgradeButton.png" />

      
    </div>
 
<div style="background-image:url('../images/LoginBG.png');background-repeat: no-repeat; height='250px'; width='475px' "  >
    <table class="tblContent" >
    <tr><td colspan=2 align="center" ><img src="../images/LoginWithFB.png" /></td></tr>
    <tr><td>Email</td></tr>
    <tr><td>
    <asp:TextBox ID="txtEmail" runat="server" Class="textbox"></asp:TextBox></td></tr>
      <tr><td>Password</td></tr>
    <tr><td>
    <asp:TextBox ID="txtPassword" runat="server" Class="textbox"  TextMode="Password"></asp:TextBox></td></tr>
    <tr><td style="font-family:Aparajita;color:Maroon;font-size:13px;" ><a href="">Forgot password?</a></td></tr>
    <tr><td colspan=2 > 
   

    <asp:Button ID="Button2" runat="server" Text="Login" class="btnLogin" 
                 OnClientClick="" style="float:right;" 
            onclick="Button2_Click"  /></td></tr>
    </table>
   
    </div>
    
</div>


<a href='' class='close'>Close</a>
    
        
  
    
    <p>
    </p>

    <p>
    </p>


</div>   
<div class="sidebar1" >
       
    <div class="sidebarheading">
       
    Search
    




   </div>
   <div class="image_frame_964" style=" Width:720px; padding:10px 15px 15px 15px; margin:0px 0 15px 10px;margin-top:-38px" >
   <br />
  <table style="width: 100%;">
            <tr>
               
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
               
                <td>
                   <h5>&nbsp;</td>
                <td>
                    &nbsp;</td>
           
           
                <td>
                    
                    <h5>Age</h5></td>
                <td>
                    <asp:DropDownList ID="ddlAgeFrom" runat="server"  Width ="55px" 
                        ViewStateMode="Enabled">
                  <asp:ListItem>
19
</asp:ListItem>
<asp:ListItem>
20
</asp:ListItem>
<asp:ListItem>
21
</asp:ListItem>
<asp:ListItem>
22
</asp:ListItem>
<asp:ListItem>
23
</asp:ListItem>
<asp:ListItem>
24
</asp:ListItem>
<asp:ListItem>
25
</asp:ListItem>
<asp:ListItem>
26
</asp:ListItem>
<asp:ListItem>
27
</asp:ListItem>
<asp:ListItem>
28
</asp:ListItem>
<asp:ListItem>
29
</asp:ListItem>
<asp:ListItem>
30
</asp:ListItem>
<asp:ListItem>
31
</asp:ListItem>
<asp:ListItem>
32
</asp:ListItem>
<asp:ListItem>
33
</asp:ListItem>
<asp:ListItem>
34
</asp:ListItem>
<asp:ListItem>
35
</asp:ListItem>
<asp:ListItem>
36
</asp:ListItem>
<asp:ListItem>
37
</asp:ListItem>
<asp:ListItem>
38
</asp:ListItem>
<asp:ListItem>
39
</asp:ListItem>
<asp:ListItem>
40
</asp:ListItem>
<asp:ListItem>
41
</asp:ListItem>
<asp:ListItem>
42
</asp:ListItem>
<asp:ListItem>
43
</asp:ListItem>
<asp:ListItem>
44
</asp:ListItem>
<asp:ListItem>
45
</asp:ListItem>
<asp:ListItem>
46
</asp:ListItem>
<asp:ListItem>
47
</asp:ListItem>
<asp:ListItem>
48
</asp:ListItem>
<asp:ListItem>
49
</asp:ListItem>
<asp:ListItem>
50
</asp:ListItem>
<asp:ListItem>
51
</asp:ListItem>
<asp:ListItem>
52
</asp:ListItem>
<asp:ListItem>
53
</asp:ListItem>
<asp:ListItem>
54
</asp:ListItem>
<asp:ListItem>
55
</asp:ListItem>
<asp:ListItem>
56
</asp:ListItem>
<asp:ListItem>
57
</asp:ListItem>
<asp:ListItem>
58
</asp:ListItem>
<asp:ListItem>
59
</asp:ListItem>
<asp:ListItem>
60
</asp:ListItem>
<asp:ListItem>
61
</asp:ListItem>
<asp:ListItem>
62
</asp:ListItem>
<asp:ListItem>
63
</asp:ListItem>
<asp:ListItem>
64
</asp:ListItem>



                    </asp:DropDownList> &nbsp; To &nbsp;<asp:DropDownList ID="ddlAgeTo" runat="server" Width ="60px">
                    <asp:ListItem>
19
</asp:ListItem>
<asp:ListItem>
20
</asp:ListItem>
<asp:ListItem>
21
</asp:ListItem>
<asp:ListItem>
22
</asp:ListItem>
<asp:ListItem>
23
</asp:ListItem>
<asp:ListItem>
24
</asp:ListItem>
<asp:ListItem>
25
</asp:ListItem>
<asp:ListItem>
26
</asp:ListItem>
<asp:ListItem>
27
</asp:ListItem>
<asp:ListItem Selected="True">
28
</asp:ListItem>
<asp:ListItem>
29
</asp:ListItem>
<asp:ListItem>
30
</asp:ListItem>
<asp:ListItem>
31
</asp:ListItem>
<asp:ListItem>
32
</asp:ListItem>
<asp:ListItem>
33
</asp:ListItem>
<asp:ListItem>
34
</asp:ListItem>
<asp:ListItem>
35
</asp:ListItem>
<asp:ListItem>
36
</asp:ListItem>
<asp:ListItem>
37
</asp:ListItem>
<asp:ListItem>
38
</asp:ListItem>
<asp:ListItem>
39
</asp:ListItem>
<asp:ListItem>
40
</asp:ListItem>
<asp:ListItem>
41
</asp:ListItem>
<asp:ListItem>
42
</asp:ListItem>
<asp:ListItem>
43
</asp:ListItem>
<asp:ListItem>
44
</asp:ListItem>
<asp:ListItem>
45
</asp:ListItem>
<asp:ListItem>
46
</asp:ListItem>
<asp:ListItem>
47
</asp:ListItem>
<asp:ListItem>
48
</asp:ListItem>
<asp:ListItem>
49
</asp:ListItem>
<asp:ListItem>
50
</asp:ListItem>
<asp:ListItem>
51
</asp:ListItem>
<asp:ListItem>
52
</asp:ListItem>
<asp:ListItem>
53
</asp:ListItem>
<asp:ListItem>
54
</asp:ListItem>
<asp:ListItem>
55
</asp:ListItem>
<asp:ListItem>
56
</asp:ListItem>
<asp:ListItem>
57
</asp:ListItem>
<asp:ListItem>
58
</asp:ListItem>
<asp:ListItem>
59
</asp:ListItem>
<asp:ListItem>
60
</asp:ListItem>
<asp:ListItem>
61
</asp:ListItem>
<asp:ListItem>
62
</asp:ListItem>
<asp:ListItem>
63
</asp:ListItem>
<asp:ListItem>
64
</asp:ListItem>

                    </asp:DropDownList>
                </td>
                
            </tr>
            <tr>
                <td>
                    <h5>Religion</h5>
                </td>
                <td>
                    <asp:DropDownList ID="ddlReligion" runat="server" class="txt_field" onchange="SendRequest(this.value);" > 
                        
                    </asp:DropDownList>
                </td>
                
          
                <td>
                    <h5>Cast</h5></td>
                <td>
                <div id="ddlCastDiv" style="width:100px;" >
                 <asp:DropDownList ID="ddlCast" runat="server" class="txt_field" Width="150px" > 
                        
                    </asp:DropDownList>
               
                </div>
                    
                
            </tr>
            <tr>
                <td>
                    <h5>Mother Tongue</h5></td>
                <td>
                    <asp:DropDownList ID="ddlMotherTougue" runat="server" class="txt_field" Width="150px">
                    </asp:DropDownList>
                    </td>
                
            
                <td>
                    <h5>Country</h5></td>
                <td>
                    <asp:DropDownList ID="ddlCountry" runat="server" Width="150px">
                        <asp:ListItem>Select</asp:ListItem>
                        <asp:ListItem>India</asp:ListItem>
                        <asp:ListItem>Other</asp:ListItem>
                    </asp:DropDownList>
                    </td>
                
            </tr>
            <tr>
                <td>
                    <h5></h5></td>
                <td>
                    &nbsp;</td>
                
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Search" class="btnLogin" 
                        onclick="Button1_Click" />

                  </td>
                
            </tr>
        </table>
   </div>
 
  <script type="text/javascript">
     function startTimer() {
          var Timer = window.setTimeout(hideDiv, 10000);  // 10 seconds
     }

     function hideDiv() {
          document.getElementById('pnlConfirmation').visible = 'false';
     }
     </script>
  <asp:Panel ID="pnlConfirmation" runat="server" Visible="false">
  <div class="content1" >
  <img src="../images/Yes.png" height="75px" width="75px" />
      <asp:Label ID="lblConfirmation" runat="server" Text="" style="padding-bottom:20px;"></asp:Label>
  </div>
  
  </asp:Panel>
       
         
     <asp:ListView ID="ListView1" runat="server" DataKeyNames="Member_Id" 
                 onitemcommand="ListView1_ItemCommand" >
                
             
             
             
                   
                   
                   
                   <EmptyDataTemplate>
                       <span>No data was returned.</span>
                   </EmptyDataTemplate>
                   
                   
                <ItemTemplate>
                        <div class="MainPhotoContainer">
                      
                            <div class="PhotouserId">
                                <asp:LinkButton ID="lbtnUserId" CssClass="LinkUserId" runat="server" CommandName="ViewFullProfile"
                                    Text='<%# Eval("Member_Id") %>' />
                            </div>
                            <div class="PhotoMenubar">
                                <div class="PhotoSingleMenu">
                                <img src="../images/ExpressIntrest.png" height="16px" width="16px" />
                                       <asp:LinkButton ID="lbtnExpressIntrest" runat="server" CommandName="ExpressInterest"  >Express Intrests</asp:LinkButton>
                                     
                                </div>
                                <div class="PhotoSingleMenu">
                                    <img src="../images/add_favorite_icon.png" />
                                    <asp:LinkButton ID="btnAddToFsvourite" runat="server" CommandName="AddToFavourite">Add To Favourite</asp:LinkButton></strong></span>
                                </div>
                                <div class="PhotoSingleMenu" style="width:auto">
                                <img src="../images/profile_detail.png" height="18px" width="18px" />
                                    <a href="../ViewFullProfile.aspx?ProfileID=<%# Eval("Member_Id") %>" target="_blank">View Full Profile</a>
                                   
                                   
                                     
                                </div>
                                 
                            </div>
                            

                            <div class="PhotoLeftBox">
                                <div class="Photo">
                                  <asp:Label ID="lblPhotoStatus" runat="server" Visible="false" Text='<%# Eval("Member_Name") %>' />
                                    <asp:Label ID="PhotoAlbumId" runat="server" Visible="false" Text='<%# Eval("Member_Name") %>' />
                                    <asp:Label ID="lblPhotoUrl" runat="server" Visible="false" Text='<%# Eval("Member_Name") %>' />
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
                                            <asp:Label ID="Label19" runat="server" Text='<%# Eval("Ft_Cm") %>' />
                                        </td>
                                        <td class="ColumnHeader">
                                            Occupation :
                                        </td>
                                        <td class="Column">
                                            <asp:Label ID="Label15" runat="server" Text='<%# Eval("Profession") %>' />
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
                                            Education :
                                        </td>
                                        <td colspan="3" class="ColumnX">
                                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("Education") %>' />
                                        </td>
                                    </tr>
                                </table>
                            </div>
                            <div class="photoAboutMe">
                                <div class="ColumnHeader">
                                    AboutMyself:</div>
                                <div class="AboutMySelf">
                                    
                                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("About_Me")%>'></asp:Label>
                                    <a href="../ViewFullProfile.aspx?ProfileID=<%# Eval("Member_Id") %>" >View Profile</a>
                                                                    </div>
                                
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
                                    No Result Found
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
              
               <br />   
               <style>
              
.modalBackground {
    background-color:Gray;filter:alpha(opacity=70);opacity:0.7;
} 
} 
</style>
    <asp:HiddenField ID="HiddenField1" runat="server" />   
             
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
 
             <asp:Panel ID="pnlAddtoFav" CssClass="content" runat="server">

   
   
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
    <asp:ModalPopupExtender ID="ModalPopupExtender1" runat="server" PopupControlID="pnlExpress" BackgroundCssClass="modalBackground" TargetControlID="HiddenField1"  >
    </asp:ModalPopupExtender>
      <asp:ModalPopupExtender ID="ModalPopupExtender2" runat="server" PopupControlID="pnlAddtoFav" BackgroundCssClass="modalBackground" TargetControlID="HiddenField1"  >
    </asp:ModalPopupExtender>
   </div>
</asp:Content>

