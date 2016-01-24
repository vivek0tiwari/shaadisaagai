<%@ Page Title="" Language="C#" MasterPageFile="~/User/MasterPage.master" AutoEventWireup="true" CodeFile="UpdateMembership.aspx.cs" Inherits="User_UpdateMembership" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" type="text/css" href="http://cdn.webrupee.com/font">
    <script src=http://cdn.webrupee.com/js type=”text/javascript”></script>
<style type="text/css">
.cssguycomments {background:#eee;border:#ddd;padding:8px;margin-bottom:40px;}
.cssguycomments p {font:normal 12px/18px verdana;}

a img {border:0;vertical-align:text-bottom;}
table {border-collapse:collapse;}
th.side {
	background: transparent url(i/bg_th_side.gif) no-repeat bottom left;width:100px;
}
td.side {
	text-align:right;
	background: transparent url(i/bg_td_side.gif) no-repeat bottom left;
	width:180px;
	font:bold 12px/15px verdana;
	color:#6e6f37;
	padding-right:8px;
}

th {
	height:64px;
	border-right:1px solid #fff;
	vertical-align:bottom;
	color:#fff;
	font:normal 21px/27px arial;
	letter-spacing:2px;
	background:transparent url(i/bg_th.gif) no-repeat bottom left;
	}
td {
	text-align:center;
	background:transparent url(i/bg_td.gif) no-repeat bottom left;
	border-right:1px solid #fff;
	color:#fff;
	width:108px;
	height:40px;
	font:bold 12px/18px verdana;
}
td.on {background:transparent url(i/bg_td_on.gif) no-repeat bottom left;}
th.on {
	background:transparent url(i/bg_th_on.gif) no-repeat bottom left;
	padding-bottom:9px;
	width:148px;
}

tfoot td {
	background:transparent url(i/bg_foot_td.gif) no-repeat top left;
	height:64px;
	vertical-align:top;
	padding-top:8px;
}
tfoot td.on {
	background:transparent url(i/bg_foot_td_on.gif) no-repeat top left;
	padding-top:16px;
}
tfoot td.side {background: transparent url(i/bg_foot_td_side.gif) no-repeat top left;}

#formcontainer {
	width:350px;
	height:239px;
	background:transparent url(i/bg_form.gif) no-repeat top left;
	position:absolute;
	top:24px;
	left:341px;
}
#formcontainer form {
	padding:8px 10px;
	margin:0;
}
#formcontainer h2 {
	margin:0;
	padding:0 0 14px 0;
	font:bold 21px/27px arial;
	color:#fff;
}
#formcontainer fieldset {
	border:none;
	padding:0;
}
#formcontainer label {
	display:block;
	float:left;
	font:bold 12px/18px verdana;
	color:#fff;
	padding-bottom:12px;
}
#formcontainer label.email {
	width:350px;
}
#formcontainer label.email input {
	width:340px;
}
#formcontainer label.password {
	clear:left;
	padding-right:40px;
}
#formcontainer label.password input,
#formcontainer label.retype input {
	width:150px;
}
#formcontainer fieldset.buttons {
	padding-top:10px;
	clear:left;
}
#prices {
	position:relative;
}

</style>

<!-- because ie is a little different with its positioning... -->
<!--[if lte IE 8]>
<style type="text/css">
#formcontainer {
	top:34px;
}
</style>
<![endif]-->

<script type="text/javascript">
    /*
    For functions getElementsByClassName, addClassName, and removeClassName
    Copyright Robert Nyman, http://www.robertnyman.com
    Free to use if this text is included
    */
    function getElementsByClassName(className, tag, elm) {
        var testClass = new RegExp("(^|\\s)" + className + "(\\s|$)");
        var tag = tag || "*";
        var elm = elm || document;
        var elements = (tag == "*" && elm.all) ? elm.all : elm.getElementsByTagName(tag);
        var returnElements = [];
        var current;
        var length = elements.length;
        for (var i = 0; i < length; i++) {
            current = elements[i];
            if (testClass.test(current.className)) {
                returnElements.push(current);
            }
        }
        return returnElements;
    }

    function addClassName(elm, className) {
        var currentClass = elm.className;
        if (!new RegExp(("(^|\\s)" + className + "(\\s|$)"), "i").test(currentClass)) {
            elm.className = currentClass + ((currentClass.length > 0) ? " " : "") + className;
        }
        return elm.className;
    }

    function removeClassName(elm, className) {
        var classToRemove = new RegExp(("(^|\\s)" + className + "(\\s|$)"), "i");
        elm.className = elm.className.replace(classToRemove, "").replace(/^\s+|\s+$/g, "");
        return elm.className;
    }

    function hasClass(el, c) {
        if (!el || !el.className.length) return;
        var bits = el.className.split(' '), has = false;
        for (var j = 0; j < bits.length; j++) if (bits[j] === c) has = true;
        return has;
    }

    function activateThisColumn(column) {
        var table = document.getElementById('pricetable');
        var form = document.getElementById('formcontainer');

        // first, remove the 'on' class from all other th's
        var ths = table.getElementsByTagName('th');
        for (var g = 0; g < ths.length; g++) {
            removeClassName(ths[g], 'on');
            if (!hasClass(ths[g], 'side')) {
                ths[g].style.display = 'none';
            }
        }
        // then, remove the 'on' class from all other td's
        var tds = table.getElementsByTagName('td');
        for (var m = 0; m < tds.length; m++) {
            removeClassName(tds[m], 'on');
            if (!hasClass(tds[m], 'side')) {
                tds[m].style.display = 'none';
            }
        }

        // now, add the class 'on' to the selected th
        var newths = getElementsByClassName(column, 'th', table);
        for (var h = 0; h < newths.length; h++) {
            addClassName(newths[h], 'on');
            newths[h].style.display = '';
            // not all browsers like display = 'block' for cells
        }
        // and finally, add the class 'on' to the selected td
        var newtds = getElementsByClassName(column, 'td', table);
        for (var i = 0; i < newtds.length; i++) {
            addClassName(newtds[i], 'on');
            newtds[i].style.display = '';
            // not all browsers like display = 'block' for cells
        }
        // show the form!
        form.style.display = 'block';
    }

    function hideTheForm() {
        // get the form
        var form = document.getElementById('formcontainer');
        // hide the form
        form.style.display = 'none';

        // now get the hidden table cells and show them again
        var table = document.getElementById('pricetable');
        var tds = table.getElementsByTagName('td');
        for (var i = 0; i < tds.length; i++) {
            tds[i].style.display = '';
        }
        var ths = table.getElementsByTagName('th');
        for (var k = 0; k < ths.length; k++) {
            ths[k].style.display = '';
        }
    }



</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <br />   

       


<div class="cssguycomments">
<p>MEMBERSHIP PLAN FOR USER...</p>
</div>

<div id="prices">
<div id="formcontainer" style="display:none;">
	<form action="#">
		<h2>Make Request For Membership</h2>
		<fieldset>
			<label for="SelectPlane" class="email">
				Select Your Plan<br />
				
    <asp:DropDownList ID="ddlPlane" runat="server">
    </asp:DropDownList>
			</label>
			<label for="crazypassword" class="password">
				Your Message<br />
			<asp:TextBox ID="txtMsg" runat="server" TextMode="MultiLine" Height="75px" ></asp:TextBox>
			</label>
			
		</fieldset>
		<fieldset class="buttons">
			<input
				type="image"
				alt="Cancel"
				src="i/button_cancel.gif"
				onclick="hideTheForm();return false;" />
		
        <asp:ImageButton ID="btnSendReq" runat="server" ImageUrl="i/button_submit.gif" 
                onclick="btnSendReq_Click" />
      
		</fieldset>
	</form>
</div>

<table id="pricetable">
	<thead>
		<tr>
			<th class="side">&nbsp;</th>
			<th class="choiceA">Basic</th>
			<th class="choiceB">Premium</th>
			<th class="choiceC on">Silver</th>
			<th class="choiceD">Gold</th>
            <th class="choiceE">Platinum</th>
            <th class="choiceF">Dimond</th>            
		</tr>
	</thead>
	<tfoot>
		<tr>
			<td class="side">&nbsp;</td>
			<td class="choiceA"><a href="signUpChoiceA.html" onclick="activateThisColumn('choiceA');return false;"><img src="i/choose.gif" alt="Choose" /></a></td>
			<td class="choiceB"><a href="signUpChoiceB.html" onclick="activateThisColumn('choiceB');return false;"><img src="i/choose.gif" alt="Choose" /></a></td>
			<td class="choiceC on"><a href="signUpChoiceC.html" onclick="activateThisColumn('choiceC');return false;"><img src="i/choose.gif" alt="Choose" /></a></td>
			<td class="choiceD"><a href="signUpChoiceD.html" onclick="activateThisColumn('choiceD');return false;"><img src="i/choose.gif" alt="Choose" /></a></td>
			<td class="choiceE"><a href="signUpChoiceE.html" onclick="activateThisColumn('choiceE');return false;"><img src="i/choose.gif" alt="Choose" /></a></td>
            <td class="choiceF"><a href="signUpChoiceE.html" onclick="activateThisColumn('choiceE');return false;"><img src="i/choose.gif" alt="Choose" /></a></td>
		</tr>
	</tfoot>
	<tbody>
		<tr>             
			<td class="side">Price</td>
			<td class="choiceA">500/1,000 <span class="WebRupee">&#x20B9;</span></td>
			<td class="choiceB">2,500 <span class="WebRupee">&#x20B9;</span></td>
			<td class="choiceC on">3,000 <span class="WebRupee">&#x20B9;</span></td>
			<td class="choiceD">5,000 <span class="WebRupee">&#x20B9;</span></td>
			<td class="choiceE">7,500 <span class="WebRupee">&#x20B9;</span></td>
            <td class="choiceF">10,000 <span class="WebRupee">&#x20B9;</span></td>
		</tr>
		<tr>
			<td class="side">Duration</td>
			<td class="choiceA">1 Month</td>
			<td class="choiceB">2 Month</td>
			<td class="choiceC on">3 Month</td>
			<td class="choiceD">6 Month</td>
			<td class="choiceE">9 Month</td>
            <td class="choiceF">12 Month</td>
		</tr>
		<tr>
			<td class="side">Contects</td>
			<td class="choiceA">10/25</td>
			<td class="choiceB">65</td>
            <td class="choiceC">80</td>
            <td class="choiceD">175</td>
            <td class="choiceE">275</td>
            <td class="choiceF">390</td>

			
		</tr>
		<tr>
			<td class="side">Horoscope</td>
			<td class="choiceA"><img src="../i/cross.png" alt="yes" /></td>
			<td class="choiceB"><img src="../i/cross.png" alt="yes" /></td>
			<td class="choiceC on"><img src="../i/cross.png" alt="yes" /></td>
			<td class="choiceD"><img src="../i/check.png" alt="yes" /></td>
			<td class="choiceE"><img src="../i/check.png" alt="yes" /></td>
            <td class="choiceF"><img src="../i/check.png" alt="yes" /></td>
		</tr>
	</tbody>
</table>
</div>
<div class=cleaner></div>

</asp:Content>

