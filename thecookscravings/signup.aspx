<%@ Page Title="Sign Up" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="thecookscravings.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <main>
        
            <label>First Name</label>
            <asp:TextBox ID="firstname" runat="server"></asp:TextBox><br />
            <label>Last Name</label>
            <asp:TextBox ID="lastname" runat="server"></asp:TextBox><br />
            <label>Username</label>
            <asp:TextBox ID="username" runat="server"></asp:TextBox><br />
            <label>Email</label>
            <asp:TextBox ID="email" type="email" runat="server"></asp:TextBox><br />
            <label>Password</label>
            <asp:TextBox ID="password" type="password" runat="server"></asp:TextBox><br />
            <label>Confirm Password</label>
            <asp:TextBox ID="confirmpassword" type="password" runat="server"></asp:TextBox><br />
            <input id="signup" type="submit" value="Sign Up" />
        
    </main>
</asp:Content>
