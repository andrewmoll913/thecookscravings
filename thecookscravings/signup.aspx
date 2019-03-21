<%@ Page Title="Sign Up" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="thecookscravings.WebForm1" %>
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
        <asp:Label ID="lblPassword" runat="server" Text="Password">          
        </asp:Label>
        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="vldPassword" runat="server" ErrorMessage="Please enter your password" ControlToValidate="txtPassword"></asp:RequiredFieldValidator>
        <asp:Label ID="lblConfirmPassword" runat="server" Text="Confirm Password">          
        </asp:Label>
        <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="vldConfirmPassword" runat="server" ErrorMessage="Please enter confirm your password" ControlToValidate="txtConfirmPassword"></asp:RequiredFieldValidator>
        <asp:CompareValidator ID="vldPasswordCompare" runat="server" ErrorMessage="Passwords must be the same" ControlToCompare="txtConfirmPassword" ControlToValidate="txtPassword"></asp:CompareValidator>
        <asp:Label ID="lblProfileImage" runat="server" Text="Profile Image">          
        </asp:Label>
        <asp:FileUpload ID="profileImage" runat="server" />
        <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
    </main>
    
</asp:Content>
