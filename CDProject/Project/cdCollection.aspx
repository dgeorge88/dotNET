<%@ Page Title="CD Collection" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="cdCollection.aspx.cs" Inherits="cdCollection" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <h1>CD Collection</h1>
    <h2>Search our CD Collection. </h2>
    
                <p>Insert an Artist, Title, Genre, or Year to search database.</p>

                <asp:UpdatePanel ID="UpdatePanel" runat="server">

                <ContentTemplate>

                    <p><asp:TextBox ID="SearchTextBox" runat="server" Width="300px" ></asp:TextBox> </p>

                    <p><asp:Button ID="SearchButton" runat="server" Text="Search" OnClick="SearchButton_Click" /><asp:Button ID="ClearButton" runat="server" OnClick="ClearButton_Click" Text="Clear" /></p>

                    <asp:GridView ID="SearchGridView" runat="server"></asp:GridView>

                </ContentTemplate>

                <Triggers>
                    <asp:AsyncPostBackTrigger ControlID="SearchButton" EventName="Click" />
                </Triggers>

            </asp:UpdatePanel>
</asp:Content>
