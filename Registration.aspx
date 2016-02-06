<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>

    <div class="sidebar1" >
         
    <div class="sidebarheading">
       
  New Registration
       
   </div>
   <div class="image_frame_964" style=" Width:720px; padding:10px 15px 15px 15px; margin:0px 0 15px 10px;margin-top:-38px;height:auto" >
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
                   
                   <h5> Name *</h5></td>
                <td>
                    <asp:TextBox ID="txtName" runat="server" class="textbox" MaxLength="9"></asp:TextBox>
                   
                   
                        <asp:FilteredTextBoxExtender ID="txtName_FilteredTextBoxExtender" 
                        runat="server" Enabled="True" FilterMode="InvalidChars" 
                        InvalidChars="1234567890-=+_)(*&amp;^!@#$%`~\][|}{';&quot;:/?&gt;,&lt;" 
                        TargetControlID="txtName">
                    </asp:FilteredTextBoxExtender>

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtName" ErrorMessage="*"></asp:RequiredFieldValidator>
                </td>
           
           
                <td>
                    &nbsp;</td>
                
            </tr>
            <tr>
                <td>
                    <h5>DOB *</h5></td>
                
                <td>
                    <asp:TextBox ID="txtDOB" runat="server" class="textbox" MaxLength="10"></asp:TextBox>
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
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txtDOB" ErrorMessage="*"></asp:RequiredFieldValidator>
                </td>
                
            </tr>
            <tr>
                <td>
                   <h5> 
                       Email *</h5>       </td>
                <td>
                    

                    <asp:TextBox ID="txtEmail" runat="server" class="textbox"></asp:TextBox>
                    

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="txtEmail" ErrorMessage="*"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ErrorMessage="Invalid Email Address" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                        ControlToValidate="txtEmail"></asp:RegularExpressionValidator>
                    

                  </td>
                
            </tr>
            <tr>
                <td>
                    <h5>Gender  *</h5>     </td>
                <td>
                    
  <asp:DropDownList ID="ddlGender" runat="server" class="txt_field" 
                        EnableViewState="False" Width="150px">
                        <asp:ListItem>Select</asp:ListItem>
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:DropDownList>

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ErrorMessage="*" InitialValue="Select" ControlToValidate="ddlGender"></asp:RequiredFieldValidator>

                  </td>
                
            </tr>
            <tr>
                <td>
                    <h5> 
                       Mobile No. *   <td>
                    

                  <asp:TextBox ID="txtMobile" runat="server" class="textbox" MaxLength="10"  
                        EnableViewState="False"></asp:TextBox>
                                        <asp:FilteredTextBoxExtender ID="txtMobile_FilteredTextBoxExtender" 
                        runat="server" Enabled="True" TargetControlID="txtMobile" 
                        ValidChars="1234567890">
                    </asp:FilteredTextBoxExtender>

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ErrorMessage="*" InitialValue="Select" ControlToValidate="txtMobile"></asp:RequiredFieldValidator>

                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                        ErrorMessage="Invalid Mobile No" 
                        ValidationExpression="^[7-9][0-9]{9}$" ControlToValidate="txtMobile"></asp:RegularExpressionValidator>
                    

                  </td>
                
            </tr>
            <tr>
                 <td>
                    <h5>Password *</h5></td>
                <td>
                    <asp:TextBox ID="txtPassword" runat="server" class="textbox" MaxLength="30" 
                        TextMode="Password" EnableViewState="False"></asp:TextBox>

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ErrorMessage="*" InitialValue="Select" ControlToValidate="txtPassword"></asp:RequiredFieldValidator>

                                        </td>
                
            </tr>
            <tr>
                <td>
                    <h5>Profile is submitted by *</h5> </td>
                <td>
                    

              <asp:DropDownList ID="ddlSubmittedBy" runat="server" class="txt_field" 
                        EnableViewState="False" Width="150px">
                        <asp:ListItem  value="Self">Self</asp:ListItem>
							<asp:ListItem value="Parent/Guardian">Parent/Guardian</asp:ListItem>
							<asp:ListItem value="Sibling">Sibling</asp:ListItem>
							<asp:ListItem value="Friend">Friend</asp:ListItem>
							<asp:ListItem value="Others">Others</asp:ListItem>
                    </asp:DropDownList>
                    

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                        ErrorMessage="*" InitialValue="Select" ControlToValidate="ddlSubmittedBy"></asp:RequiredFieldValidator>


                  </td>
                
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
    
         
              
               <br />
       

   </div>
</asp:Content>

