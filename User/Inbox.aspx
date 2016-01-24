<%@ Page Title="" Language="C#" MasterPageFile="~/User/MasterPage.master" AutoEventWireup="true" CodeFile="Inbox.aspx.cs" Inherits="User_Inbox" %>
<%@ Register Src="~/User_Control/Message.ascx" TagName="Message" TagPrefix="uc" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>

table, caption, tbody, tfoot, thead, tr, th, td {
	background: transparent;
	border: 0;
	margin: 0;
	padding: 0;
	vertical-align: baseline;
}
div#mail { width:70%; margin:20px auto; }
.mailinbox tbody tr td { background: #fafafa; }
.mailinbox tbody tr.unread td { background: #fff; font-weight: bold; }
.mailinbox tbody tr.selected td { background:#FFFFD2; }
.mailinbox thead th, .mailinbox tfoot th { border: 1px solid #ccc; border-right: 0; }
.mailinbox tfoot th { border-bottom: 1px solid #ccc !important; }
.mailinbox a.title { font-weight: normal; text-decoration:none; }
.mailinbox tbody tr.unread a.title { font-weight: bold; }
.mailinbox td.star, .mailinbox td.attachment { text-align: center; }
.msgstar { 
	display: inline-block; width: 16px; height: 16px; background: url(../images/unstar.png) no-repeat 0 0; 
	cursor: pointer; opacity: 0.5; 
}
.msgstar:hover { opacity: 1; }
.starred { background-image: url(../images/star.png); opacity: 1; }



.table-bordered caption + thead tr:first-child th:first-child, .table-bordered caption + tbody tr:first-child td:first-child, .table-bordered colgroup + thead tr:first-child th:first-child, .table-bordered colgroup + tbody tr:first-child td:first-child { border-top-left-radius: 0; }

.table-bordered caption + thead tr:first-child th:last-child, .table-bordered caption + tbody tr:first-child td:last-child, .table-bordered colgroup + thead tr:first-child th:last-child, .table-bordered colgroup + tbody tr:first-child td:last-child { border-top-right-radius: 0; }

.table-bordered thead:first-child tr:first-child th:first-child, 
.table-bordered tbody:first-child tr:first-child td:first-child,
.table-bordered thead:first-child tr:first-child th:last-child, 
.table-bordered tbody:first-child tr:first-child td:last-child,
.table-bordered thead:last-child tr:last-child th:first-child, 
.table-bordered tbody:last-child tr:last-child td:first-child, 
.table-bordered tfoot:last-child tr:last-child td:first-child { -moz-border-radius: 0; -webkit-border-radius: 0; border-radius: 0; }


.table { margin-bottom: 0; width:100%; font-size:14px }
.table th { background: #fcfcfc; }
.table tfoot th { border-bottom: 1px solid #ddd; }
.table th.aligncenter, .table td.aligncenter { text-align: center; }
.table tr { padding:5px; height:28px}
table td.center, table th.center { text-align: center; }

.clearall { clear: both; }

.mailinbox thead th, .mailinbox tfoot th {
	background: rgb(237,237,237);
	background: -moz-linear-gradient(top, rgba(237,237,237,1) 0%, rgba(222,222,222,1) 100%);
	background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,rgba(237,237,237,1)), color-stop(100%,rgba(222,222,222,1)));
	background: -webkit-linear-gradient(top, rgba(237,237,237,1) 0%,rgba(222,222,222,1) 100%);
	background: -o-linear-gradient(top, rgba(237,237,237,1) 0%,rgba(222,222,222,1) 100%);
	background: -ms-linear-gradient(top, rgba(237,237,237,1) 0%,rgba(222,222,222,1) 100%);
	background: linear-gradient(to bottom, rgba(237,237,237,1) 0%,rgba(222,222,222,1) 100%);
	filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#ededed', endColorstr='#dedede',GradientType=0 );
}

</style>
<script type="text/javascript">
    jQuery(document).ready(function () {
        // check all checkboxes in table
        if (jQuery('.checkall').length > 0) {
            jQuery('.checkall').click(function () {
                var parentTable = jQuery(this).parents('table');
                var ch = parentTable.find('.checkbox');
                if (jQuery(this).is(':checked')) {

                    //check all rows in table
                    ch.each(function () {
                        jQuery(this).attr('checked', true);
                        jQuery(this).parent().addClass('checked'); //used for the custom checkbox style
                        jQuery(this).parents('tr').addClass('selected'); // to highlight row as selected
                    });

                } else {

                    //uncheck all rows in table
                    ch.each(function () {
                        jQuery(this).attr('checked', false);
                        jQuery(this).parent().removeClass('checked'); //used for the custom checkbox style
                        jQuery(this).parents('tr').removeClass('selected');
                    });

                }
            });
        }


        if (jQuery('.mailinbox').length > 0) {

            // star
            jQuery('.msgstar').click(function () {
                if (jQuery(this).hasClass('starred'))
                    jQuery(this).removeClass('starred');
                else
                    jQuery(this).addClass('starred');
            });

            //add class selected to table row when checked
            jQuery('.mailinbox tbody input:checkbox').click(function () {
                if (jQuery(this).is(':checked'))
                    jQuery(this).parents('tr').addClass('selected');
                else
                    jQuery(this).parents('tr').removeClass('selected');
            });

        }
    });



          

        

</script>
    <link href="../css/css3-gmail-style.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="sidebar1" >
    <div class="sidebarheading">
      
   <asp:Label ID="lblTitle" runat="server" Text=""></asp:Label></div><div class="slidebarcontent content">
    
    <ul class="grouped">
                            <li style="margin-right:20px;"> 
                                <asp:Button class="bttn red" ID="btnNew" runat="server"
                                Text="New Message" onclick="btnNew_Click" /></li>
                            <li><a href="#" class="bttn icon refresh">Refresh</a></li>
                          
                            <li> 
                                <asp:Button class="bttn icon delete" ID="btnDelete" runat="server"
                                Text="Delete" onclick="btnDelete_Click" /></a></li>
                            
                            </ul>
      <table class="table table-bordered mailinbox" style="border-collapse:collapse; margin-top:10px;" border="0" cellpadding="5" cellspacing="3">

    <thead>
                            <tr>
                                <th class="head1 aligncenter">
                                    <asp:CheckBox ID="chkAll" runat="server" class="checkall" AutoPostBack="True" 
                                        oncheckedchanged="chkAll_CheckedChanged" /></th>
                                <th class="head0">&nbsp;</th>
                                <th class="head1"> <asp:Label ID="lblHeader" runat="server" Text=""></asp:Label></th>
                                <th class="head0">Subject</th>
                                <th class="head1 attachement">&nbsp;</th>
                                <th class="head0">Date</th>
                            </tr>
                            </thead>
                            </table>
    <asp:ListView ID="ListView1" runat="server" DataKeyNames="Member_Id" 
                 onitemcommand="ListView1_ItemCommand" onitemdatabound="ListView1_ItemDataBound">
                 
                   <EmptyDataTemplate>
                       <span>No data was returned.</span>
                   </EmptyDataTemplate>
                   
                   
                <ItemTemplate>
                
                        <table class="table table-bordered mailinbox" style="border-collapse:collapse; margin-top:10px;" border="0" cellpadding="5" cellspacing="3">

                            
                            <tbody>
                                <tr class="">
                                   <td class=""> 
                                       
                                       <asp:CheckBox ID="ckeckboxSelect" runat="server" class="checkbox" />
                                   <asp:Label ID="lblMSgid" runat="server" Text='<%# Eval("ID") %>' Visible=false></asp:Label></td>
                                    
                                    <td>
                                   <a href="ViewMessage.aspx?mid=<%# Eval("ID") %>" class="title">  <asp:Label ID="Label4" runat="server" Text='<%# Eval("Member_Name") %>'></asp:Label></a></td>
                                    <td><a href="ViewMessage.aspx?mid=<%# Eval("ID") %>" class="title"><asp:Label ID="lblSubject" runat="server" Text='<%# Eval("MSGSubject") %>'></asp:Label></a></td>
                                   
                                    <td class="date" style="float:right">
                                     <a href="ViewMessage.aspx?mid=<%# Eval("ID") %>" class="title">   <asp:Label ID="Label2" runat="server" Text='<%#  Eval("Date","{0:dd/MM/yyyy}") %>'></asp:Label></a></td>
                                </tr>
                              
                                                                                             
        
                            </tbody>
                        </table>
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
.content11 a{
text-decoration: none;
}
.popup{
width: 100%;
margin: 0 auto;
display: none;
position: fixed;
z-index: 101;
}
.content11{
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
.content11 p{
clear: both;
color: #555555;
text-align: justify;
}
.content11 p a{
color: #d91900;
font-weight: bold;
}
.content11 .x{
float: right;
height: 35px;
left: 22px;
position: relative;
top: -25px;
width: 34px;
}
.content11 .x:hover{
cursor: pointer;
}
</style>
<style>
              
.modalBackground {
    background-color:Gray;filter:alpha(opacity=70);opacity:0.7;
} 
} 
</style>

      <asp:ModalPopupExtender ID="ModalPopupExtender2" runat="server" PopupControlID="pnlMSG" BackgroundCssClass="modalBackground" TargetControlID="HiddenField1"  >
    </asp:ModalPopupExtender>
 <asp:Panel ID="pnlMSG" CssClass="content11" runat="server">

   
   
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
 <div style="padding:15px;font-size:20px">Upgrade Your Membership To Send Message<br /></div>
 <a href="UpdateMembership.aspx" > <img src="../images/upgradeButton.png" height="50px" width="150px" align="middle" /></a></center>

      
    </div>
 
<div style="background-image:url('');background-repeat: no-repeat; height='250px'; width='475px' "  >
<br />
   <center> <button value="Close" type="button" class="btnLogin Black" id="btnCancle1">Close</button></center>
   
    </div>



           
</asp:Panel>
<asp:HiddenField ID="HiddenField1" runat="server" />
</asp:Content>


