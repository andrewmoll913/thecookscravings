<%@ Page Title="Login" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="thecookscravings.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <main>
            <label>User Name</label>
            <asp:TextBox ID="username" type="text" runat="server"></asp:TextBox><br />
            <label>Password</label>
            <asp:TextBox ID="password" type="password" runat="server"></asp:TextBox><br />
            <input id="login" type="submit" value="Login" />
    </main>
</asp:Content>
