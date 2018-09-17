<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Exercise5.3.aspx.cs" Inherits="Exercise5_3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Exercise5.3</title>
    <style type="text/css">
        .multilineTextBox {
            width: 200px;
            height: 70px;
        }

        .singleLineTextBox {
            width: 200px;
        }

        table {
            width: 100%;
        }

        td {
            vertical-align: top;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>
                <asp:LinqDataSource ID="GuestbokLinqDataSource" runat="server" ContextTypeName="GuestbookDataContext"
                    EntityTypeName="" TableName="Messages" EnableUpdate="True">
                </asp:LinqDataSource>
                Exercise 5.3. Updating Records</h1>
            <p>
                <asp:GridView ID="GuestbookGridView" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="MessageID"
                    DataSourceID="GuestbokLinqDataSource" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:CommandField ShowEditButton="True" />
                        <asp:BoundField DataField="MessageID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="MessageID" />
                        <asp:TemplateField HeaderText="Date" SortExpression="Date">
                            <EditItemTemplate>
                                <asp:Label ID="dateLabel" runat="server" Text='<%# Bind("Date") %>'></asp:Label>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="dateLabel" runat="server" Text='<%# Bind("Date") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Name" SortExpression="Name">
                            <EditItemTemplate>
                                <asp:TextBox ID="nameTextBox" runat="server" CssClass="singleLineTextBox" Text='<%# Bind("Name") %>'></asp:TextBox>
                                <br />
                                <asp:RequiredFieldValidator ID="nameValidator" runat="server"
                                    ControlToValidate="nameTextBox" Display="Dynamic"
                                    ErrorMessage="Please enter a name." ForeColor="Red"></asp:RequiredFieldValidator>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="nameLabel" runat="server" Text='<%# Bind("Name") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Email" SortExpression="Email">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox3" runat="server" CssClass="singleLineTextBox" Text='<%# Bind("Email") %>'></asp:TextBox>
                                <br />
                                <asp:RequiredFieldValidator ID="emailValidator" runat="server"
                                    ControlToValidate="TextBox3" Display="Dynamic"
                                    ErrorMessage="Please enter an e-mail address." ForeColor="Red"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="emailFormatValidator" runat="server"
                                    ControlToValidate="TextBox3" Display="Dynamic"
                                    ErrorMessage="Please enter a valid e-mail address." ForeColor="Red"
                                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# Bind("Email") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Message" SortExpression="Message1">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox4" runat="server" CssClass="multilineTextBox"
                                    Text='<%# Bind("Message1") %>' TextMode="MultiLine"></asp:TextBox>
                                <br />
                                <asp:RequiredFieldValidator ID="messageValidator" runat="server"
                                    ControlToValidate="TextBox4" Display="Dynamic"
                                    ErrorMessage="Please enter a message." ForeColor="Red"></asp:RequiredFieldValidator>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label4" runat="server" Text='<%# Bind("Message1") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
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
