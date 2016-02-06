<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">


    <head runat="server">

    <link rel="shortcut icon"
 href="images/LogoIcon.ico" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Shaadi Saagai</title>

<link href="css/templatemo_style.css" rel="stylesheet" type="text/css" />
    
    
    
        <script src="js/gen_validatorv4.js" type="text/javascript"></script>
    <link href="css/tabCntrol1.css" rel="stylesheet" type="text/css" />
<script src="js/jquery-1.2.6.min.js" type="text/javascript"></script>
<script language="javascript" type="text/javascript">
function clearText(field)
{
    if (field.defaultValue == field.value) field.value = '';
    else if (field.value == '') field.value = field.defaultValue;
}
</script>
    
<link rel="stylesheet" type="text/css" href="css/ddsmoothmenu.css" />

<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/ddsmoothmenu.js">



</script>

<script type="text/javascript">

    /*** 
    Simple jQuery Slideshow Script
    Released by Jon Raasch (jonraasch.com) under FreeBSD license: free to use or modify, not responsible for anything, etc.  Please link out to me if you like it :)
    ***/

    function slideSwitch() {
        var $active = $('#slideshow IMG.active');

        if ($active.length == 0) $active = $('#slideshow IMG:last');

        // use this to pull the images in the order they appear in the markup
        var $next = $active.next().length ? $active.next()
        : $('#slideshow IMG:first');

        // uncomment the 3 lines below to pull the images in random order

        // var $sibs  = $active.siblings();
        // var rndNum = Math.floor(Math.random() * $sibs.length );
        // var $next  = $( $sibs[ rndNum ] );


        $active.addClass('last-active');

        $next.css({ opacity: 0.0 })
        .addClass('active')
        .animate({ opacity: 1.0 }, 1000, function () {
            $active.removeClass('active last-active');
        });
    }

    $(function () {
        setInterval("slideSwitch()", 5000);
    });

</script>
    <link href="css/slide2.css" rel="stylesheet" type="text/css" />

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

    <script type="text/javascript">

$(document).ready(function(){
	$("#tabs li").click(function() {
		//	First remove class "active" from currently active tab
		$("#tabs li").removeClass('active');

		//	Now add class "active" to the selected/clicked tab
		$(this).addClass("active");

		//	Hide all tab content
		$(".tab_content").hide();

		//	Here we get the href value of the selected tab
		var selected_tab = $(this).find("a").attr("href");

		//	Show the selected tab content
		$(selected_tab).fadeIn();

		//	At the end, we add return false so that the click on the link is not executed
		return false;
	});
});
/* ]]> */
</script>

<style type="text/css">
			
			
			.lightbox { left: -999em; position: absolute; }
			.lightbox { left: -999em; position: absolute; }
			.lightbox:target { bottom: 0; left: 0; right: 0; top: 0; position: absolute; }
			.lightbox:target .close a { background: rgba(0, 0, 0, 0.75); bottom: 0; left: 0; right: 0; top: 0; position: absolute; z-index: 1; }
			.close span { color: #FFFFFF; font-size: 2em; text-indent: 0; position: absolute; right: 0.5em; top: 0.5em; }
			.close {text-indent: -999em;}
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
<style type="text/css">
#slideshow_wraper {
    position:relative;
    height:350px;
}

</style>
<script language="javascript" type="text/javascript">
    function GetResult(returnValue, context) {
        document.getElementById("ddlCastDiv").innerHTML = returnValue;
        //  alert(returnValue);

    }
    function SendRequest(args) {
        CallServer(args);
        return false;
    }
    </script>
</head>
<body>


<div class="lightbox" id="content">
			<div class="w60p h400 scroll">
				<h2>ABOUT US</h2>
                <p>
                

<h3>VISION:</h3>
The search for a dream match is a blissful journey with ease and the conjugal life thereafter becomes a dream come true fulfilling the wishes blessed by complete happiness.

<h3><br />MISSION: </h3>
The mission of shaadisaagai.com is to help individuals, parents and guardians find the most suitable match anywhere essentially connecting two souls in a way that it can lead to a fulfilling relationship for leading a happy married life. To enable this we strive to understand the dreams, need and wishes of individuals so that we can help them in finding their most suitable matches with so much ease that this journey of matchmaking process becomes a memorable experience. With the application of most modern and advanced technology, we aspire to make this most friendly and with the use of human touch bringing in warmth and helpfulness in assisting people in their search process maintaining highest quality parameters. Combination of both, we want to be the most reliable, sought after and honest match maker in India.


                </p>
				
			</div>
		<p class="close"><a href="#" title="Close This Content ">Close <span>X</span></a></p>
		</div>
        <div class="lightbox" id="content1">
			<div class="w60p h400 scroll">
				<h2><h2> PRIVACY POLICY</h2></h2>
                <p>
               

shaadisaagai.com is an online matrimonial portal endeavoring constantly to provide you with premium matrimonial services. This privacy statement is common to all the matrimonial sites operated under shaadisaagai.com Since we are strongly committed to your right to privacy, we have drawn out a privacy statement with regard to the information we collect from you.

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

shaadisaagai.com does not sell, rent, or loan any identifiable information at the individual level regarding its customers to any third party. Any information you give us is held with the utmost care and security. We are also bound to cooperate fully should a situation arise where we are required by law or legal process to provide information about a customer.
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
		<p class="close"><a href="#" title="Close This Content Lightbox">Close <span>X</span></a></p>
		</div>
<div id="templatemo_wrapper">
            <form id="Form1" runat="server">
	<div id="templatemo_header">
     
        <div id="templatemo_search">
        <p>Email&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  Password</p>
            
           
            <asp:TextBox ID="txtUid" runat="server"  class="txt_field" MaxLength="30" ></asp:TextBox>
              <asp:TextBox ID="txtPwd" runat="server"  class="txt_field" 
                TextMode="Password" MaxLength="16" ></asp:TextBox>
          
            <asp:Button ID="btnLogin" runat="server" Text="Login" class="submit_btn float_l" OnClick="btnLogin_Click" OnClientClick="ValLogin()" />
           
        </div>


        <script language="JavaScript" type="text/javascript"
    xml:space="preserve">//<![CDATA[
            //You should create the validator only after the definition of the HTML form
          
          

//]]></script>
        <div class="cleaner" style="float:right"> <a href="ForgatPwd1.aspx">Forgot Password</a></div>
    </div> <!-- end of header -->
    
    <div id="templatemo_menu" class="ddsmoothmenu">
        <ul>
            <li><a href="#">Marathi</a></li>
            <li><a href="#">Gujrati</a>
     
            </li>
            <li><a href="#">Rajasthani</a>
                
          	</li> 
          	<li><a href="#">Bengali</a></li>
            <li><a href="#">Bihari</a></li>
            <li><a href="#">Kannada</a></li>
            <li><a href="#">Telugu</a></li>
            <li><a href="#">Tamil</a></li>
          	<li><a href="#" class="selected">Punjabi</a></li>
        </ul>
        <br style="clear: left" />
 </div> <!-- end of menu -->

  <div id="slideshow_wraper">
  
             
         <div class="col_2 float_r">
        <div id="slideshow">
    <img src="image1.jpg" alt="Slideshow Image 1"  />
    <img src="image2.jpg" alt="Slideshow Image 2" class="active" />
    <img src="image3.jpg" alt="Slideshow Image 3" />
    <img src="image4.jpg" alt="Slideshow Image 4" />
</div>
        </div>
       
        	
           <div id="tabs_wrapper">

	<div id="tabs_container">

		<ul id="tabs">
			<li class="active"><a href="#tab1">Free Registration&nbsp;&nbsp;</a></li>
			<li> <a  href="#tab2">&nbsp;&nbsp;Search&nbsp;&nbsp;</a></li>
			
		</ul>
	</div>
	
	
	  
	<div id="tabs_content_container">

		<div id="tab1" class="tab_content" style="display: block;">
		
			<table style="width: 100%;">
            <tr>
               
                <td>
                    </td>
 &nbsp;</td>
                <td>
                    <asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
                    
                    
                </td>
            </tr>
            <tr>
               
                <td>
                   <h5>Name         </td>
                <td>
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <asp:TextBox ID="txtName" runat="server" class="txt_field" MaxLength="30" 
                        EnableViewState="False"></asp:TextBox>
                        <asp:FilteredTextBoxExtender ID="txtName_FilteredTextBoxExtender" 
                        runat="server" Enabled="True" FilterMode="InvalidChars" 
                        InvalidChars="1234567890-=+_)(*&amp;^!@#$%`~\][|}{';&quot;:/?&gt;,&lt;" 
                        TargetControlID="txtName">
                    </asp:FilteredTextBoxExtender>
                        </ContentTemplate>
                        </asp:UpdatePanel>
                </td>
            </tr>
          
            <tr>
                <td>
                    
                    <h5>DOB</h5></td>
                <td>
                    <asp:TextBox ID="txtDOB" runat="server" class="txt_field" MaxLength="10" 
                        EnableViewState="False"></asp:TextBox>
                    <asp:MaskedEditExtender ID="txtDOB_MaskedEditExtender" runat="server" 
                        CultureAMPMPlaceholder="" CultureCurrencySymbolPlaceholder="" 
                        CultureDateFormat="" CultureDatePlaceholder="" CultureName="en-GB" CultureDecimalPlaceholder="" 
                        CultureThousandsPlaceholder="" CultureTimePlaceholder="" Enabled="True" 
                        Mask="99/99/9999" MaskType="Date" TargetControlID="txtDOB">
                    </asp:MaskedEditExtender>
                    <asp:FilteredTextBoxExtender ID="txtDOB_FilteredTextBoxExtender" runat="server" 
                        Enabled="True" TargetControlID="txtDOB" ValidChars="1234567890-/">
                    </asp:FilteredTextBoxExtender>
                    <asp:CalendarExtender ID="txtDOB_CalendarExtender" runat="server"
                        Enabled="True" TargetControlID="txtDOB" DaysModeTitleFormat="dd/MM/yyyy" 
                        TodaysDateFormat="dd/MM/yyyy" Format="dd/MM/yyyy" DefaultView="Years"  >
                    </asp:CalendarExtender>
                    
                </td>
                
            </tr>
            <tr>
                <td>
                    <h5>Gender</h5>
                </td>
                <td>
                    <asp:DropDownList ID="ddlGender" runat="server" class="txt_field" 
                        EnableViewState="False" Width="150px">
                        <asp:ListItem>Select</asp:ListItem>
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:DropDownList>
                                        </td>
                
            </tr>
            <tr>
                <td>
                    <h5>Mobile No.</h5></td>
                <td>
                    <asp:TextBox ID="txtMobile" runat="server" class="txt_field" MaxLength="10" 
                        EnableViewState="False"></asp:TextBox>
                                        <asp:FilteredTextBoxExtender ID="txtMobile_FilteredTextBoxExtender" 
                        runat="server" Enabled="True" TargetControlID="txtMobile" 
                        ValidChars="1234567890">
                    </asp:FilteredTextBoxExtender>
                                        </td>
                
            </tr>
            <tr>
                <td>
                    <h5>Email Address</h5></td>
                <td>
                    <asp:TextBox ID="txtEmail" runat="server" class="txt_field" MaxLength="100" 
                        EnableViewState="False"></asp:TextBox>
                                        </td>
                
            </tr>
            <tr>
                <td>
                    <h5>Password</h5></td>
                <td>
                    <asp:TextBox ID="txtPassword" runat="server" class="txt_field" MaxLength="30" 
                        TextMode="Password" EnableViewState="False"></asp:TextBox>
                                        </td>
                
            </tr>
            <tr>
                <td>
                    <h5>Profile is submitted by</h5></td>
                <td>
                     <asp:DropDownList ID="ddlSubmittedBy" runat="server" class="txt_field" 
                        EnableViewState="False" Width="150px">
                        <asp:ListItem  value="Self">Self</asp:ListItem>
							<asp:ListItem value="Parent/Guardian">Parent/Guardian</asp:ListItem>
							<asp:ListItem value="Sibling">Sibling</asp:ListItem>
							<asp:ListItem value="Friend">Friend</asp:ListItem>
							<asp:ListItem value="Others">Others</asp:ListItem>
                    </asp:DropDownList></td>
                
            </tr>
            
            <tr>
                <td>
                    *All Fields Mandatory</td>
                <td align="left">
                   <asp:Button ID="btnSingup" runat="server" Text="Submit"  class="btnLogin" 
                        onclick="btnSingup_Click" OnClientClick="ValSingUp()"/></td>
                
            </tr>
        </table>
        
       
       
		</div>
     
		<div id="tab2" class="tab_content">
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
            </tr>
            <tr>
                <td>
                    
                    <h5>Age</h5></td>
                <td>
                    <asp:DropDownList ID="ddlAgeFrom" runat="server"  Width ="55px">
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
                
            </tr>
            <tr>
                <td>
                    <h5>Caste</h5></td>
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
                
            </tr>
            <tr>
                <td>
                    <h5>Country</h5></td>
                <td>
                    <asp:DropDownList ID="ddlCountry" runat="server" Width="150px">
                    <asp:ListItem>
                    Select
                    </asp:ListItem>
                    <asp:ListItem>
                    India
                    </asp:ListItem>
                    <asp:ListItem>
                    Other
                    </asp:ListItem>
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
                
                <td><asp:Button ID="btnSearch" runat="server" Text="Search" class="btnLogin"
                        onclick="btnSearch_Click" />
                  </td>
                
            </tr>
        </table>
		</div>
	
	</div>
</div>
      </form>     
        

   <script language="JavaScript" type="text/javascript"
    xml:space="preserve">
       var frmvalidator = new Validator("Form1");
       function ValLogin() {

           //VALIDATION FOR LOGIN FORM

           //USER NAME
           frmvalidator.clearAllValidations();
           frmvalidator.EnableMsgsTogether();
           frmvalidator.addValidation("txtUid", "req", "Please enter your User ID");
           frmvalidator.addValidation("txtUid", "minlen=4", "Min length for User ID is 4");
           frmvalidator.addValidation("txtUid", "maxlen=30", "Max length for User ID is 30");
           //frmvalidator.addValidation("txtUid", "alpha", "Alphabetic chars only");

           //PASWORD
           frmvalidator.addValidation("txtPwd", "req", "Please enter your Password");
           frmvalidator.addValidation("txtPwd", "minlen=4", "Min length for Password is 4");
           frmvalidator.addValidation("txtPwd", "maxlen=20", "Max length for Password is 16");
         }

       function ValSingUp() {

           //VALIDATION FOR SUBMIT

           //NAME...
           frmvalidator.clearAllValidations();
           frmvalidator.EnableMsgsTogether();
           frmvalidator.addValidation("txtName", "req", "Please enter your Name");
           frmvalidator.addValidation("txtName", "minlen=4", "Min length for Name is 4");
           frmvalidator.addValidation("txtName", "maxlen=30", "Max length for Name is 30");

           //AGE or DOB...
           frmvalidator.addValidation("txtDOB", "req", "Please enter your Agr/DOB");
           // CODE FOR DATE TIME


           //MOBILE NO...
           frmvalidator.addValidation("txtMobile", "req", "Please enter your Mobile No.");
           frmvalidator.addValidation("txtMobile", "minlen=10", "Min Digits for Mobile No. is 10");
           frmvalidator.addValidation("txtMobile", "maxlen=10", "Max Digits for Mobile No. is 10");
           frmvalidator.addValidation("txtMobile", "regexp=^[7-9][0-9]{9}$", "Invalid Mobile No.");

           
           //EMAIL ADDRESS...
           frmvalidator.addValidation("txtEmail", "req", "Please enter your Email ADDRESS");
           frmvalidator.addValidation("txtEmail", "email", "Please enter Valid Email ADDRESS");

           //GENDER
           frmvalidator.addValidation("ddlGender", "dontselect=Select", "Please Select Gender");
           
           
           //PASSWORD...
           frmvalidator.addValidation("txtPassword", "req", "Please enter your Password");
           frmvalidator.addValidation("txtPassword", "minlen=4", "Min length for Password is 4");
           frmvalidator.addValidation("txtPassword", "maxlen=16", "Max length for Password is 16");
           frmvalidator.setAddnlValidationFunction(DoCustomValidation);
           //PROFILE SUBMITED BY...
           //frmvalidator.addValidation("txtPwd", "req", "Please enter your Password");
           //DEFAULT

       }
       function DoCustomValidation() {

           var x = new Date(document.getElementById('<%= txtDOB.ClientID %>').value);
           var Cnow = new Date(); //current Date
           if (Cnow.getFullYear() - x.getFullYear() < 18) {
               sfm_show_error_msg('You Should Be Atleast 18 Year Old', document.getElementById('<%= txtDOB.ClientID %>'));
               return false;
           }
           return true;
       }

//       function SearchLogin() {

//           frmvalidator.clearAllValidations();
//           frmvalidator.EnableMsgsTogether();
//           frmvalidator.addValidation("txtName", "req", "Please enter your Name");
//           frmvalidator.addValidation("txtName", "minlen=4", "Min length for User ID is 4");
//           frmvalidator.addValidation("txtName", "maxlen=30", "Max length for User ID is 30");
//           //frmvalidator.addValidation("txtName", "alpha", "Alphabetic chars only");
//       }
            
            </script>
<div class="cleaner"></div>
    <div id="templatemo_main">
    	<div style="padding:10px 0 10px 0;"><img src="images/B2.png" /></div>
        


        <div class="image_frame_430 float_l">
            <h2>Success Stories</h2>
           
             <table style="width: 100%;">
                <tr>
                    <td>
                     <img src="images/gallery/A2.png" />
                    </td>
                    <td>
                        <h4>Rohan Rajput And Neelam </h4>
                        <p>Socially Connected Through <strong>ShaadiSaagai.com </strong> For More<a href="#"> Click Here</a> </p>
                    </td>
                 
                </tr>
                <tr>
                   
                    <td>
                    <br />
                        <img src="images/gallery/A1.png" />
                    </td>
                    <td>
                        <h4>Rohan Rajput And Neelam </h4>
                        <p>Socially Connected Through <strong>ShaadiSaagai.com </strong> For More<a href="#"> Click Here</a> </p>
                    </td>
                </tr>
                
            </table>
        </div>
        <div class="image_frame_430 float_r">
            
        
        	<h2>Browse Your Match</h2>
        <div class="rp_box">
             <div style="float:right;padding-right:20px;">  <a href="#"><img src="images/templatemo_image_062.png" alt="Image 06" /></a>
              <div style="float:left;"><strong >Vivek Tiwari</strong> <br />Age:-24<br />Bangalore<br /><a href="SearchResult.aspx">More..</a> </div></div>
              
            	<a href="#"><img src="images/templatemo_image_063.png" alt="Image 06" /></a>
                <div ><strong >Nilesh Gupta</strong> <br />Age:-25<br />Chhenai<br /><a href="SearchResult.aspx">More..</a> </div>
             
                <div class="cleaner"></div>
            </div>
            <div class="rp_box">
             <div style="float:right;padding-right:20px;">  <a href="#"><img src="images/templatemo_image_061.png" alt="Image 06" /></a>
              <div style="float:left;"><strong >Sonal Rao</strong> <br />Age:-25<br />Chhenai<br /><a href="SearchResult.aspx">More..</a> </div></div>
              
            	<a href="#"><img src="images/templatemo_image_06.png" alt="Image 06" /></a>
                <div ><strong >Sonal Rao</strong> <br />Age:-25<br />Chhenai<br /><a href="SearchResult.aspx">More..</a> </div>
             
                <div class="cleaner"></div>
                <br /><a href="SearchResult.aspx" <div style="float:right;"><input type="submit" class="btnLogin" value="Search More"  /></div>
            </div>
            &nbsp;</div>
        
		<br class="cleaner" />
    </div> <!-- end of main -->
    
    <div id="templatemo_footer">
    	<div class="col_3">
        	<h5>Religion</h5>
            <P><a href="#">Hindu</a> | <a href="#">Muslim</a> | <a href="#">Christian</a> | <a href="#">Sikh</a> | <a href="#">Inter Religion</a> </P>
 
            <h5>Community</h5>
            <P><a href="#">Agarwal</a> | <a href="#">Brahmin</a> | <a href="#">Jain</a> | <a href="#">Punjabi </a>| <a href="#">Rajput</a> | <a href="#">Telugu</a> | <a href="#">Rajasthani </a>  </P>

             <h5>Grooms By Profession</h5>
            <P><a href="#">Doctor</a> | <a href="#">Engineers</a> | <a href="#">Homely</a> | <a href="#">Govt. Servant</a>  </P>
            <h5>Brides By Profession</h5>
            <P><a href="#">Doctor</a> | <a href="#">Engineers</a> | <a href="#">Homely</a> | <a href="#">Govt. Servant</a>  </P>
        </div>
        <div class="col_3">
        	<h5>Twitter</h5>
            <ul class="twitter_post">
	            <li></li>
                <li></a></li>
                <li></li>
			</ul>
            
        </div>
        <div class="col_3 col_l">
        <h5>About</h5>
        <div style="float:right"> <h4><a href="ContactUs.aspx">FeedBack</a></h4>
        <h4><a href="#">FAQs</a></h4>
        <h4><a href="#content1" title="Content Lightbox">Policy</a></h4></div>

        <h4><a href="#content" title="Content Lightbox">About Us</a></h4>
        <h4><a href="#">Search</a></h4>
        <h4><a href="ContactUs.aspx">Contact Us</a></h4>
			<h5>Live Suport</h5>
            <img src="images/livesuprot.png"  alt="Live Saport"/>
            <div class="footer_social_button">
                <a href="#"><img src="images/facebook-32x32.png" title="facebook" alt="facebook" /></a>
                <a href="#"><img src="images/flickr-32x32.png" title="flickr" alt="flickr" /></a>
                <a href="#"><img src="images/twitter-32x32.png" title="twitter" alt="twitter" /></a>
                <a href="#"><img src="images/youtube-32x32.png" title="youtube" alt="youtube" /></a>
                <a href="#"><img src="images/rss-32x32.png" title="rss" alt="rss" /></a>
			</div>       		
        </div>
        <div class="cleaner"></div>
    </div> <!-- end of footer -->
    </div>

<div id="templatemo_cr_bar_wrapper">
	<div id="templatemo_cr_bar">
    	All rights reserved To shaadisaagai.com
    </div>
</div>




</body>

</html>
