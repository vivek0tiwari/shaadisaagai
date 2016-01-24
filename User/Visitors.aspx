<%@ Page Title="" Language="C#" MasterPageFile="~/User/MasterPage.master" AutoEventWireup="true" CodeFile="Visitors.aspx.cs" Inherits="User_Visitors" %>

<%@ Register assembly="CuteWebUI.AjaxUploader" namespace="CuteWebUI" tagprefix="cc1" %>







<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
    
    
        <cc1:Uploader ID="Uploader1" runat="server">
        </cc1:Uploader>
    
    
    </ContentTemplate>
    </asp:UpdatePanel>
  
</asp:Content>

