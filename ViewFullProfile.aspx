<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ViewFullProfile.aspx.cs" Inherits="ViewFullProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="css/SearchTemplate.css" rel="stylesheet" type="text/css" />
    <style>
    .Header
    {
        color:Blue;
        font-weight:bold;
        width:100%;
        table-layout:auto;
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
.content1 a{
text-decoration: none;
}
.popup{
width: 100%;
margin: 0 auto;
display: none;
position: fixed;
z-index: 101;
}
.content1{
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
.content1 p{
clear: both;
color: #555555;
text-align: justify;
}
.content1 p a{
color: #d91900;
font-weight: bold;
}
.content1 .x{
float: right;
height: 35px;
left: 22px;
position: relative;
top: -25px;
width: 34px;
}
.content1 .x:hover{
cursor: pointer;
}
</style> 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<script type='text/javascript'>
    $(function () {
        var overlay = $('<div id="overlay"></div>');
        $('.close').click(function () {
            $('.popup').hide();
            overlay.appendTo(document.body).remove();
            return false;
        });

        $('.x').click(function () {
            $('.popup').hide();
            overlay.appendTo(document.body).remove();
            return false;
        });

        $('.click').click(function () {
            overlay.show();
            overlay.appendTo(document.body);
            $('.popup').show();
            return false;
        });
    });
</script>
    
     <div class="sidebarheading" style="">
      
  <asp:Label ID="lblName" runat="server" Text=""></asp:Label>
  
  <div class="" style="float:right">
                                <div class="PhotoSingleMenu">
                                <img src="images/ExpressIntrest.png" height="16px" width="16px" />
                                     <a href='' class='click'>Express Interest</a>   
                                </div>
                                <div class="PhotoSingleMenu">
                                    <img src="images/add_favorite_icon.png" />
                                    <a href='' class='click'>Set Favourite</a></strong></span>
                                </div>
                                <div class="PhotoSingleMenu">
                                <img src="images/email.png" height="15px" width="18px" />
                                <a href='' class='click'>  Send Message</a></strong></span>
                                </div>
                            </div>
    </div>
     <div class="slidebarcontent content">
     <table><tr><td> <asp:Image ID="imgProfileImage" runat="server" Height="152px" Width="140px" style="float:right;" /></td>
     <td>
     <asp:FormView ID="FVMaindetail" runat="server" BackColor="White"   >
       
        <EditRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
        <HeaderStyle CssClass="ColumnHeader" Font-Bold="True" ForeColor="#CCCCFF" />
        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
        <RowStyle CssClass="Column" ForeColor="#003399" />
            <ItemTemplate>

    <div class="content">
  
    <table style="border:0px;width:100%;" >
   
    <tr ><td class="Header" ><span >Member&nbsp;Id</span></td><td>
         <asp:Label  ID="lblcountry" runat="server" Text='<%# Eval("Member_Id")%>'></asp:Label></td><td><a>Express&nbsp;Intrest</a></td></tr>
        <tr><td class="Header">Age</td><td >
         <asp:Label ID="lblCity" runat="server" Text='<%# Eval("Age")%>'></asp:Label>&nbsp;Yrs</td><td><a>Send&nbsp;Message</a></td>
</tr><tr>
       </td><td class="Header">DOB</td><td>
           <asp:Label ID="lblPincode" runat="server" Text='<%# Eval("Dob","{0:dd/MMM/yyyy}")%>'></asp:Label>
           
        </td></tr>
    </table>
      
      </div>
            </ItemTemplate>
    </asp:FormView></td>
     </tr></table>
    
    
     
     
     </div>
     <div class="cleaner" id="Div4" ></div>
   
    <div class="sidebarheading" style="">
      
    Location Details</div>
    <div class="slidebarcontent content">
    <asp:FormView ID="FVLocationDetails" runat="server" BackColor="White"  >
       
        <EditRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
        <HeaderStyle CssClass="ColumnHeader" Font-Bold="True" ForeColor="#CCCCFF" />
        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
        <RowStyle CssClass="Column" ForeColor="#003399" />
            <ItemTemplate>

    <div class="content">
  
    <table style="border:0px;" >
    <tr  ><td class="Header" ><span > Country</span></td><td>
         <asp:Label  ID="lblcountry" runat="server" Text='<%# Eval("Country")%>'></asp:Label></td><td class="Header">State</td><td>
       <asp:Label ID="lblState" runat="server" Text='<%# Eval("State")%>'></asp:Label>
        </td></tr>
        <tr><td class="Header">City</td><td>
         <asp:Label ID="lblCity" runat="server" Text='<%# Eval("city_name")%>'></asp:Label>

       </td><td class="Header">PIN&nbsp;Code</td><td>
           <asp:Label ID="lblPincode" runat="server" Text='<%# Eval("Zip_Code")%>'></asp:Label>
           
        </td></tr>
    </table>
      
      </div>
            </ItemTemplate>
    </asp:FormView>
   </div>
   
     <div class="cleaner" id="Photosettings" ></div>
    <div class="sidebarheading">
      
   Personal Details</div>
    
   <div class="slidebarcontent content">
    <asp:FormView ID="FVPersionalDetails" runat="server" BackColor="White"  >
       
        <EditRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
        <HeaderStyle CssClass="ColumnHeader" Font-Bold="True" ForeColor="#CCCCFF" />
        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
        <RowStyle CssClass="Column" ForeColor="#003399" />
            <ItemTemplate>

    <div class="content">
  
    <table style="border:0px;width:100%"  >
    <tr ><td class="Header" ><span >&nbsp;Height</span></td><td>
         <asp:Label  ID="lblcountry" runat="server" Text='<%# Eval("Height")%>'></asp:Label></td><td class="Header">Physical&nbsp;Status</td><td>
       <asp:Label ID="lblState" runat="server" Text='<%# Eval("Physical_Status")%>'></asp:Label>
        </td></tr>
        <tr><td class="Header">About&nbsp;My&nbsp;Patner</td><td colspan=3>
         <asp:Label ID="lblCity" runat="server" Text='<%# Eval("About_My_Patner")%>'></asp:Label>
</tr><tr>
       </td><td class="Header">About&nbsp;Me</td><td td colspan=3>
           <asp:Label ID="lblPincode" runat="server" Text='<%# Eval("About_Me")%>'></asp:Label>
           
        </td></tr>
    </table>
      
      </div>
            </ItemTemplate>
    </asp:FormView>
   </div>
    <div class="cleaner" id="Div1" ></div>

    <div class="sidebarheading">
      
   Habbit</div>
    
   <div class="slidebarcontent content">
    <asp:FormView ID="FVHabbit" runat="server" BackColor="White"  >
       
        <EditRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
        <HeaderStyle CssClass="ColumnHeader" Font-Bold="True" ForeColor="#CCCCFF" />
        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
        <RowStyle CssClass="Column" ForeColor="#003399" />
            <ItemTemplate>

    <div class="content">
  
    <table style="border:0px;width:100%;table-layout:auto"  >
    <tr >
        <td class="Header" width="200">Smoke&nbsp;Habbit</td><td>
       <asp:Label ID="lblState" runat="server" Text='<%# Eval("Smoke")%>'></asp:Label>
        </td>
       <td class="Header">Drink&nbsp;Habbit</td><td colspan=3>
         <asp:Label ID="lblCity" runat="server" Text='<%# Eval("Drink")%>'></asp:Label>
</tr><tr>
       </td><td class="Header">Food&nbsp;Habbit</td><td td colspan=3>
           <asp:Label ID="lblPincode" runat="server" Text='<%# Eval("Food")%>'></asp:Label>
           
        </td></tr>
    </table>
      
      </div>
            </ItemTemplate>
    </asp:FormView>
   </div>
    <div class="cleaner" id="Div2" ></div>

    <div class="sidebarheading">
      
  Physical Info</div>
    
   <div class="slidebarcontent content">
    <asp:FormView ID="FVPhysicalDetail" runat="server" BackColor="White"  >
       
        <EditRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
        <HeaderStyle CssClass="ColumnHeader" Font-Bold="True" ForeColor="#CCCCFF" />
        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
        <RowStyle CssClass="Column" ForeColor="#003399" />
            <ItemTemplate>

    <div class="content">
  
    <table style="border:0px;width:100%;table-layout:auto"  >
    <tr >
        <td class="Header" width="200">Body&nbsp;Complexion</td><td>
       <asp:Label ID="lblState" runat="server" Text='<%# Eval("Complexion")%>'></asp:Label>
        </td>
       <td class="Header">Body&nbsp;Type</td><td colspan=3>
         <asp:Label ID="lblCity" runat="server" Text='<%# Eval("Body_Type")%>'></asp:Label>
</tr><tr>
       <td class="Header">Family&nbsp;Status</td><td td >
           <asp:Label ID="lblPincode" runat="server" Text='<%# Eval("Family_Status")%>'></asp:Label>
           <td class="Header">Blode&nbsp;Group</td><td td>
           <asp:Label ID="Label1" runat="server" Text='<%# Eval("Blode_Group")%>'></asp:Label>
        </td></tr>
    </table>
      
      </div>
            </ItemTemplate>
    </asp:FormView>
   </div>

      <div class="cleaner" id="Div3" ></div>

    <div class="sidebarheading">
      
  Physical Info</div>
    
   <div class="slidebarcontent content">
    <asp:FormView ID="FVReligiouse" runat="server" BackColor="White"  >
       
        <EditRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
        <HeaderStyle CssClass="ColumnHeader" Font-Bold="True" ForeColor="#CCCCFF" />
        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
        <RowStyle CssClass="Column" ForeColor="#003399" />
            <ItemTemplate>

    <div class="content">
  
    <table style="border:0px;width:100%;table-layout:auto"  >
    <tr >
        <td class="Header" width="200">Cast&nbsp;</td><td>
       <asp:Label ID="Label2" runat="server" Text='<%# Eval("Cast_Name")%>'></asp:Label>
        </td>
       <td class="Header">Religion&nbsp;</td><td colspan=3>
         <asp:Label ID="Label3" runat="server" Text='<%# Eval("Religion")%>'></asp:Label>
</tr>
    <tr >
        <td class="Header" width="200">Rasi&nbsp;</td><td>
       <asp:Label ID="lblState" runat="server" Text='<%# Eval("Rashi_Name")%>'></asp:Label>
        </td>
       <td class="Header">Star&nbsp;</td><td colspan=3>
         <asp:Label ID="lblCity" runat="server" Text='<%# Eval("Star_Name")%>'></asp:Label>
</tr>
<tr>
       <td class="Header">Gothram&nbsp;</td><td td >
           <asp:Label ID="lblPincode" runat="server" Text='<%# Eval("Gothram")%>'></asp:Label>
           <td class="Header">Dosham</td><td td>
           <asp:Label ID="Label1" runat="server" Text='<%# Eval("Dosham")%>'></asp:Label>
        </td></tr>
    </table>
      
      </div>
            </ItemTemplate>
    </asp:FormView>
   </div>
    <div class="cleaner" id="Div5" ></div>
    <div class="sidebarheading">
      
  Education And Career</div>
    
   <div class="slidebarcontent content">
    <asp:FormView ID="FVEducation" runat="server" BackColor="White"  >
       
        <EditRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
        <HeaderStyle CssClass="ColumnHeader" Font-Bold="True" ForeColor="#CCCCFF" />
        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
        <RowStyle CssClass="Column" ForeColor="#003399" />
            <ItemTemplate>

    <div class="content">
  
    <table style="border:0px;width:100%;table-layout:auto"  >
    <tr >
        <td class="Header" width="200">Qualification&nbsp;</td><td>
       <asp:Label ID="Label2" runat="server" Text='<%# Eval("Education")%>'></asp:Label>
        </td>
       <td class="Header">Anual&nbsp;Incom&nbsp;</td><td colspan=3>
         <asp:Label ID="Label3" runat="server" Text='<%# Eval("Anual_Incom")%>'></asp:Label>&nbsp;<span class="WebRupee">&#x20B9;</span>
</tr>
    <tr >
        <td class="Header" width="200">Profession&nbsp;</td><td>
       <asp:Label ID="lblState" runat="server" Text='<%# Eval("Profession_Id")%>'></asp:Label>
        </td>
       <td class="Header">Occupation&nbsp;</td><td colspan=3>
         <asp:Label ID="lblCity" runat="server" Text='<%# Eval("Occupation")%>'></asp:Label>
</tr>

    </table>
      
      </div>
            </ItemTemplate>
    </asp:FormView>
   </div>
    
</asp:Content>

