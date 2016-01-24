<%@ Page Title="" Language="C#" MasterPageFile="~/User/MasterPage.master" AutoEventWireup="true" CodeFile="UpdateProfile.aspx.cs" Inherits="User_UpdateProfile" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <script type="text/javascript">

    <script type="text/javascript">

         

    </script>
    <h2>Upadate Profile</h2>

    <asp:UpdateProgress ID="UpdateProgress2" runat="server" DisplayAfter="0" AssociatedUpdatePanelID="UpdatePanel1">
            <ProgressTemplate>
              <div align="center"><br />
                <img src="../images/ajax-loader.gif" alt="loading" title="loading" />
                Processing ... <br />                                
              </div>
          </ProgressTemplate>
       </asp:UpdateProgress>
       
   <div class="sidebar1" >
    <div class="sidebarheading">
       
    Persional Detail
    




   </div>
    
    
                         
                           
         <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:DetailsView ID="DVPersionalDetail" runat="server"  class="detailview"
                 AutoGenerateRows="False" 
                onmodechanging="DVPersionalDetail_ModeChanging" 
                onitemupdating="DVPersionalDetail_ItemUpdating" 
                ondatabound="DVPersionalDetail_DataBound" CellPadding="3" 
                GridLines="Horizontal" BackColor="White" BorderColor="#E7E7FF" 
                BorderStyle="None" BorderWidth="1px">
                <AlternatingRowStyle BackColor="#F7F7F7" />
                <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                <Fields>
                    <asp:TemplateField HeaderText="About My Patner" >
                        <EditItemTemplate>
                            <asp:TextBox ID="txtAboutMyPatner" runat="server" Text='<%# Bind("About_My_Patner") %>' class="textarea" TextMode="MultiLine"></asp:TextBox>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("About_My_Patner") %>'></asp:TextBox>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("About_My_Patner") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="About Me">
                        <EditItemTemplate>
                            <asp:TextBox ID="txtAboutMe" runat="server" Text='<%# Bind("About_Me") %>' class="textarea" TextMode="MultiLine"></asp:TextBox>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("About_Me") %>'></asp:TextBox>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("About_Me") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Height">
                        <EditItemTemplate>
                            

                            <asp:DropDownList ID="ddlHeight" runat="server" class="select" >
                
            </asp:DropDownList>

                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox ID="TextBox3" runat="server" 
                                Text='<%# Bind("Height", "{0} Feet") %>'></asp:TextBox>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("Height", "{0} Feet") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Weight">
                        <EditItemTemplate>
                            
                             <asp:DropDownList ID="ddlWeight" runat="server" class="select" SelectedValue='<%# Bind("Weight") %>' >
                            <asp:ListItem value="0">Select</asp:ListItem>

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
                
                
                          
                
                
                
                
                
                
            </asp:DropDownList>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox ID="TextBox4" runat="server" 
                                Text='<%# Bind("Weight", "{0} Kg") %>'></asp:TextBox>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("Weight", "{0} Kg") %>'></asp:Label>


                             
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Physical Status">
                        <EditItemTemplate>
                            <asp:DropDownList ID="ddlPhysicleStatus" runat="server" class="select" SelectedValue='<%# Bind("Physical_Status") %>'>
                <asp:ListItem>Select</asp:ListItem>
                <asp:ListItem>Physically challenged from birth</asp:ListItem>
                <asp:ListItem>Physically challenged due to accident</asp:ListItem>
                <asp:ListItem>Mentally challenged from birthMentally</asp:ListItem>
                <asp:ListItem>Mentally challenged due to accident</asp:ListItem>
                <asp:ListItem>Physical abnormality affecting only looks</asp:ListItem>
                <asp:ListItem>Physical abnormality affecting bodily functions</asp:ListItem>
                <asp:ListItem>Physically and mentally challenged</asp:ListItem>
                <asp:ListItem>HIV positiveHIV positive</asp:ListItem>
            </asp:DropDownList>


                           
                        </EditItemTemplate>
                        <InsertItemTemplate>

                            <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("Physical_Status") %>'></asp:TextBox>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label5" runat="server" Text='<%# Bind("Physical_Status") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField ShowHeader="False">
                        <EditItemTemplate>
                         
                            <asp:Button ID="btnUpdate" runat="server" CausesValidation="True" class="btnLogin Blacktext"
                                CommandName="Update" Text="Update" OnClientClick="ValidatePersionalDetail()" />
                           
                            <asp:Button ID="btnCancle" runat="server" CausesValidation="False" class="btnLogin Blacktext"
                                CommandName="Cancel" Text="Cancel" OnClientClick="clearAll()" />
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Button ID="btnEdit" runat="server" CausesValidation="False" class="btnLogin Blacktext"
                                CommandName="Edit" Text="Edit" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="id" Visible="False">
                        <EditItemTemplate>
                            <asp:TextBox ID="txtID" runat="server" Text='<%# Bind("id") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("id") %>'></asp:TextBox>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lblID" runat="server" Text='<%# Bind("id") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Fields>
                <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
            </asp:DetailsView>
            <br />

            
       
         </div>  
         <script language="javascript" type="text/javascript">
             function ValidatePersionalDetail() {
                 var frmvalidator = new Validator("aspnetForm");

                 //PERSONAL DETAIL

                 //About Me 
                 frmvalidator.EnableMsgsTogether();
                 frmvalidator.addValidation("ctl00_ContentPlaceHolder1_DVPersionalDetail_txtAboutMe", "req", "Please enter About You");
                 frmvalidator.addValidation("ctl00_ContentPlaceHolder1_DVPersionalDetail_txtAboutMe", "minlen=50", "Min length for About You is 50");
                 frmvalidator.addValidation("ctl00_ContentPlaceHolder1_DVPersionalDetail_txtAboutMe", "maxlen=200", "Max length for About You is 200");

                 //Height 
                 frmvalidator.addValidation("ctl00_ContentPlaceHolder1_DVPersionalDetail_ddlHeight", "dontselect=Select", "Please Select Height");

                 //Weight 
                 frmvalidator.addValidation("ctl00_ContentPlaceHolder1_DVPersionalDetail_ddlWeight", "dontselect=0", "Please Select Weight");

                 //About My Patner 
                 frmvalidator.addValidation("ctl00_ContentPlaceHolder1_DVPersionalDetail_txtAboutPatner", "req", "Please enter About Your Patner");
                 frmvalidator.addValidation("ctl00_ContentPlaceHolder1_DVPersionalDetail_txtAboutPatner", "minlen=50", "Min length for About Your Patner is 50");
                 frmvalidator.addValidation("ctl00_ContentPlaceHolder1_DVPersionalDetail_txtAboutPatner", "maxlen=200", "Max length for About Your Patner is 200");

                 //Physical Status 
                 frmvalidator.addValidation("ctl00_ContentPlaceHolder1_DVPersionalDetail_ddlPhysicleStatus", "dontselect=0", "Please Select Physical Status");



             }

             function ValidatePhysicalInfo() {
                 var frmvalidator = new Validator("aspnetForm");
                 frmvalidator.addValidation("ctl00_ContentPlaceHolder1_DVPhysicalDetail_txtParentsContact", "req", "Please enter your Parents Contects");
                 frmvalidator.addValidation("ctl00_ContentPlaceHolder1_DVPhysicalDetail_txtParentsContact", "minlen=10", "Min length for Parents Contects is 10");
                 frmvalidator.addValidation("ctl00_ContentPlaceHolder1_DVPhysicalDetail_txtParentsContact", "maxlen=10", "Max length for Parents Contects is 10");
                 //NUMERIC ONLY

                 //Family Status
                 frmvalidator.addValidation("ddlFamilyStatus", "dontselect=Select", "Please Select Family Status");
                 //frmvalidator.addValidation("ddlFamilyStatus", "req", "Please select your Family Status");




             }

             function clearAll() {
                 var frmvalidator = new Validator("aspnetForm");
                 frmvalidator.clearAllValidations();
             }
         
         </script>
         <div class="sidebarheading">
       
    Physical Info And Other</div>
         <asp:DetailsView ID="DVPhysicalDetail" runat="server" BackColor="White" class="detailview"
                CellPadding="3" 
                 GridLines="Horizontal"  BorderColor="#E7E7FF" 
                BorderStyle="None" BorderWidth="1px" 
                AutoGenerateRows="False" onmodechanging="DVPhysicalDetail_ModeChanging" 
                onpageindexchanging="DVPhysicalDetail_PageIndexChanging" 
                ondatabound="DVPhysicalDetail_DataBound" 
                onitemupdating="DVPhysicalDetail_ItemUpdating" >
                <AlternatingRowStyle BackColor="#F7F7F7" /> 
             <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                <Fields>
                    <asp:TemplateField HeaderText="Body Type ">
                        <EditItemTemplate>
                            


                             <asp:RadioButtonList ID="ddlBodyType" runat="server"  
                                   RepeatLayout="Flow" RepeatDirection="Horizontal">
                            </asp:RadioButtonList>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Body_Type_Code") %>'></asp:TextBox>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("Body_Type_Code") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Complexion">
                        <EditItemTemplate>
                            

                             <asp:RadioButtonList ID="radioComplextion" runat="server"  RepeatDirection="Horizontal"
                                   RepeatLayout="Flow">
        </asp:RadioButtonList>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Complexion_Id") %>'></asp:TextBox>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("Complexion_Id") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Blode Group">
                        <EditItemTemplate>
                            
                            <asp:DropDownList ID="ddlBlodGroup" runat="server" class="select" SelectedValue='<%# Bind("Blode_Group") %>'>
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
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Blode_Group") %>'></asp:TextBox>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("Blode_Group") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Parents  Contects">
                        <EditItemTemplate>
                            <asp:TextBox ID="txtParentsContact" runat="server" 
                                Text='<%# Bind("Parents_Contects") %>'></asp:TextBox>
                            <asp:FilteredTextBoxExtender ID="txtParentsContact_FilteredTextBoxExtender" 
                                runat="server" Enabled="True" TargetControlID="txtParentsContact" 
                                ValidChars="1234567890">
                            </asp:FilteredTextBoxExtender>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox ID="TextBox4" runat="server" 
                                Text='<%# Bind("Parents_Contects") %>'></asp:TextBox>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("Parents_Contects") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Family Status">
                        <EditItemTemplate>
                            
                             <asp:DropDownList ID="ddlFamilyStatus" runat="server" class="select " SelectedValue='<%# Bind("Family_Status") %>'>
            <asp:ListItem value="Select">Select</asp:ListItem>
            <asp:ListItem value="Middle Class">Middle Class</asp:ListItem>
													<asp:ListItem value="Upper Middle Class">Upper 
                                 Middle
														Class</asp:ListItem>
													<asp:ListItem value="Rich &amp; Affulant">Rich &amp; Affulant</asp:ListItem>
            </asp:DropDownList>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("Family_Status") %>'></asp:TextBox>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label5" runat="server" Text='<%# Bind("Family_Status") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField ShowHeader="False">
                        <EditItemTemplate>
                            <asp:Button ID="Button1" runat="server" CausesValidation="True" 
                                CommandName="Update" Text="Update" class="btnLogin Blacktext"  OnClientClick="ValidatePhysicalInfo()"/>
                            &nbsp;<asp:Button ID="Button2" runat="server" CausesValidation="False" 
                                CommandName="Cancel" Text="Cancel" class="btnLogin Blacktext" OnClientClick="clearAll()" />
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Button ID="Button1" runat="server" CausesValidation="False" 
                                CommandName="Edit" Text="Edit" class="btnLogin Blacktext"/>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Fields>
             <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
            </asp:DetailsView>


            <div class="sidebarheading">
       
    Religious</div>
            <asp:DetailsView ID="DVReligion" runat="server" class="detailview" 
                BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" 
                CellPadding="3" GridLines="Horizontal" AutoGenerateRows="False">
                <AlternatingRowStyle BackColor="#F7F7F7" />
                <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                <Fields>
                    <asp:BoundField DataField="Comunity_Name" HeaderText="Religion" />
                    <asp:BoundField DataField="Cast_Name" HeaderText="Cast" />
                    <asp:BoundField DataField="Rashi_Name" HeaderText="Rasi" />
                    <asp:BoundField DataField="Gothram" HeaderText="Gothram" />
                    <asp:BoundField DataField="Star_Name" HeaderText="Star" />
                    <asp:BoundField DataField="Dosham" HeaderText="Dosham" />
                    <asp:CommandField ShowEditButton="True" />
                </Fields>
                <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
       </asp:DetailsView>
            </ContentTemplate>

    </asp:UpdatePanel>
       
   
   
    
</asp:Content>

