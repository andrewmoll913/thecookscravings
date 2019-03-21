<%@ Page Title="Login" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="thecookscravings.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <main>
        <asp:Login ID="UserLogin" runat="server" OnAuthenticate="IsValidUser"></asp:Login>
    </main>
</asp:Content>

