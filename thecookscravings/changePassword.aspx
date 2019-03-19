<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="changePassword.aspx.cs" Inherits="thecookscravings.changePassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="lblOldPassword" runat="server" Text="lblOldPassword">          
    </asp:Label>
    <asp:TextBox ID="txtOldPassword" runat="server" TextMode="Password"></asp:TextBox>
    <asp:RequiredFieldValidator ID="vldOldPassword" runat="server" ErrorMessage="Please enter your old password" ControlToValidate="txtPassword"></asp:RequiredFieldValidator>
    <asp:Label ID="lblPassword" runat="server" Text="Password">          
    </asp:Label>
    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
    <asp:RequiredFieldValidator ID="vldPassword" runat="server" ErrorMessage="Please enter your password" ControlToValidate="txtPassword"></asp:RequiredFieldValidator>
    <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password"></asp:TextBox>
    <asp:RequiredFieldValidator ID="vldConfirmPassword" runat="server" ErrorMessage="Please enter confirm your password" ControlToValidate="txtConfirmPassword"></asp:RequiredFieldValidator>
    <asp:CompareValidator ID="vldPasswordCompare" runat="server" ErrorMessage="CompareValidator" ControlToCompare="txtConfirmPassword" ControlToValidate="txtPassword"></asp:CompareValidator>
    <asp:Button ID="btnSubmit" runat="server" Text="Submit" />
</asp:Content>
