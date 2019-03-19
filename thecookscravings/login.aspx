<%@ Page Title="Login" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="thecookscravings.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <main>
        <asp:Label ID="lblUserName" runat="server" Text="User name"></asp:Label>
        <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="vldUserName" runat="server" ErrorMessage="Please enter your user name" ControlToValidate="txtUserName"></asp:RequiredFieldValidator>
        <asp:Label ID="lblPassword" runat="server" Text="Label"></asp:Label>
        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="vldPassword" runat="server" ErrorMessage="Please enter your password" ControlToValidate="txtPassword"></asp:RequiredFieldValidator>
        <asp:Button ID="btnLogin" runat="server" Text="Login" />
    </main>
</asp:Content>

