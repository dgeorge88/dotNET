<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ValidationAjax.aspx.cs" Inherits="ValidationAjax" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>ValidationAjax</title>
    <style type="text/css">
        .tableWidth {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager runat="server"></asp:ScriptManager>
        <div>
            <h3>Please fill out all the fileds in the following form:</h3>
            <asp:TabContainer ID="TabContainer2" runat="server" Width="450px" ActiveTabIndex="1">
                <asp:TabPanel runat="server" HeaderText="Name" ID="TabPanel1">
                    <ContentTemplate>
                        <table class="tableWidth">
                            <tr>
                                <td>Name:</td>
                                <td><asp:TextBox ID="nameTextBox" runat="server"></asp:TextBox>
                                    <br />

                                    <asp:RequiredFieldValidator ID="nameRequiredFieldValidator" runat="server"
                                        ControlToValidate="nameTextBox" Display="None"
                                        ErrorMessage="Please enter your name" ForeColor="Red"></asp:RequiredFieldValidator>
                                    
                                    <asp:ValidatorCalloutExtender runat="server" BehaviorID="nameRequiredFieldValidator_ValidatorCalloutExtender" TargetControlID="nameRequiredFieldValidator" ID="nameRequiredFieldValidator_ValidatorCalloutExtender"></asp:ValidatorCalloutExtender>
                                </td>
                            </tr>
                        </table>
                    </ContentTemplate>
                </asp:TabPanel>
                <asp:TabPanel ID="TabPanel2" runat="server" HeaderText="Contact">
                    <ContentTemplate>
                        <table class="tableWidth">
                            <tr>
                                <td>Email:</td>
                                <td>

                                    <asp:TextBox ID="emailTextBox" runat="server"></asp:TextBox>

                                    &nbsp;e.g., email@domain.com<br />

                                    <asp:RequiredFieldValidator ID="emailRequiredFieldValidator" runat="server"
                                        ControlToValidate="emailTextBox" Display="None"
                                        ErrorMessage="Please enter your e-mail address" ForeColor="Red"></asp:RequiredFieldValidator>

                                    <asp:ValidatorCalloutExtender ID="emailRequiredFieldValidator_ValidatorCalloutExtender"
                                        runat="server" Enabled="True" TargetControlID="emailRequiredFieldValidator">
                                    </asp:ValidatorCalloutExtender>

                                    <asp:RegularExpressionValidator ID="emailRegularExpressionValidator"
                                        runat="server" ControlToValidate="emailTextBox" Display="None"
                                        ErrorMessage="Please enter an e-mail address in a valid format" ForeColor="Red"
                                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                   
                                    <asp:ValidatorCalloutExtender ID="emailRegularExpressionValidator_ValidatorCalloutExtender"
                                        runat="server" Enabled="True" TargetControlID="emailRegularExpressionValidator">
                                    </asp:ValidatorCalloutExtender>

                                </td>
                            </tr>
                            <tr>
                                <td>Phone:</td>
                                <td>
                                    <asp:TextBox ID="phoneTextBox" runat="server"></asp:TextBox>
                                    &nbsp;e.g., (5555) 555-1234<br />
                                    <asp:RequiredFieldValidator ID="phoneRequiredFieldValidator" runat="server"
                                        ControlToValidate="phoneTextBox" Display="None"
                                        ErrorMessage="Please enter your phone number" ForeColor="Red"></asp:RequiredFieldValidator>
                                    <asp:ValidatorCalloutExtender ID="phoneRequiredFieldValidator_ValidatorCalloutExtender"
                                        runat="server" Enabled="True" TargetControlID="phoneRequiredFieldValidator">
                                    </asp:ValidatorCalloutExtender>
                                    <asp:RegularExpressionValidator ID="phoneRegularExpressionValidator"
                                        runat="server" ControlToValidate="phoneTextBox" Display="None"
                                        ErrorMessage="Please enter a phone number in a valid format" ForeColor="Red"
                                        ValidationExpression="((\(\d{4}\) ?)|(\d{3}-))?\d{3}-\d{4}"></asp:RegularExpressionValidator>
                                    <asp:ValidatorCalloutExtender ID="phoneRegularExpressionValidator_ValidatorCalloutExtender"
                                        runat="server" Enabled="True" TargetControlID="phoneRegularExpressionValidator">
                                    </asp:ValidatorCalloutExtender>
                                </td>
                            </tr>
                        </table>
                    </ContentTemplate>
                </asp:TabPanel>
            </asp:TabContainer>

            <asp:UpdatePanel ID="UpdatePanel1" runat="server">

                <ContentTemplate>

                    <p><asp:Button ID="submitButton" runat="server" Text="Submit" /></p>

                    <p><asp:Label ID="outputLabel" runat="server" Visible="False"></asp:Label></p>

                </ContentTemplate>

                <Triggers>
                    <asp:AsyncPostBackTrigger ControlID="submitButton" EventName="Click" />
                </Triggers>

            </asp:UpdatePanel>

        </div>
    </form>
</body>
</html>


