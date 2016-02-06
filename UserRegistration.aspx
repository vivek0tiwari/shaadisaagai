<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserRegistration.aspx.cs" Inherits="UserRegistration" validateRequest="false" enableEventValidation="false"  %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
 <head id="Head1" runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Shaadi Saagai </title>
     <link href="css/Controls.css" rel="stylesheet" type="text/css" />
<link href="css/templatemo_style.css" rel="stylesheet" type="text/css" />

  <script src="Scripts/jquery-1.4.1.min.js" type="text/javascript"></script>
     


     <script src="Scripts/jquery-1.4.1.min.js" type="text/javascript"></script>
    <link href="css/Validation/validationEngine.jquery.css" rel="stylesheet" />
    <link href="css/Validation/template.css" rel="stylesheet" />

     <script src="js/Validation/jquery-1.8.2.min.js"></script>
    
    <script src="js/Validation/jquery.validationEngine.js"></script>


     <link href="css/slide2.css" rel="stylesheet" type="text/css" />
<style>
.hideshow
{
	color:Red;
	font-size :13px;
	float:right;
	cursor:pointer;
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
     <script src="js/gen_validatorv4.js" type="text/javascript"></script>

     <link href="css/Validation/validationEngine.jquery.css" rel="stylesheet" />
     <script src="js/Validation/jquery-1.8.2.min.js"></script>
     <script src="js/Validation/jquery.validationEngine.js"></script>
     <style >
     .smallChar
     {
         font-size:small;
         
     }
     .RedFont
     {
         color:Red;
     }
     </style>
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
</head>
<body>

<div id="templatemo_wrapper">
   <div class="lightbox" id="content">
			<div class="w60p h400 scroll">
		<h2>TERMS & CONDITIONS</h2>
<h3>shaadisaagai.com</h3>
<h3>DEAR USER: </h3>

<h3>Welcome to shaadisaagai.com</h3>

<p>Shaadisagai and its affiliates provide their services to you subject to the following terms and conditions. On your visit or signing up at Shaadisagai, you consciously accept the terms and conditions as set out here in below. In addition, when you use or visit any current or future Shaadisagai service or any business affiliated with Shaadisagai, whether or not included in the Shaadisagai Web site, you will also be subject to the guidelines and conditions applicable to such service or business. Please read the various services provided by Shaadisagai before making any payment in respect of any service. </p>

<p>The Users availing services from Shaadisagai shall be deemed to have read, understood and expressly accepted and agreed to the terms and conditions here of and this agreement shall govern the relationship between you and Shaadisagai and all transactions or services by, with or in connection with Shaadisagai for all purposes, and shall be unconditionally binding between the parties without any reservation. All rights, privileges, obligations and liabilities of you and/or Shaadisagai with respect to any transactions or services by, with or in connection with Shaadisagai for all purposes shall be governed by this agreement. The terms and conditions may be changed and/or altered by Shaadisagai from time to time at its sole discretion. </p>

<h3>General usage</h3>
<p>
1.	The site is only for the personal use of individual members, and cannot be used for commercial gains or interests. This includes (but is not limited to) providing links to other web sites, whether deemed competitive to the site or otherwise.
2.	Organizations, companies, and/or businesses cannot become members of the site.
3.	A user cannot create multiple profiles of his/her on the site. The site reserves the right to deactivate all such profiles without refund of any membership fee, if applicable
4.	Users are responsible for maintaining the confidentiality of their account and password and for restricting access to their computer, and they agree to accept responsibility for all activities that occur under their account or password.
</p>
<h3>Membership</h3>
<p>
5.	Membership fees are not refundable if a member chooses to terminate the membership
</p>
<h3>Content</h3>
<p>
6.	All users are responsible for the content and information [including profile and photograph] posted on the site. No content in whatever form that is defamatory, blasphemous, abusive, obscene, sexually oriented, profane, intimidating, illegal or in violation of the rights of any person, including intellectual property rights will be allowed on the site.
</p>
<h3>Conduct</h3>
<p>
9.	Users at no point of time will indulge in activities such as dating, flirting, friendship etc when sending messages to users of the opposite sex. The purpose should solely be limited to that of finding a life partner.
</p>

<h3>Disclaimer</h3>
<p>
10.	The site has the right to suspend your profile without any prior notice

11.	The site does not vouch for or subscribe to the claims and representations made by users regarding their personal particulars. Users are advised to make appropriate/thorough enquiries before acting upon any matrimonial advertisement.


12.	The site reserves the right to involve itself in the event of disputes between or among the members, though it may facilitate an amicable resolution of such disputes.

13.	All content on the site is owned by the site. Except for that information which is in the public domain or for which the user has been given permission, the user cannot copy, modify, publish, transmit, distribute, perform, display, or sell any such proprietary information. Any such act or an attempted act on their part shall constitute a violation of this Agreement and the membership is liable to be terminated without refund of any of your unused Subscription fees.

14.	The site will maintain confidential, all personal information as identified by the user. However, it may divulge such information if required by law.

15.	The membership may be terminated by either party by serving a written notice on the other. In no case will the Membership fees be refundable.
</p>

			</div>
		<p class="close"><a href="#" title="Close This Content Lightbox">Close <span>X</span></a></p>
		</div>        
	<div id="templatemo_header">
        
        
        <div class="cleaner"></div>
    </div> <!-- end of header -->
    
    <div style="background-image:url(images/templatemo_reg_Bg.png)" id="templatemo_menu" >
      
        <br style="clear: left" />
 </div> <!-- end of menu -->

  
    
<div class="cleaner">
   <form runat="server" id="form1">
                               <asp:Label ID="lblUser" runat="server" Text="" style="float:right;" ></asp:Label><asp:LinkButton ID="btnLogout" runat="server" onclick="btnLogout_Click" style="float:right;" >Logout</asp:LinkButton></div>
    <div id="templatemo_main">
    
         <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
     <div class="RedFont">*All Fields Mandatory</div>
       <div class="reg_header">Personal Details </div>
       
    <div class="image_frame_964" id="collapse1"  >
    <div class="content1">
    <table>
    <tr><td>About Me<font class="RedFont" >*</font></td><td>
        <asp:TextBox ID="txtAboutme" runat="server" class="textarea" TextMode="MultiLine" 
                                EnableViewState="False" Wrap="False"></asp:TextBox>
                            <br />
        <div class="smallChar">Min. 50 Characters</div> 
                            </td><td>Height<font class="RedFont" >*</font></td><td>         <asp:DropDownList ID="ddlHeight" runat="server" class="select" >
                
            </asp:DropDownList>
        </td>
        <td >Weight<font class="RedFont" >*</font></td><td> <asp:DropDownList ID="ddlWeight" runat="server" class="select" >
                            <asp:ListItem value="Select">Select</asp:ListItem>

													<asp:ListItem value="30">30 kilograms</asp:ListItem>
													<asp:ListItem value="31">31 kilograms</asp:ListItem>
													<asp:ListItem value="32">32 kilograms</asp:ListItem>
													<asp:ListItem value="33">33 kilograms</asp:ListItem>
													<asp:ListItem value="34">34 kilograms</asp:ListItem>
													<asp:ListItem value="35">35 kilograms</asp:ListItem>

													<asp:ListItem value="36">36 kilograms</asp:ListItem>
													<asp:ListItem value="37">37 kilograms</asp:ListItem>
													<asp:ListItem value="38">38 kilograms</asp:ListItem>
													<asp:ListItem value="39">39 kilograms</asp:ListItem>
													<asp:ListItem value="40">40 kilograms</asp:ListItem>
													<asp:ListItem value="41">41 kilograms</asp:ListItem>

													<asp:ListItem value="42">42 kilograms</asp:ListItem>
													<asp:ListItem value="43">43 kilograms</asp:ListItem>
													<asp:ListItem value="44">44 kilograms</asp:ListItem>
													<asp:ListItem value="45">45 kilograms</asp:ListItem>
													<asp:ListItem value="46">46 kilograms</asp:ListItem>
													<asp:ListItem value="47">47 kilograms</asp:ListItem>

													<asp:ListItem value="48">48 kilograms</asp:ListItem>
													<asp:ListItem value="49">49 kilograms</asp:ListItem>
													<asp:ListItem value="50">50 kilograms</asp:ListItem>
													<asp:ListItem value="51">51 kilograms</asp:ListItem>
													<asp:ListItem value="52">52 kilograms</asp:ListItem>
													<asp:ListItem value="53">53 kilograms</asp:ListItem>

													<asp:ListItem value="54">54 kilograms</asp:ListItem>
													<asp:ListItem value="55">55 kilograms</asp:ListItem>
													<asp:ListItem value="56">56 kilograms</asp:ListItem>
													<asp:ListItem value="57">57 kilograms</asp:ListItem>
													<asp:ListItem value="58">58 kilograms</asp:ListItem>
													<asp:ListItem value="59">59 kilograms</asp:ListItem>

													<asp:ListItem value="60">60 kilograms</asp:ListItem>
													<asp:ListItem value="61">61 kilograms</asp:ListItem>
													<asp:ListItem value="62">62 kilograms</asp:ListItem>
													<asp:ListItem value="63">63 kilograms</asp:ListItem>
													<asp:ListItem value="64">64 kilograms</asp:ListItem>
													<asp:ListItem value="65">65 kilograms</asp:ListItem>

													<asp:ListItem value="66">66 kilograms</asp:ListItem>
													<asp:ListItem value="67">67 kilograms</asp:ListItem>
													<asp:ListItem value="68">68 kilograms</asp:ListItem>
													<asp:ListItem value="69">69 kilograms</asp:ListItem>
													<asp:ListItem value="70">70 kilograms</asp:ListItem>
													<asp:ListItem value="71">71 kilograms</asp:ListItem>

													<asp:ListItem value="72">72 kilograms</asp:ListItem>
													<asp:ListItem value="73">73 kilograms</asp:ListItem>
													<asp:ListItem value="74">74 kilograms</asp:ListItem>
													<asp:ListItem value="75">75 kilograms</asp:ListItem>
													<asp:ListItem value="76">76 kilograms</asp:ListItem>
													<asp:ListItem value="77">77 kilograms</asp:ListItem>

													<asp:ListItem value="78">78 kilograms</asp:ListItem>
													<asp:ListItem value="79">79 kilograms</asp:ListItem>
													<asp:ListItem value="80">80 kilograms</asp:ListItem>
													<asp:ListItem value="81">81 kilograms</asp:ListItem>
													<asp:ListItem value="82">82 kilograms</asp:ListItem>
													<asp:ListItem value="83">83 kilograms</asp:ListItem>

													<asp:ListItem value="84">84 kilograms</asp:ListItem>
													<asp:ListItem value="85">85 kilograms</asp:ListItem>
													<asp:ListItem value="86">86 kilograms</asp:ListItem>
													<asp:ListItem value="87">87 kilograms</asp:ListItem>
													<asp:ListItem value="88">88 kilograms</asp:ListItem>
													<asp:ListItem value="89">89 kilograms</asp:ListItem>

													<asp:ListItem value="90">90 kilograms</asp:ListItem>
													<asp:ListItem value="91">91 kilograms</asp:ListItem>
													<asp:ListItem value="92">92 kilograms</asp:ListItem>
													<asp:ListItem value="93">93 kilograms</asp:ListItem>
													<asp:ListItem value="94">94 kilograms</asp:ListItem>
													<asp:ListItem value="95">95 kilograms</asp:ListItem>

													<asp:ListItem value="96">96 kilograms</asp:ListItem>
													<asp:ListItem value="97">97 kilograms</asp:ListItem>
													<asp:ListItem value="98">98 kilograms</asp:ListItem>
													<asp:ListItem value="99">99 kilograms</asp:ListItem>
													<asp:ListItem value="100">100 kilograms</asp:ListItem>
													<asp:ListItem value="101">101 kilograms</asp:ListItem>

													<asp:ListItem value="102">102 kilograms</asp:ListItem>
													<asp:ListItem value="103">103 kilograms</asp:ListItem>
													<asp:ListItem value="104">104 kilograms</asp:ListItem>
													<asp:ListItem value="105">105 kilograms</asp:ListItem>
													<asp:ListItem value="106">106 kilograms</asp:ListItem>
													<asp:ListItem value="107">107 kilograms</asp:ListItem>

													<asp:ListItem value="108">108 kilograms</asp:ListItem>
													<asp:ListItem value="109">109 kilograms</asp:ListItem>
													<asp:ListItem value="110">100 kilograms</asp:ListItem>
													<asp:ListItem value="111">111 kilograms</asp:ListItem>
													<asp:ListItem value="112">112 kilograms</asp:ListItem>
													<asp:ListItem value="113">113 kilograms</asp:ListItem>

													<asp:ListItem value="114">114 kilograms</asp:ListItem>
													<asp:ListItem value="115">115 kilograms</asp:ListItem>
													<asp:ListItem value="116">116 kilograms</asp:ListItem>
													<asp:ListItem value="117">117 kilograms</asp:ListItem>
													<asp:ListItem value="118">118 kilograms</asp:ListItem>
													<asp:ListItem value="119">119 kilograms</asp:ListItem>

													<asp:ListItem value="120">120 kilograms</asp:ListItem>
                
                
                
                
                
                
                
                
                
                
            </asp:DropDownList></td>
        </tr>
        <tr><td>About My Partner<font class="RedFont" >*</font></td><td>
        <asp:TextBox ID="txtAboutPatner" runat="server" class="textarea" TextMode="MultiLine" Wrap="False"></asp:TextBox>                     <br />
         <div class="smallChar">Min. 50 Characters</div> <td>Physical Status<font class="RedFont" >*</font>
         <br />  <br />
         Patner Pref. <font class="RedFont" >*</font>
         
         </td>
         <td>
            <asp:DropDownList ID="ddlPhysicleStatus" runat="server" class="select">
                <asp:ListItem>Select</asp:ListItem>
                <asp:ListItem>Normal</asp:ListItem>
                <asp:ListItem>Physically challenged from birth</asp:ListItem>
                <asp:ListItem>Physically challenged due to accident</asp:ListItem>
                <asp:ListItem>Mentally challenged from birth</asp:ListItem>
                <asp:ListItem>Mentally challenged due to accident</asp:ListItem>
                <asp:ListItem>Physical abnormality affecting only looks</asp:ListItem>
                <asp:ListItem>Physical abnormality affecting bodily functions</asp:ListItem>
                <asp:ListItem>Physically and mentally challenged</asp:ListItem>
                <asp:ListItem>HIV positive</asp:ListItem>
            </asp:DropDownList>
             <br />  <br />
             <asp:DropDownList ID="ddlCastbar" runat="server" class="select">
                <asp:ListItem>Select</asp:ListItem>
                <asp:ListItem>Cast No Bar</asp:ListItem>
                <asp:ListItem>In Same Cast</asp:ListItem>
            </asp:DropDownList>
           </td><td>
           Maritial status<font class="RedFont" >*</font></td>
           
           <td>
            <asp:DropDownList ID="ddlMaritialStatus" runat="server" class="select">
                <asp:ListItem>Select</asp:ListItem>
                <asp:ListItem>Single</asp:ListItem>
                <asp:ListItem>Divorced</asp:ListItem>
                <asp:ListItem>Widowed</asp:ListItem>
                <asp:ListItem>Separated</asp:ListItem>
            </asp:DropDownList> </td>
           </tr>
       
    </table>
    </div>
    </div>
     

      <div class="reg_header">Location Information</div>
       
    <div class="image_frame_964" id="Div1"  >
    <div class="content">
    <table>
    <tr><td>Country<font class="RedFont" >*</font></td><td>
        <asp:TextBox ID="txtCountry" runat="server" class="textbox" MaxLength="30" 
            ReadOnly="True" >India</asp:TextBox></td><td>State<font class="RedFont" >*</font></td><td>
           <asp:DropDownList ID="ddlState" runat="server" class="select" 
               AutoPostBack="True" onselectedindexchanged="ddlState_SelectedIndexChanged">
       <asp:ListItem>Select</asp:ListItem>
      
            </asp:DropDownList>
        </td></tr>
        <tr><td>City<font class="RedFont" >*</font></td><td>
        <asp:DropDownList ID="ddlCity" runat="server" class="select">
       
            </asp:DropDownList>

       </td><td>PIN Code<font class="RedFont" >*</font></td><td>
            <asp:TextBox ID="txtZip" runat="server" class="textbox" MaxLength="6" ></asp:TextBox>
            <asp:FilteredTextBoxExtender ID="txtZip_FilteredTextBoxExtender" runat="server" 
                Enabled="True" TargetControlID="txtZip" ValidChars="1234567890">
            </asp:FilteredTextBoxExtender>
        </td></tr>
    </table>
      </div>
    </div>
    
     
        <div class="reg_header">Education And Profession</div>
       
    <div class="image_frame_964" id="Div2"  >
    <div class="content">
    <table>
    <tr><td>Educational Qualification<font class="RedFont" >*</font><br /></td><td>
       <asp:DropDownList ID="ddlEducation" runat="server" class="select">
            </asp:DropDownList></td><td>Annual  Income<font class="RedFont" >*</font></td>
            <td>
           <asp:DropDownList ID="ddlIncome" runat="server" class="select">
               <asp:ListItem Value="Select"></asp:ListItem>
               <asp:ListItem Value="&lt;1,00,000"></asp:ListItem>
               <asp:ListItem Value="1,00,000-1,50,000"></asp:ListItem>
               <asp:ListItem Value="1,50,000-2,00,000"></asp:ListItem>
               <asp:ListItem Value="2,00,000-2,50,000"></asp:ListItem>
               <asp:ListItem Value="2,50,000-3,00,000"></asp:ListItem>
               <asp:ListItem Value="3,00,000-4,00,000"></asp:ListItem>
               <asp:ListItem Value="4,00,000-5,00,000"></asp:ListItem>
               <asp:ListItem Value="5,00,000-6,00,000"></asp:ListItem>
               <asp:ListItem Value="6,00,000-7,00,000"></asp:ListItem>
               <asp:ListItem Value="7,00,000-8,00,000"></asp:ListItem>
               <asp:ListItem Value="8,00,000-9,00,000"></asp:ListItem>
               <asp:ListItem Value="&gt;9,00,000"></asp:ListItem>
            </asp:DropDownList>
        <br /></td></tr>
       
        <tr><td>Profession<font class="RedFont" >*</font></td><td>
       <asp:DropDownList ID="ddlProfession" runat="server" class="select">
            </asp:DropDownList></td><td>Occupation</td><td>
            <asp:TextBox ID="txtOccupation" runat="server" class="textbox" MaxLength="50" ></asp:TextBox>
            <asp:FilteredTextBoxExtender ID="txtOccupation_FilteredTextBoxExtender" 
                runat="server" Enabled="True" FilterMode="InvalidChars" 
                InvalidChars="1234567890-=!@#$%^&amp;*()_+][}{';&quot;:/.?&gt;,&lt;" 
                TargetControlID="txtOccupation">
            </asp:FilteredTextBoxExtender>
        </td></tr>
    </table>
       </div>
    </div>
      <div class="reg_header" >Habbit
				</div>
       
    <div class="image_frame_964"  >
    <div class="content">
    <table>
    <tr><td>Food<font class="RedFont" >*</font></td><td>
        <asp:RadioButtonList ID="rdoDiet" runat="server"  
                                  class="radio ">
        </asp:RadioButtonList>
        </td><td>Drink<font class="RedFont" >*</font></td><td>
            <asp:RadioButtonList ID="rdoDrink" runat="server"  
                                  class="radio " OnDataBinding="rdoDrink_DataBinding" OnDataBound="rdoDrink_DataBound">
        </asp:RadioButtonList>
        </td>
        <td>Smoke<font class="RedFont" >*</font></td><td>
            <asp:RadioButtonList ID="rdoSmoke" runat="server"  
                                  class="radio ">
        </asp:RadioButtonList>
        </td>
        </tr>
        
    </table>
       </div>
    </div>
    
      
        <div class="reg_header">Religious Information</div>
       
    <div class="image_frame_964"   >
    <div class="content">
    
       
       
    <table>
    <tr><td>Religion<font class="RedFont" >*</font></td><td>
       <asp:DropDownList ID="ddlReligion" runat="server" class="select" 
            AutoPostBack="True" onselectedindexchanged="ddlReligion_SelectedIndexChanged" >
            </asp:DropDownList>
            
            </td><td>Cast<font class="RedFont" >*</font></td><td>
            
                <asp:DropDownList ID="ddlcast" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="ddlcast_SelectedIndexChanged">
                </asp:DropDownList>
              
            
                <asp:TextBox ID="txtOther" runat="server" Visible="False"></asp:TextBox>
              
            
        </td></tr> <asp:HiddenField ID="hiddenField" runat="server" />
        <tr><td>Rashi</td><td>
       <asp:DropDownList ID="ddlRasi" runat="server" class="select"  >
            </asp:DropDownList></td><td>Gothram</td><td>
            <asp:TextBox ID="txtGothram" runat="server" class="textbox" MaxLength="50" ></asp:TextBox>
            <asp:FilteredTextBoxExtender ID="txtGothram_FilteredTextBoxExtender" 
                runat="server" Enabled="True" FilterMode="InvalidChars" 
                InvalidChars="`1234567890-=+_)(*&amp;^%$#@!~[]\|}{;'&quot;:,./?&gt;&lt;" 
                TargetControlID="txtGothram">
            </asp:FilteredTextBoxExtender>
        </td></tr>
        <tr><td>Star</td><td>
       <asp:DropDownList ID="ddlStar" runat="server" class="select">
            </asp:DropDownList></td><td>Dosham<font class="RedFont" >*</font></td><td>
           <asp:DropDownList ID="Dosam" runat="server" class="select">
               <asp:ListItem>Select</asp:ListItem>
               <asp:ListItem>Yes</asp:ListItem>
               <asp:ListItem>No</asp:ListItem>
           </asp:DropDownList>
        </td></tr>
    </table>
        
       
       </div>
    </div>
      
      

  <div class="reg_header" >Physical Info And Other
				</div>
       
    <div class="image_frame_964"   >
    <div class="content1">
    <table>
    <tr><td>Body Type<font class="RedFont" >*</font></td><td>
        <asp:RadioButtonList ID="ddlBodyType" runat="server"  
                                   RepeatLayout="Flow">
        </asp:RadioButtonList>
        </td><td>Complexion<font class="RedFont" >*</font></td><td>
            <asp:RadioButtonList ID="ddlComplextion" runat="server"  
                                   RepeatLayout="Flow">
        </asp:RadioButtonList>
        </td>
        <td>Blood Group<font class="RedFont" >*</font></td><td>
            <asp:DropDownList ID="ddlBlodGroup" runat="server" class="select ">
                                     <asp:ListItem value="Select">Select</asp:ListItem>
                                     <asp:ListItem value="Dont Know">Dont Know</asp:ListItem>
													<asp:ListItem value="A+">A+</asp:ListItem>

													<asp:ListItem value="A-">A-</asp:ListItem>
													<asp:ListItem value="B+">B+</asp:ListItem>
													<asp:ListItem value="B-">B-</asp:ListItem>
													<asp:ListItem value="AB+">AB+</asp:ListItem>
													<asp:ListItem value="AB-">AB-</asp:ListItem>
													<asp:ListItem value="O+">O+</asp:ListItem>

													<asp:ListItem value="O-">O-</asp:ListItem>
            </asp:DropDownList>
        </td>
        </tr>
        <tr><td>Parent&#39;s Contact No<font class="RedFont" >*</font></td><td>
            <asp:TextBox ID="txtContact" runat="server" class="textbox " MaxLength="10"></asp:TextBox>
            <asp:FilteredTextBoxExtender ID="txtContact_FilteredTextBoxExtender" 
                runat="server" Enabled="True" TargetControlID="txtContact" 
                ValidChars="1234567890">
            </asp:FilteredTextBoxExtender>
            </td>
            <td>Family Status</td><td>  <asp:DropDownList ID="ddlFamilyStatus" runat="server" class="select ">
            <asp:ListItem value="Select">Select</asp:ListItem>
            <asp:ListItem value="Middle Class">Middle Class</asp:ListItem>
													<asp:ListItem value="Upper Middle Class">Upper Middle
														Class</asp:ListItem>
													<asp:ListItem value="Rich &amp; Affulant">Rich &amp; Affulant</asp:ListItem>
            </asp:DropDownList></td>
            <td>Mother Toungue</td><td><asp:DropDownList ID="ddlMtoungue" runat="server" class="select "></asp:DropDownList></td>
        </tr>
    </table>
        </div>
        

    </div>
    <br />
        <div align="center" >
        <p>
            <asp:CheckBox ID="CheckBox1" runat="server" /><a href="#content" title="Content Lightbox" class="RedFont">I Accept The Terms And Condition*</a>
            </p>
        <asp:Button ID="Button1" runat="server" Text="Register Me" class="btnLogin" style="float:none;"
                 onclick="Button1_Click" OnClientClick="ValidateForm();" />
      
         <script language="JavaScript" type="text/javascript"
    >

             function ValidateForm() {
                 var frmvalidator = new Validator("form1");

                 //PERSONAL DETAIL

                 //About Me 
                 frmvalidator.EnableMsgsTogether();
                 frmvalidator.addValidation("txtAboutme", "req", "Please enter About You");
                 frmvalidator.addValidation("txtAboutme", "minlen=50", "Minimum characters for About You is 50");
                 frmvalidator.addValidation("txtAboutme", "maxlen=200", "Maximum characters for About You is 200");


                 //Height 
                 frmvalidator.addValidation("ddlHeight", "dontselect=Select", "Please Select Height");

                 //Weight 
                 frmvalidator.addValidation("ddlWeight", "dontselect=Select", "Please Select Weight");

                 //About My Patner 
                 frmvalidator.addValidation("txtAboutPatner", "req", "Please enter About Your Patner");
                 frmvalidator.addValidation("txtAboutPatner", "minlen=50", "Minimum characters for About Your Patner is 50");
                 frmvalidator.addValidation("txtAboutPatner", "maxlen=200", "Maximum characters for About Your Patner is 200");



                 //Physical Status 
                 frmvalidator.addValidation("ddlPhysicleStatus", "dontselect=Select", "Please Select Physical Status");
                 frmvalidator.addValidation("ddlMaritialStatus", "dontselect=Select", "Please Select Maritial Status");
                 frmvalidator.addValidation("ddlCastbar", "dontselect=Select", "Please Select Marriage Prefrence");
                 

                 frmvalidator.addValidation("ddlCity", "dontselect=", "Please Select City");
                 frmvalidator.addValidation("ddlCity", "dontselect=Select", "Please Select City");
                 

                 //Residential Status 
                 frmvalidator.addValidation("ddlState", "dontselect=Select", "Please Select  State");

                 //Pin Code
                 frmvalidator.addValidation("txtZip", "req", "Please enter Pin Code");
                 frmvalidator.addValidation("txtZip", "minlen=6", "Min length for Pin Code is 6");
                 frmvalidator.addValidation("txtZip", "maxlen=6", "Max length for Pin Code is 6");
                 //CODE FOR NUMERIC ONLY




                 //Education And Profession

                 //Educational Qualification
                 frmvalidator.addValidation("ddlEducation", "dontselect=Select", "Please Select Educational Qualification");


                 //Annual Incom

                 frmvalidator.addValidation("ddlIncome", "dontselect=Select", "Please Select  your Annual Incom");
                 frmvalidator.addValidation("CheckBox1", "shouldselchk=on", "Please Select term And Condition");
                 ddlMaritialStatus

                 frmvalidator.addValidation("ddlReligion", "dontselect=Select", "Please select Your Religion");

                 //Cast
                 //frmvalidator.addValidation("ddlCast1", "req", "Please select Your Cast");
                 frmvalidator.addValidation("ddlCast", "dontselect=Select", "Please select Your Cast");
                                  
                 //Blode Group
                 frmvalidator.addValidation("ddlBlodGroup", "dontselect=Select", "Please Select Blood Group");
                 //frmvalidator.addValidation("ddlBlodGroup", "req", "Please select your Blode Group");

                 //Parents Contects             
                 frmvalidator.addValidation("txtContact", "req", "Please enter your Parents Contects");
                 frmvalidator.addValidation("txtContact", "minlen=10", "Min length for Parents Contects is 10");
                 frmvalidator.addValidation("txtContact", "maxlen=10", "Max length for Parents Contects is 10");
                 //NUMERIC ONLY
                 frmvalidator.addValidation("ddlFamilyStatus", "dontselect=Select", "Please Select Family Status");
               frmvalidator.setAddnlValidationFunction(DoCustomValidation);
             }
             function DoCustomValidation() {

                 chktestValidator = new Validator("form1");


                 chktestValidator.addValidation("rdoDiet", "selone_radio", "Select Your Food Habbit");
                 chktestValidator.addValidation("rdoDrink", "selone", "You Are Missing To Fill Somethig In Habbit Section");
                 chktestValidator.addValidation("rdoSmoke", "selone", "You Are Missing To Fill Somethig In Habbit Section");
                 chktestValidator.addValidation("ddlBodyType", "selone", "Select Your Body Type");
                 chktestValidator.addValidation("ddlComplextion", "selone", "Select Your Body Complextion");
                 //Family Status
                
                 //frmvalidator.addValidation("ddlFamilyStatus", "req", "Please select your Family Status");
             }

         
        
           </script>   
    </div>
    
     
		<br class="cleaner" />
    </div> <!-- end of main -->
    
    <div id="templatemo_footer">
    	<div class="col_3">
        	<h5>Religion</h5>
            <P><a href="#">Hindu</a> | <a href="#">Muslim</a> | <a href="#">Christian</a> | <a href="#">Sikh</a> | <a href="#">Inter Religion</a> </P>
 
            <h5>Community</h5>
            <P><a href="#">Agarwal</a> | <a href="#">Brahmin</a> | <a href="#">Jain</a> | <a href="#">Panjabi </a>| <a href="#">Rajput</a> | <a href="#">Telgu</a> | <a href="#">Rajisthani </a>  </P>

      
           </div>
        <div class="col_3">
        	       <h5>Grooms and Brides By Profession</h5>
            <P><a href="#">Docter</a> | <a href="#">Engineers</a> | <a href="#">Homely</a> | <a href="#">Gov. Servent</a>  </P>
            
        </div>
        <div class="col_3 col_l">
        <h5>About</h5>
        <div style="float:right"> <h6><a href="ContactUs.aspx">FeedBack</a></h6>
        <h6><a href="#">FAQs</a></h6>
        <h6><a href="#">Policy</a></h6></div>

        <h6><a href="#">Services</a></h6>
        <h6><a href="#">Search</a></h6>
        <h6> <a href="ContactUs.aspx">Contact Us</a></h6>
			
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
</form>
</body>
</html>
