<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="tmp2.aspx.cs" Inherits="tmp2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<asp:UpdatePanel ID="UpdatePanel1" runat="server" >
         <ContentTemplate>
     <asp:ListView ID="ListView1" runat="server" DataKeyNames="Member_Id">
                   
                   
                   
                   
                   
                   
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
                                    <asp:LinkButton ID="lbtnExpressInterest" runat="server" CommandName="ExpressInterest">Express Interest</asp:LinkButton></strong></span>
                                </div>
                                <div class="PhotoSingleMenu">
                                    <img src="images/add_favorite_icon.png" />
                                    <asp:LinkButton ID="lbtnAddToFsvourite" runat="server" CommandName="AddToFavourite">Set Favourite</asp:LinkButton></strong></span>
                                </div>
                                <div class="PhotoSingleMenu">
                                <img src="images/profile_detail.png" height="18px" width="18px" />
                                    <asp:LinkButton ID="lbtnViewFullInfo" runat="server" CommandName="ViewFullProfile">View Full Profile</asp:LinkButton>
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
                                    
                                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("About_Me")%>'></asp:Label><asp:LinkButton
                                        ID="btnViewprofile" runat="server" ForeColor="#CC0000">View Profile</asp:LinkButton>
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
               </ContentTemplate>
               </asp:UpdatePanel>
</asp:Content>

