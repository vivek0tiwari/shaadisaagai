<%@ Page Title="" Language="C#" MasterPageFile="~/User/MasterPage.master" AutoEventWireup="true" CodeFile="PreferdProfile.aspx.cs" Inherits="User_PreferdProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>My Preferred Profile</h2>

    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" 
        AutoGenerateEditButton="True" AutoGenerateRows="False" BackColor="White" 
        BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
        DataKeyNames="Member_Id" DataSourceID="SqlDataSource1" ForeColor="Black" 
        GridLines="Horizontal">
        <EditRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
        <Fields>
            <asp:BoundField DataField="Member_Id" HeaderText="Member_Id" ReadOnly="True" 
                SortExpression="Member_Id" />
            <asp:BoundField DataField="Member_Name" HeaderText="Member_Name" 
                SortExpression="Member_Name" />
            <asp:BoundField DataField="Gender" HeaderText="Gender" 
                SortExpression="Gender" />
            <asp:BoundField DataField="Mobile" HeaderText="Mobile" 
                SortExpression="Mobile" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="Password" HeaderText="Password" 
                SortExpression="Password" />
            <asp:BoundField DataField="Dob" HeaderText="Dob" SortExpression="Dob" />
            <asp:BoundField DataField="Profile_Submitted_By" 
                HeaderText="Profile_Submitted_By" SortExpression="Profile_Submitted_By" />
            <asp:BoundField DataField="IsVerified" HeaderText="IsVerified" 
                SortExpression="IsVerified" />
        </Fields>
        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
    </asp:DetailsView>
    <asp:FormView ID="FormView1" runat="server" BackColor="White" 
    BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
    DataKeyNames="Member_Id" DataSourceID="SqlDataSource1" ForeColor="Black" 
    GridLines="Vertical">
        <EditItemTemplate>
            Member_Id:
            <asp:Label ID="Member_IdLabel1" runat="server" 
                Text='<%# Eval("Member_Id") %>' />
            <br />
            Member_Name:
            <asp:TextBox ID="Member_NameTextBox" runat="server" 
                Text='<%# Bind("Member_Name") %>' />
            <br />
            Gender:
            <asp:TextBox ID="GenderTextBox" runat="server" Text='<%# Bind("Gender") %>' />
            <br />
            Mobile:
            <asp:TextBox ID="MobileTextBox" runat="server" Text='<%# Bind("Mobile") %>' />
            <br />
            Email:
            <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
            <br />
            Password:
            <asp:TextBox ID="PasswordTextBox" runat="server" 
                Text='<%# Bind("Password") %>' />
            <br />
            Dob:
            <asp:TextBox ID="DobTextBox" runat="server" Text='<%# Bind("Dob") %>' />
            <br />
            Profile_Submitted_By:
            <asp:TextBox ID="Profile_Submitted_ByTextBox" runat="server" 
                Text='<%# Bind("Profile_Submitted_By") %>' />
            <br />
            IsVerified:
            <asp:TextBox ID="IsVerifiedTextBox" runat="server" 
                Text='<%# Bind("IsVerified") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <EditRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
        <FooterStyle BackColor="#CCCC99" />
        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
        <InsertItemTemplate>
            Member_Id:
            <asp:TextBox ID="Member_IdTextBox" runat="server" 
                Text='<%# Bind("Member_Id") %>' />
            <br />
            Member_Name:
            <asp:TextBox ID="Member_NameTextBox" runat="server" 
                Text='<%# Bind("Member_Name") %>' />
            <br />
            Gender:
            <asp:TextBox ID="GenderTextBox" runat="server" Text='<%# Bind("Gender") %>' />
            <br />
            Mobile:
            <asp:TextBox ID="MobileTextBox" runat="server" Text='<%# Bind("Mobile") %>' />
            <br />
            Email:
            <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
            <br />
            Password:
            <asp:TextBox ID="PasswordTextBox" runat="server" 
                Text='<%# Bind("Password") %>' />
            <br />
            Dob:
            <asp:TextBox ID="DobTextBox" runat="server" Text='<%# Bind("Dob") %>' />
            <br />
            Profile_Submitted_By:
            <asp:TextBox ID="Profile_Submitted_ByTextBox" runat="server" 
                Text='<%# Bind("Profile_Submitted_By") %>' />
            <br />
            IsVerified:
            <asp:TextBox ID="IsVerifiedTextBox" runat="server" 
                Text='<%# Bind("IsVerified") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            Member_Id:
            <asp:Label ID="Member_IdLabel" runat="server" Text='<%# Eval("Member_Id") %>' />
            <br />
            Member_Name:
            <asp:Label ID="Member_NameLabel" runat="server" 
                Text='<%# Bind("Member_Name") %>' />
            <br />
            Gender:
            <asp:Label ID="GenderLabel" runat="server" Text='<%# Bind("Gender") %>' />
            <br />
            Mobile:
            <asp:Label ID="MobileLabel" runat="server" Text='<%# Bind("Mobile") %>' />
            <br />
            Email:
            <asp:Label ID="EmailLabel" runat="server" Text='<%# Bind("Email") %>' />
            <br />
            Password:
            <asp:Label ID="PasswordLabel" runat="server" Text='<%# Bind("Password") %>' />
            <br />
            Dob:
            <asp:Label ID="DobLabel" runat="server" Text='<%# Bind("Dob") %>' />
            <br />
            Profile_Submitted_By:
            <asp:Label ID="Profile_Submitted_ByLabel" runat="server" 
                Text='<%# Bind("Profile_Submitted_By") %>' />
            <br />
            IsVerified:
            <asp:Label ID="IsVerifiedLabel" runat="server" 
                Text='<%# Bind("IsVerified") %>' />
            <br />
        </ItemTemplate>
        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle BackColor="#F7F7DE" />
</asp:FormView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\sadisagai.mdf;Integrated Security=True;User Instance=True" 
    ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [tblMember]">
</asp:SqlDataSource>
</asp:Content>

