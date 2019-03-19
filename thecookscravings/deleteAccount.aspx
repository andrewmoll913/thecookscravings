<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="deleteAccount.aspx.cs" Inherits="thecookscravings.deleteAccount" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="lblNotify" runat="server" Text="Deleting your account make it completely inaccessible to you. Enter your password to proceed"></asp:Label>
    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
    <asp:Button ID="btnDelete" runat="server" Text="Permanently Delete Account" />
</asp:Content>
