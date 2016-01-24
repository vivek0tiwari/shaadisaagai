<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SearchResult.aspx.cs" Inherits="SearchResult" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Search</title>

    <script src="js/gen_validatorv4.js" type="text/javascript"></script>
    <script src="js/jquery.min.js" type="text/javascript"></script>
<link href="css/templatemo_style.css" rel="stylesheet" type="text/css" />
    <link href="css/style.css" rel="stylesheet" type="text/css" />
    <link href="css/styles.css" rel="stylesheet" type="text/css" />
    
    
    <link href="css/tabCntrol1.css" rel="stylesheet" />
    
    <link href="css/tabCntrol1.css" rel="stylesheet" type="text/css" />
<script src="js/jquery-1.2.6.min.js" type="text/javascript"></script>

      <script src="../Scripts/jquery-1.4.1.min.js" type="text/javascript"></script>
  
<link rel="stylesheet" type="text/css" href="css/ddsmoothmenu.css" />

<script type="text/javascript" src="../js/jquery.min.js"></script>
<script type="text/javascript" src="../css/ddsmoothmenu.css">

    /***********************************************
    * Smooth Navigational Menu- (c) Dynamic Drive DHTML code library (www.dynamicdrive.com)
    * This notice MUST stay intact for legal use
    * Visit Dynamic Drive at http://www.dynamicdrive.com/ for full source code
    ***********************************************/

</script>

    <link href="css/Controls.css" rel="stylesheet" type="text/css" />
    <link href="css/slide2.css" rel="stylesheet" type="text/css" />
    <link href="css/styles.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">

    ddsmoothmenu.init({
        mainmenuid: "templatemo_menu", //menu DIV id
        orientation: 'h', //Horizontal or vertical menu: Set to "h" or "v"
        classname: 'ddsmoothmenu', //class added to menu's outer DIV
        //customtheme: ["#1c5a80", "#18374a"],
        contentsource: "markup" //"markup" or ["container_id", "path_to_menu_file"]
    })

</script>


    <script src="js/jquery.js" type="text/javascript"></script>
      
<style type="text/css">
			
			
			.lightbox { left: -999em; position: absolute; }
			.lightbox { left: -999em; position: absolute; }
			.lightbox:target { bottom: 0; left: 0; right: 0; top: 0; position: absolute; }
			.lightbox:target .close1 a { background: rgba(0, 0, 0, 0.75); bottom: 0; left: 0; right: 0; top: 0; position: absolute; z-index: 1; }
			.close1 span { color: #FFFFFF; font-size: 2em; text-indent: 0; position: absolute; right: 0.5em; top: 0.5em; }
			.close1 {text-indent: -999em;}
			.lightbox:target div { background: #FFFFFF; position: absolute; left: 50%; top: 50%; z-index: 99; }
			.w60p { margin-left: -30%; width: 60%; } .w300 { margin-left: -150px; width: 300px; } .w640 { margin-left: -320px; width: 640px; }
			.h60 { height: 60px; margin-top: -40px; } .h400 { height: 400px; margin-top: -150px; } .h386 { height: 386px; margin-top: -193px; }
			.scroll { overflow-y: scroll; padding: 0 1em; }
			.boxfocus { bottom: 0; left: 0; right: 0; top: 0; position: absolute; }
			.boxfocus div {	background: #FFFFFF; position: absolute; left: 50%; top: 50%; z-index: 99; }
			.boxfocus .close a { background-image: url('trans.png'); bottom: 0; left: 0; right: 0; top: 0; position: absolute; z-index: 1; }
		</style>
<script type="text/javascript">
		<!--
		    /*@cc_on@if (@_jscript_version > 5.6)
			function bootup(){
				var tds = document.getElementsByTagName("a"); lightbox();
				for( var x=0; x < tds.length; x++ ){tds[x].onclick = function(){setTimeout(lightbox, 1);};}
			}
			function lightbox(){
				var counted = document.getElementsByTagName("div");
				for( var x=0; x < counted.length; x++ ){ if ( counted[x].className == "boxfocus" ) { counted[x].className = "lightbox"; } }
				if (location.hash.substr(1) == "") {} else { document.getElementById(location.hash.substr(1)).className = "boxfocus"; }
			}
			window.onload=bootup;
			@end
		    @*/
		// -->
		</script>
</head>
<body>

 
<form id="form1" runat="server">

<asp:ScriptManager ID="ScriptManager1" runat="server">
</asp:ScriptManager>
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

<div class="lightbox" id="content">
			<div class="w60p h400 scroll">
				<h2>ABOUT US</h2>
                <p>
                

<h3>VISION:</h3>
The search for a dream match is a blissful journey with ease and the conjugal life thereafter becomes a dream come true fulfilling the wishes blessed by complete happiness.

<h3><br />MISSION: </h3>
The mission of Shaadisagai.com is to help individuals, parents and guardians find the most suitable match anywhere essentially connecting two souls in a way that it can lead to a fulfilling relationship for leading a happy married life. To enable this we strive to understand the dreams, need and wishes of individuals so that we can help them in finding their most suitable matches with so much ease that this journey of matchmaking process becomes a memorable experience. With the application of most modern and advanced technology, we aspire to make this most friendly and with the use of human touch bringing in warmth and helpfulness in assisting people in their search process maintaining highest quality parameters. Combination of both, we want to be the most reliable, sought after and honest match maker in India.


                </p>
				
			</div>
		<p class="close1"><a href="#" title="Close This Content Lightbox">Close <span>X</span></a></p>
		</div>
        <div class="lightbox" id="content1">
			<div class="w60p h400 scroll">
				<h2><h2> PRIVACY POLICY</h2></h2>
                <p>
               

Shaadisagai.com is an online matrimonial portal endeavoring constantly to provide you with premium matrimonial services. This privacy statement is common to all the matrimonial sites operated under Shaadisagai.com Since we are strongly committed to your right to privacy, we have drawn out a privacy statement with regard to the information we collect from you.

We use a secure server for credit card transactions to protect the credit card information of our users and Cookies are used to store the login information.

                </p>

				
<h3>What information you need to give in to use this site?</h3><p>
The information we gather from members and visitors who apply for the various services our site offers includes, but may not be limited to, email address, first name, last name, a user-specified password, mailing address, zip code and telephone number or fax number.
If you establish a credit account with us to pay the fees we charge, some additional information, including a billing address, a credit card number and a credit card expiration date and tracking information from checks or money orders is collected.
			</p>
            
            <h3>How the site uses the information it collects/tracks?</h3>
<p>Shaadisagai collects information from our users primarily to ensure that we are able to fulfill your requirements and to deliver Personalised experience.</p>
            
          


<h3>With whom the site shares the information it collects/tracks?</h3>
<p>The information collected from any of our users is not shared with any individual or organisation without the former's approval.

Shaadisagai.com does not sell, rent, or loan any identifiable information at the individual level regarding its customers to any third party. Any information you give us is held with the utmost care and security. We are also bound to cooperate fully should a situation arise where we are required by law or legal process to provide information about a customer.
</p>
<h3>Do all visitors have to pay?</h3>
<p>NO. All visitors to our site may browse the site, search the ads and view any articles or 
features our site has to offer without entering any personal information or paying money.
</p>
<h3>How to unsubscribe the membership?</h3>
<p>The members are requested to login to the relevant pages for unsubscription.</p>

<h3>Can users contact any number of profiles in a single day?</h3>
<p>As a paid member of this site, you have the privilege to contact hundreds of profiles. However, there is a specified limit to 150 contacts per day for security reasons. If you want to contact more profiles than the specified limit in a single day, you can do so after the completion of 12 hours of login time.
</p>
<h3>Notice</h3>
<p>We may change this Privacy Policy from time to time based on your comments or as a result of a change of policy in our company.
If you have any questions regarding our Privacy Statement, please write in to brajmohan.luck@gmail.com
   </p>         </div>
		<p class="close1"><a href="#" title="Close This Content ">Close <span>X</span></a></p>
		</div>


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
 <div style="padding:15px;"><h3>Create An Account</h3></div>
  <img src="images/RegisterNowButton.png" />
 
      
    </div>
   
 


<div style="background-image:url('images/LoginBG.png');background-repeat: no-repeat; height='250px'; width='475px' "  >
    <table class="tblContent" >
    <tr><td colspan=2 align="center" ><img src="images/LoginWithFB.png" /></td></tr>
    <tr><td>Email</td></tr>
    <tr><td>
    <asp:TextBox ID="txtEmail" runat="server" Class="textbox"></asp:TextBox></td></tr>
      <tr><td>Password</td></tr>
    <tr><td>
    <asp:TextBox ID="txtPassword" runat="server" Class="textbox"  TextMode="Password"></asp:TextBox></td></tr>
    <tr><td style="font-family:Aparajita;color:Maroon;font-size:13px;" ><a href="ForgatPwd1.aspx">Forgot password?</a></td></tr>
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

<div id="templatemo_wrapper">
            
	<div id="templatemo_header">
        
        <div class="templatemo_search" Style="float:right;">
        
            <img src="images/livesuprot.png" alt="Click For Live Support" />
        </div>
        
        <div class="cleaner"></div>
    </div> <!-- end of header -->
    
     <!-- end of menu -->

       
        	<div id="templatemo_main">
            
            
    <div>
        
        <br />
 


     
      <div class="leftcoloumn">
          <div id="ddblueblockmenu">

<div class="menutitle nav-toggle" href="#collapse2">Menu</div>
<div id="collapse2">
<ul>
<li><a href="Default.aspx">Home</a></li>
<li><a href="Login.aspx">LogIn</a></li>
<li><a href="Registration.aspx">Registration</a></li>
<li><a href="#">Simple Search</a></li>
<li><a href="#">Help/Faqs</a></li>
<li><a href="#content" title="Content Lightbox">About us</a></li>

</ul>

</div>
</div>
<br />
  



</div>
     
        </div>
           <div class="contentMain">
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
                   <h5>Loking For         </td>
                <td>
                    <asp:DropDownList ID="ddlLokingFor" runat="server" class="txt_field" Width="150px">
                    <asp:ListItem>Bried</asp:ListItem>
                        <asp:ListItem>Groom</asp:ListItem>
                    </asp:DropDownList>
                </td>
           
           
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
    
        
         
     <asp:ListView ID="ListView1" runat="server" DataKeyNames="Member_Id" 
                 onitemcommand="ListView1_ItemCommand">
                   
                   
                             
                   
                   
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
                                <img src="images/ExpressIntrest.png" height="16px" width="16px" />
                                     <a href='' class='click'>Express Interest</a>  
                                </div>
                                <div class="PhotoSingleMenu">
                                    <img src="images/add_favorite_icon.png" />
                                    <asp:LinkButton ID="lbtnAddToFsvourite" runat="server" CommandName="AddToFavourite">Set Favourite</asp:LinkButton></strong></span>
                                </div>
                                <div class="PhotoSingleMenu">
                                <img src="images/profile_detail.png" height="18px" width="18px" />
                                <a href="ViewFullProfile.aspx?ProfileID=<%# Eval("Member_Id") %>" target="_blank">   View Full Profile</a>
                                </div>
                            </div>
                            <div class="PhotoLeftBox">
                                <div class="Photo">
                                  <asp:Label ID="lblPhotoStatus" runat="server" Visible="false" Text='<%# Eval("Member_Name") %>' />
                                    <asp:Label ID="PhotoAlbumId" runat="server" Visible="false" Text='<%# Eval("Member_Name") %>' />
                                    <asp:Label ID="lblPhotoUrl" runat="server" Visible="false" Text='<%# Eval("Member_Name") %>' />
                                    <asp:LinkButton ID="lbtnPhotoRequest" runat="server" CommandName="RequestPhoto" Visible="false">Request Photo</asp:LinkButton>
                                    <asp:Image ID="Image2" runat="server" ImageUrl='<%# string.Format("ProfileImages/{0}",Eval("ProfilePhoto") ) %>' Width="146px"
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
                                    
                                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("About_Me")%>'></asp:Label><a href="ViewFullProfile.aspx?ProfileID=<%# Eval("Member_Id") %>" target="_blank"> More Details</a>
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
              
   </div>
             
        </div>
        
    </div>
   </form> 


        
       
        
		<br class="cleaner" />
          <div id="templatemo_footer">
    	<div class="col_3">
        	<h5>Religion</h5>
            <P><a href="#">Hindu</a> | <a href="#">Muslim</a> | <a href="#">Christian</a> | <a href="#">Sikh</a> | <a href="#">Inter Religion</a> </P>
 
            <h5>Community</h5>
            <P><a href="#">Agarwal</a> | <a href="#">Brahmin</a> | <a href="#">Jain</a> | <a href="#">Punjabi </a>| <a href="#">Rajput</a> | <a href="#">Telugu</a> | <a href="#">Rajasthani </a>  </P>

      
           </div>
        <div class="col_3">
        	       <h5>Help !!</h5>
            <P><a href="#">FAQs</a> | <a href="#">FeedBack</a> | <a href="#">Live Chat</a> | <a href="#">Contact Us</a>  </P>
            <h5>Security & Privacy</h5>
            <P><a href="#">Policy</a> | <a href="#">Security Tips</a> | <a href="#">Terms & Condition</a> | <a href="#">User Policy</a>  </P>
        </div>
        <div class="col_3 col_l">
        <h5>About</h5>
        <div style="float:right;padding-right:150px"> <h6><a href="ContactUs.aspx">FeedBack</a></h6>
        <h6><a href="#">FAQs</a></h6>
 <h6><a href="#content1" title="Content Lightbox">Policy</a></h6></div>

        <h6><a href="#content" title="Content Lightbox">About Us</a></h6>
        <h6><a href="SearchResult.aspx">Search</a></h6>
        <h6><a href="ContactUs.aspx">Contact Us</a></h6>
			
            <div class="footer_social_button">
               
			</div>       		
        </div>
        <div class="cleaner"></div>
    </div>
    </div>
           
      
      

</div>

<div id="templatemo_cr_bar_wrapper">
	<div id="templatemo_cr_bar">
    	Copyright © 
    </div>
</div>
   
</body>
</html>
