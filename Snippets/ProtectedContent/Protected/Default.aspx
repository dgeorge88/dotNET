<%@ Page Title="Protected" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Protected_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <h1>Protected</h1>
    <p>As you are reading this page - you must have logged in!</p>
    <p>&nbsp;</p>
    <a href="MembersPage.aspx">Members Online</a>
    <a href="../Admin/AdminPage.aspx">Admin</a>
   
</asp:Content>

