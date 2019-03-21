<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="thecookscravings._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <main class="jumbotron">
        <h1>ASP.NET</h1>
        Welcome
        <asp:LoginName ID="UserName" runat="server" Font-Bold = "true" />
        <br />
        <br />
        <asp:LoginStatus ID="LoginStatus" runat="server" />
    </main>

    

</asp:Content>
