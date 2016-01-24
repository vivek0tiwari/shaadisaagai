<%@ Page Language="C#" AutoEventWireup="true" CodeFile="tmp.aspx.cs" Inherits="tmp" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<%@ Register assembly="CuteWebUI.AjaxUploader" namespace="CuteWebUI" tagprefix="cc1" %>
<%@ Register Src="~/User_Control/Message.ascx" TagName="Message" TagPrefix="uc" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Using AJAX Control Toolkit for Modal Popup in ASP.NET 3.5 and C#</title>
 <script src="App_Themes/Default/js/jquery-1.9.1.min.js"></script>
    <script src="App_Themes/Default/js/jquery.ui.effect.js"></script>
    <link href="App_Themes/Default/css/01.reset.css" rel="stylesheet" type="text/css" />
    <link href="App_Themes/Default/css/layout.css" rel="stylesheet" type="text/css" />
    <link href="App_Themes/Default/css/02.text.css" rel="stylesheet" type="text/css" />
    <link href="App_Themes/Default/css/03.960_24_col.css" rel="stylesheet" type="text/css" />
</head>

<body>
<form id="form1" runat="server">
<asp:ScriptManager ID="ScriptManager1" runat="server">
</asp:ScriptManager>
<uc:Message ID="ucMessage" runat="server" />

<asp:Button ID="Button1" runat="server" Text="Button" 
    onclick="Button1_Click1" />
</form>
    
</body>
</html>



    
