<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="thecookscravings.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h1><%: Title %>.</h1>
    <h2>Contact Us</h2>
    <address>
        Auckland, New Zealand
        <abbr title="Phone">P:</abbr>
        425.555.0100
    </address>

    <address>
        <strong>Support:</strong>   <a href="mailto:support@thecookscravings.com">support@thecookscravings.com</a><br />
        <strong>Marketing:</strong> <a href="mailto:marketing@thecookscravings.com">marketing@thecookscravings.com</a>
    </address>
</asp:Content>
