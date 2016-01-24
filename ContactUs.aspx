<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="ContactUs" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<title>Contact Us</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <div class="sidebar1" >
         
    <div class="sidebarheading">
       
  ContaContact Us 
        

   </div><br />
<div class="image_frame_964" style=" Width:720px; padding:10px 15px 15px 15px; margin:0px 0 15px 10px;margin-top:-38px;height:auto" >
     

  <table style="width: 100%;">
            <tr>
               
                <td>
                    <asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
               
                <td>
                   <h5> Name</td>
                <td>
                    <asp:TextBox ID="txtUserId" runat="server" class="textbox" MaxLength="9"></asp:TextBox></td>
           
           
                <td>
                    &nbsp;</td>
                
            </tr>
            <tr>
                <td>
                    <h5>Mobile No. *</h5></td>
                
                <td>
                    <asp:TextBox ID="txtMoNo" runat="server" class="textbox" MaxLength="10"></asp:TextBox>
                    <asp:FilteredTextBoxExtender ID="txtMoNo_FilteredTextBoxExtender" 
                        runat="server" Enabled="True" TargetControlID="txtMoNo" ValidChars="0123456789">
                    </asp:FilteredTextBoxExtender>
                </td>
                
            </tr>
            <tr>
                <td>
                   <h5> 
                       Email *</h5>       </td>
                <td>
                    

                    <asp:TextBox ID="txtEmail" runat="server" class="textbox"></asp:TextBox>
                    

                  </td>
                
            </tr>
            <tr>
                <td>
                    <h5> Your Location(City)  *</h5>  </td>
                <td>
                    

                    <asp:TextBox ID="txtCity" runat="server" class="textbox"></asp:TextBox>
                    

                  </td>
                
            </tr>
            <tr>
                <td>
                    <h5> Youre Query</h5> </td>
                <td>
                    

                     <asp:TextBox ID="TextBox1" runat="server" class="textbox" TextMode="MultiLine" ></asp:TextBox></td>
                
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    

                    <asp:Label ID="lblError" runat="server" Text="" ForeColor="Red"></asp:Label>
                    

                  </td>
                
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    

                   <asp:Button ID="btnSubmit" runat="server" Text="Submit" style="float :none" class="btnLogin" 
                      OnClientClick="ValidateForm();" onclick="btnSubmit_Click"  />
                    <asp:Button ID="btnCancle" runat="server" Text="Cancle" style="float :none" 
                        class="btnLogin" onclick="btnCancle_Click" 
                         />
                  </td>
                
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    

                    &nbsp;</td>
                
            </tr>
        </table>



      
       
       </div>
  <script language="JavaScript" type="text/javascript"
    xml:space="preserve">

      function ValidateForm() {
          var frmvalidator = new Validator("form1");

          //PERSONAL DETAIL

          //About Me 
          frmvalidator.EnableMsgsTogether();
          frmvalidator.addValidation("txtUserId", "req", "Please Insert Your Name");
          frmvalidator.addValidation("txtMoNo", "req", "Invalid Mobile  No.");
          frmvalidator.addValidation("txtMoNo", "minlen=10", "Invalid Mobile  No.");
          frmvalidator.addValidation("txtEmail", "req", "Please Enter Email");
          frmvalidator.addValidation("txtEmail", "email", "Please Enter Email");
          frmvalidator.addValidation("txtCity", "req", "Please Enter Your Location ");
          frmvalidator.addValidation("TextBox1", "req", "Please Enter Your Query ");

          













      }
           </script>
</asp:Content>

