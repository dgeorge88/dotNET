<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Exercise5.2.aspx.cs" Inherits="Exercise5_2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Exercise5.2</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h1>
        <asp:LinqDataSource ID="GuestbokLinqDataSource" runat="server" ContextTypeName="GuestbookDataContext" EnableDelete="True" 
            EntityTypeName="" TableName="Messages">
        </asp:LinqDataSource>
        Exercise 5.2. Deleting Records</h1>
        <p>
            <asp:GridView ID="GuestbookGridView" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="MessageID"
                DataSourceID="GuestbokLinqDataSource" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" />
                    <asp:BoundField DataField="MessageID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="MessageID" />
                    <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:BoundField DataField="Message1" HeaderText="Message" SortExpression="Message1" />
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
        </p>
    </div>
    </form>
</body>
</html>
