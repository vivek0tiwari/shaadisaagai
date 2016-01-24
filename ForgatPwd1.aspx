<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ForgatPwd1.aspx.cs" Inherits="ForgatPwd1" %>

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
                   <h5>Enter Email Address       </td>
                <td>
                    <asp:TextBox ID="txtEmail1" runat="server" class="textbox"></asp:TextBox></td>
           
           
                <td>
                   <asp:Button ID="btnGetPassword" runat="server" Text="Submit" class="btnLogin" 
                        onclick="btnGetPassword_Click" /></td>
                
            </tr>
            <tr>
                <td>
                    <h5></h5></td>
                
                <td>
                    <asp:Label ID="lblError" runat="server" Text="" ForeColor="Red"></asp:Label>
                </td>
                
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    

                  </td>
                
            </tr>
        </table>
   </div>
    
         
              
               <br />
              
   </div>
</asp:Content>

