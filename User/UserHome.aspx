<%@ Page Title="" Language="C#" MasterPageFile="~/User/MasterPage.master" AutoEventWireup="true" CodeFile="UserHome.aspx.cs" Inherits="User_UserHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../css/ProgresBar.css" rel="stylesheet" type="text/css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <link href="../css/scrollable-buttons.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="../js/jquery.tools.min.js"></script>
    <script type="text/javascript" src="../js/jquery.lavalamp.min.js"></script>
      <div class="sidebar1" >
    <div class="sidebarheading">
        <asp:Label ID="lblUser" runat="server" Text=""></asp:Label>
    &nbsp;</div><div class="slidebarcontent">
    <table >
    <tr><td rowspan="5">
          <asp:Image ID="imgProfileImage" runat="server" Height="152px" Width="140px"  class="profileImage"/>
        
    </td> </tr>
    <tr ><td>Profile ID<br />
        <asp:Label ID="lblProfileID" runat="server" Text="" class="Lable"></asp:Label></td><td><section class="container">
    <div class="progress">
      <span style="width: 80%;" class="orange"><span>80%</span></span>
    </div></section></td></tr>
    <tr><td>Last Login Date<br />
        <asp:Label ID="lbLastLoginDate" runat="server" Text="" class="Lable"></asp:Label></td><td>Edit/Verify My Mobile No.</td></tr>
    <tr><td>Membership Plane
    <br />
        <asp:Label ID="lblPlane" runat="server" Text="" class="Lable"></asp:Label>
    </td><td>Edit/Verify My Email ID</td></tr>
    <tr><td><a class="button green" href="UpdateMembership.aspx" >Upgarde Membership</a></td></tr>


    
   
    </table>
         
         </div>  
           
    </div>
   <div>
   <script type="text/javascript" >
       // execute your scripts when the DOM is ready. this is mostly a good habit
       $(document).ready(function () {
           // initialize scrollable
           $(".scrollable").scrollable();
       });
     </script>
        <a class="prev browse left">
            <img src="../images/imgLeft.jpg" />
        </a>    
                
        <div class="scrollable" style="height:100px;margin:20px;border:solid 1px #CCC;padding:50px;">
               <div class="items">
                
               </div>
         </div>
       
      <a class="next browse right">
        <img src="../images/imgRight.png" />
      </a>
     
    </div>
     <br>
   
</asp:Content>

