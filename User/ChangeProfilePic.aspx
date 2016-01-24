<%@ Page Title="" Language="C#" MasterPageFile="~/User/MasterPage.master" AutoEventWireup="true" CodeFile="ChangeProfilePic.aspx.cs" Inherits="User_ChangeProfilePic" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="sidebar1" >
    <div class="sidebarheading">
      
    Update Profile Photo</div>
    <div class="slidebarcontent content">
    
    
   
    <br />
               <div align="center"><p>Your  Current Profile Picture</p> <asp:Image ID="imgProfileImage" runat="server" Height="152px" Width="140px"  class="profileImage"/>
                   <br />
                   <asp:Button ID="btnReset" runat="server" Text="Reset My Profile Pic To Default" 
                       CssClass="btnLogin Blacktext" onclick="btnReset_Click" />
               </div> 
        
    
   
          
        
        <div><br />
        <div>
             <img src="../images/devideline.gif" width="700px" />
        <br />
           <h5 style="padding-top:5px;padding-bottom:-2px;" ><center>Choose Your Profile  Photo Form Album</center></h5>
            <img src="../images/devideline.gif" width="700px" />
            </div><br />
        <asp:DataList ID="dlQLImages" runat="server" RepeatDirection="Horizontal" 
                RepeatColumns="3" onitemcommand="dlQLImages_ItemCommand">  
            <FooterStyle HorizontalAlign="Left" VerticalAlign="Bottom" />
            <FooterTemplate>
              
            </FooterTemplate>
    <ItemTemplate>  
    
				
      <a class="group3" href='<%# string.Format("../ProfileImages/{0}",Eval("FilePath") ) %>' rel="prettyPhoto[gallery2]" >
      <img id="Img1" src='<%# string.Format("~/ProfileImages/{0}",Eval("FilePath") ) %>'   height="170" width="200" runat="server" />  
       </a>
       <asp:Label ID="lblFileName" runat="server" Text='<%# Eval("FilePath") %>' 
            Visible="False"></asp:Label>
      <br /> 
        
       
      <asp:Button ID="Button1" runat="server" Text="Set Profile Picture" 
            CommandArgument='<%# Eval("FilePath") %>' CommandName="SetProfilePic" CssClass="classname" style="float :right;" />
       
        

         
    </ItemTemplate>  
</asp:DataList>

        </div>
         </div>  
          
    </div>
   <div class="cleaner" id="Photosettings" ></div>
    <div class="sidebarheading">
      
   Change Photo Privacy</div>
    <div class="slidebarcontent content">
    
    
   
    <br />
              <p>
               
                   <asp:RadioButtonList ID="rblSetting" runat="server">
                       <asp:ListItem Value="0">Set My All Photos To Private</asp:ListItem>
                       <asp:ListItem Value="1">Share My Profile  Photo Only To Other Members</asp:ListItem>
                       <asp:ListItem Value="3">Share/Show My All Photos To Every User</asp:ListItem>
                   </asp:RadioButtonList>
               </p>
                
                   <br />
                   <asp:Button ID="btnChange_Setting" runat="server" Text="Apply Settings" 
                       CssClass="btnLogin Blacktext" 
            onclick="btnChange_Setting_Click"  />
               </div> 
        
    
   
          
        
        <div><br />
        <br />
        

        </div>
  
          
   
  
</asp:Content>

