<%@ Page Language="C#" AutoEventWireup="true" CodeFile="cdCollection.aspx.cs" Inherits="cdCollection" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>CD Collection</title>
</head>
<body>
<form id="form" runat="server">
        <div>
            <h1>CD Collection</h1>


            <asp:TextBox ID="SearchTextBox" runat="server"></asp:TextBox>
            <asp:Button ID="SearchButton" runat="server" Text="Search" OnClick="SearchButton_Click" />
            <asp:Button ID="ResetButton" runat="server" Text="Reset" OnClick="ResetButton_Click"  />
            <br />
            <br />
            <asp:GridView ID="GridView" runat="server">
            </asp:GridView>
 
        </div>
    </form>
</body>
</html>
