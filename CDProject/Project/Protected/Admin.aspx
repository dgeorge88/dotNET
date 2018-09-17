 <%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="Protected_Admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    
  


<h1>Admin Page</h1>

   
    <table class="nav-justified">
        <tr>
            <td style="width: 70px">Artist:</td>

            <td> <asp:TextBox ID="ArtistTextBox" runat="server" Width="300px"></asp:TextBox>

                <asp:RequiredFieldValidator ForeColor="Red" ID="ArtistRequiredFieldValidator" runat="server" ErrorMessage="Please Enter an Artist(s) name" ControltoValidate="ArtistTextBox"></asp:RequiredFieldValidator>


            </td>
        </tr>
        <tr>
            <td style="width: 70px">Title:</td>

            <td> <asp:TextBox ID="TitleTextBox" runat="server" Width="300px"></asp:TextBox>

                 <asp:RequiredFieldValidator ForeColor="Red" ID="TitleRequiredFieldValidator" runat="server" ErrorMessage="Please Enter an Album Title" ControltoValidate="TitleTextBox"></asp:RequiredFieldValidator>

            </td>
        </tr>
        <tr>
            <td style="width: 70px">Year:</td>

            <td> <asp:TextBox ID="YearTextBox" runat="server" Width="300px"></asp:TextBox>
                 <asp:RequiredFieldValidator ForeColor="Red" ID="YearRequiredFieldValidator" runat="server" ErrorMessage="Please a Year" ControltoValidate="YearTextBox" Display="Dynamic"></asp:RequiredFieldValidator>
                 <asp:RangeValidator ID="YearRangeValidator" runat="server" ErrorMessage="Year of Publication between 1948 to 2019" ControltoValidate="YearTextBox" MinimumValue="1948" MaximumValue="2019" Type="Integer" ForeColor="Red" Display="Dynamic"></asp:RangeValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 70px">Genre:</td>

            <td> <asp:TextBox ID="GenreTextBox" runat="server" Width="300px"></asp:TextBox>
                 <asp:RequiredFieldValidator ForeColor="Red" ID="GenreRequiredFieldValidator" runat="server" ErrorMessage="Please Enter the Albums Genre" ControltoValidate="GenreTextBox"></asp:RequiredFieldValidator>


            </td>
        </tr>
        <tr>
            <td style="width: 70px">
                <asp:Button ID="SubmitButton" runat="server" Text="Submit" OnClick="SubmitButton_Click" /> 


            </td>
            <td> <asp:Button ID="ResetButton" runat="server" Text="Reset" OnClick="ResetButton_Click" />

            </td>
        </tr>
    </table>

    <asp:GridView ID="cdCollection" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="ProjectLinqDataSource">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" CausesValidation="False"/>
            <asp:BoundField DataField="Artist" HeaderText="Artist" SortExpression="Artist" />
            <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
            <asp:BoundField DataField="Year" HeaderText="Year" SortExpression="Year" />
            <asp:BoundField DataField="Genre" HeaderText="Genre" SortExpression="Genre" />
        </Columns>
    </asp:GridView>
    <asp:LinqDataSource ID="ProjectLinqDataSource" runat="server" ContextTypeName="ProjectDataContext" EnableDelete="True" EnableInsert="True" EnableUpdate="True" EntityTypeName="" TableName="cdCollections">
    </asp:LinqDataSource>
    





</asp:Content>

