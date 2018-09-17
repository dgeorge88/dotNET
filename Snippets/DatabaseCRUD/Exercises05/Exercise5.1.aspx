<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Exercise5.1.aspx.cs" Inherits="Exercise5_1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Exercise 5.1</title>
    <style type="text/css">
        .multilineTextBox {
            width: 300px;
            height: 100px;
        }

        .tableWidth {
            width: 100%;
        }

        .singleLineTextBox {
            width: 300px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Exercise 5.1. Validation</h1>
            <h3>Please leave a message in our guestbook:</h3>
            <table class="tableWidth">
                <tr>
                    <td style="vertical-align: top;">Name:</td>
                    <td style="vertical-align: top;">
                        <asp:TextBox ID="nameTextBox" runat="server" CssClass="singleLineTextBox"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="nameValidator" runat="server"
                            ControlToValidate="nameTextBox" Display="Dynamic"
                            ErrorMessage="Please enter a name." ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="vertical-align: top;">E-mail:</td>
                    <td style="vertical-align: top;">
                        <asp:TextBox ID="emailTextBox" runat="server" CssClass="singleLineTextBox"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="emailValidator" runat="server"
                            ControlToValidate="emailTextBox" Display="Dynamic"
                            ErrorMessage="Please enter an e-mail address." ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="emailFormatValidator" runat="server"
                            ControlToValidate="emailTextBox" Display="Dynamic"
                            ErrorMessage="Please enter a valid e-mail address." ForeColor="Red"
                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td style="vertical-align: top;">Tell the world:</td>
                    <td style="vertical-align: top;">
                        <asp:TextBox ID="messageTextBox" runat="server" CssClass="multilineTextBox"
                            TextMode="MultiLine"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="messageValidator" runat="server"
                            ControlToValidate="messageTextBox" Display="Dynamic"
                            ErrorMessage="Please enter a message." ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="vertical-align: top;">&nbsp;</td>
                    <td style="vertical-align: top;">
                        <asp:Button ID="submitButton" runat="server" Text="Submit"
                            OnClick="submitButton_Click" />
                        &nbsp;<asp:Button ID="clearButton" runat="server" Text="Clear"
                            OnClick="clearButton_Click" />
                    </td>
                </tr>
            </table>
            <p>
                <asp:GridView ID="messagesGridView" runat="server" AutoGenerateColumns="False"
                    CellPadding="4" DataKeyNames="MessageID" DataSourceID="messagesLinqDataSource"
                    ForeColor="#333333" GridLines="None" Width="650px">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                        <asp:BoundField DataField="Email" HeaderText="Email"
                            SortExpression="Email" />
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
                <asp:LinqDataSource ID="messagesLinqDataSource" runat="server"
                    ContextTypeName="GuestbookDataContext" EnableInsert="True" EntityTypeName=""
                    TableName="Messages">
                </asp:LinqDataSource>
            </p>
        </div>
    </form>
</body>
</html>
