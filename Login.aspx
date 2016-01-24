<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div class="sidebar1" >
         
    <div class="sidebarheading">
       
    Forgot Password
    




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
                   <h5>Email&nbsp;       </td>
                <td>
                    <asp:TextBox ID="txtUid" runat="server" class="textbox"></asp:TextBox></td>
           
           
                <td>
                    &nbsp;</td>
                
            </tr>
            <tr>
                <td>
                    <h5>Password</h5></td>
                
                <td>
                    <asp:TextBox ID="txtPwd" runat="server" class="textbox"></asp:TextBox>
                </td>
                
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    

                    <asp:Label ID="lblError" runat="server" Text="" ForeColor="Red"></asp:Label>
                    

                  </td>
                
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    

                   <asp:Button ID="btnlogin" runat="server" Text="Login" style="float :none" 
                        class="btnLogin" onclick="btnlogin_Click" 
                         />
                    <asp:Button ID="btnCancle" runat="server" Text="Cancle" style="float :none" 
                        class="btnLogin" onclick="btnCancle_Click" 
                         />
                  </td>
               
                
            </tr>
        </table>
   </div>
    
         
              
               <br />
              
   </div>

</asp:Content>

