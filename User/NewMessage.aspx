<%@ Page Title="" Language="C#" MasterPageFile="~/User/MasterPage.master" AutoEventWireup="true" CodeFile="NewMessage.aspx.cs" Inherits="User_NewMessage" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit.HTMLEditor"
    TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="sidebar1" >
       
    <div class="sidebarheading">
       
    
    
        Create New Message



   </div>
   <table>
   <tr><td>To</td><td>
       <asp:TextBox ID="txtTo" runat="server" class="textbox"></asp:TextBox></td></tr>
   <tr><td>Subject</td><td><asp:TextBox ID="txtSubject" runat="server" class="textbox" Width="450px"></asp:TextBox></td></tr>
   <tr><td colspan=3 ><cc1:Editor ID="Editor1"
           runat="server"  /> </td></tr>
           <tr><td colspan=5>
           <asp:Button ID="btnSend" runat="server" Text="Send"  class="btnLogin Black" 
                   onclick="btnSend_Click"/>
           <asp:Button ID="btnCancle" runat="server" Text="Cancle"  class="btnLogin Black" 
                   onclick="btnCancle_Click"/>
               <asp:Button ID="btnSave" runat="server" Text="Save" class="btnLogin Black" />
           </td></tr>
   </table>
   </div>
</asp:Content>

