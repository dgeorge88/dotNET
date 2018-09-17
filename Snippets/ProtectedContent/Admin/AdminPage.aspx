<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="AdminPage.aspx.cs" Inherits="Protected_AdminPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" DataKeyNames="Id" Width="173px">
    <Columns>
        <asp:CommandField ShowDeleteButton="True" />
        <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [UserName], [Id] FROM [AspNetUsers]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [AspNetUsers] WHERE [Id] = @original_Id AND [UserName] = @original_UserName" InsertCommand="INSERT INTO [AspNetUsers] ([UserName], [Id]) VALUES (@UserName, @Id)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [AspNetUsers] SET [UserName] = @UserName WHERE [Id] = @original_Id AND [UserName] = @original_UserName">
    <DeleteParameters>
        <asp:Parameter Name="original_Id" Type="String" />
        <asp:Parameter Name="original_UserName" Type="String" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="UserName" Type="String" />
        <asp:Parameter Name="Id" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="UserName" Type="String" />
        <asp:Parameter Name="original_Id" Type="String" />
        <asp:Parameter Name="original_UserName" Type="String" />
    </UpdateParameters>
</asp:SqlDataSource>
</asp:Content>

