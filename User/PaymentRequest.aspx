<%@ Page Title="" Language="C#" MasterPageFile="~/User/MasterPage.master" AutoEventWireup="true" CodeFile="PaymentRequest.aspx.cs" Inherits="User_PaymentRequest" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <div class="sidebar1" >
         
    <div class="sidebarheading">
       
  Payment  Opotion 
        

   </div>
   <div class="image_frame_964" style=" Width:720px; padding:10px 15px 15px 15px; margin:0px 0 15px 10px;margin-top:-38px;height:auto" >
      <br /><br />
            <img src="../images/devideline.gif" width="700px" /><br /><br />
          <p>  Please  write a  Mail Once  You  Finish  The Payment  Process   or  Call  Us  7568600660 (Don’t Send Any SMS On Mobile)</p>
          <img src="../images/devideline.gif" width="700px" /><br />

  <table style="width: 100%;">
            <tr>
               
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
               
                <td>
                   <h5> User ID *</h5></td>
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
                    <h5>Plan Name  *</h5>     </td>
                <td>
                    

                    <asp:DropDownList ID="ddlPlaneName" runat="server" CssClass="select">
                    </asp:DropDownList>
                    

                  </td>
                
            </tr>
            <tr>
                <td>
                    <h5> 
                        Branch Name of Deposit *   <td>
                    

                    <asp:TextBox ID="txtBranchDeps" runat="server" class="textbox"></asp:TextBox>
                    

                    <asp:FilteredTextBoxExtender ID="txtBranchDeps_FilteredTextBoxExtender" 
                        runat="server" Enabled="True" FilterMode="InvalidChars" 
                        InvalidChars="1234567890~`!@#$%^&amp;*" TargetControlID="txtBranchDeps">
                    </asp:FilteredTextBoxExtender>
                    

                  </td>
                
            </tr>
            <tr>
                <td>
                   <h5> Amount Of Deposit  *</h5> </td>
                <td>
                    

                    <asp:TextBox ID="txtAmountDeps" runat="server" class="textbox"></asp:TextBox>
                    

                    <asp:FilteredTextBoxExtender ID="txtAmountDeps_FilteredTextBoxExtender" 
                        runat="server" Enabled="True" TargetControlID="txtAmountDeps" 
                        ValidChars="1234567890">
                    </asp:FilteredTextBoxExtender>
                    

                  </td>
                
            </tr>
            <tr>
                <td>
                    <h5> Deposit  Time *</h5> </td>
                <td>
                    

                    <asp:TextBox ID="txtDepsTime" runat="server" class="textbox"></asp:TextBox>
                    

                  </td>
                
            </tr>
            <tr>
                <td>
                    <h5> Transaction /Cheque No.  *</h5>  </td>
                <td>
                    

                    <asp:TextBox ID="txtTranCheque" runat="server" class="textbox"></asp:TextBox>
                    

                  </td>
                
            </tr>
            <tr>
                <td>
                    <h5> Comment  </h5> </td>
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



        <br />    <h2>Use The Following Account Detail For Transaction</p>   </h2>
        <div style="font-size:15px;font-family:@Dotum;font-variant:inherit;">
       <table style="width: 90%;">
           <tr>
               <td>
                   BANK
               </td>
               <td>
                   AXIS    BANK
               </td>
               
           </tr>
           <tr>
               <td>
                   Account Holder
               </td>
               <td>
                  BRAJMOHAN
               </td>
              
           </tr>
           <tr>
               <td>
                   Account No.
               </td>
               <td>
                  052010100596138
               </td>
             
           </tr>
           <tr><td>IFSC Code</td>
           
           <td>UTIB0000052</td>
           </tr>
           
          <tr><td>Branch Nmae</td>
          <td> JAYANAGAR ( BANGALORE)</td></tr>
           
       </table>
       </div>
   </div>
    
         
              
               <br />
       

   </div>
   <script language="JavaScript" type="text/javascript"
    xml:space="preserve">

       function ValidateForm() {
           var frmvalidator = new Validator("form1");

           //PERSONAL DETAIL

           //About Me 
           frmvalidator.EnableMsgsTogether();
           frmvalidator.addValidation("txtUserId", "req", "Please UserID");
           frmvalidator.addValidation("txtMoNo", "req", "Invalid Mobile  No.");
           frmvalidator.addValidation("txtMoNo", "minlen=10", "Invalid Mobile  No.");
           frmvalidator.addValidation("txtEmail", "req", "Please Enter Email");
           frmvalidator.addValidation("txtEmail", "email", "Please Enter Email");
           frmvalidator.addValidation("txtBranchDeps", "req", "Please Enter Branch Name");
           frmvalidator.addValidation("txtAmountDeps", "req", "Please Enter Deposit Ammount");
           frmvalidator.addValidation("txtDepsTime", "req", "Please Enter Deposit Time");
           frmvalidator.addValidation("txtTranCheque", "req", "Please Enter Transaction/Cheque No.");
           frmvalidator.addValidation("ddlPlaneName", "dontselect=Select", "Please Select Your plan");
           
           
           
           
           


          


        


       }
           </script>

</asp:Content>


