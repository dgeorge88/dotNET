<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>WelcomeSoapXMLClient</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <p>
                Name: 
                <asp:TextBox ID="clientName" runat="server"></asp:TextBox>
                <asp:Button ID="submitButton" runat="server" Text="Submit" OnClick="submitButton_Click"></asp:Button>
            </p>
            <p>
                <asp:Label ID="message" runat="server"></asp:Label>
            </p>
        </div>
    </form>
</body>
</html>
