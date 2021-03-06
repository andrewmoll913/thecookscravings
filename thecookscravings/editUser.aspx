﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="editUser.aspx.cs" Inherits="thecookscravings.editUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <main>
        <asp:Label ID="lblUserName" runat="server" Text="User Name">          
        </asp:Label>
        <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="vldUserName" runat="server" ErrorMessage="Please enter your user name" ControlToValidate="txtUserName"></asp:RequiredFieldValidator>
        <asp:Label ID="lblFirstName" runat="server" Text="First Name">          
        </asp:Label>
        <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="vldFirstName" runat="server" ErrorMessage="Please enter your first name" ControlToValidate="txtFirstName"></asp:RequiredFieldValidator>
        <asp:Label ID="lblLastName" runat="server" Text="Last Name">          
        </asp:Label>
        <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="vldLastName" runat="server" ErrorMessage="Please enter your last name" ControlToValidate="txtLastName"></asp:RequiredFieldValidator>
        <asp:Label ID="lblEmail" runat="server" Text="Email">          
        </asp:Label>
        <asp:TextBox ID="txtEmail" runat="server" TextMode="Email"></asp:TextBox>
        <asp:RequiredFieldValidator ID="vldEmail" runat="server" ErrorMessage="Please enter your email" ControlToValidate="txtEmail"></asp:RequiredFieldValidator>
        <asp:Button ID="btnSubmit" runat="server" Text="Submit" />
    </main>
</asp:Content>
