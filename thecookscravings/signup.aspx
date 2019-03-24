<%@ Page Title="Sign Up" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="thecookscravings.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <main class="jumbotron">
        <div class="form-group row">
            <label id="lblUserName" class="col-sm-2 col-form-label" for="MainContent_txtUserName">
                User Name            
            </label>
            <div class="col-sm-10">
                <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="vldUserName" runat="server" ErrorMessage="Please enter your user name" ControlToValidate="txtUserName"></asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-2 col-form-label" for="MainContent_txtFirstName">
                First Name            
            </label>
            <div class="col-sm-10">
                <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="vldFirstName" runat="server" ErrorMessage="Please enter your first name" ControlToValidate="txtFirstName"></asp:RequiredFieldValidator>
            </div>
        </div> 
        <div class="form-group row">
            <label class="col-sm-2 col-form-label" for="MainContent_txtLastName">
                Last Name            
            </label>
            <div class="col-sm-10">
                <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="vldLastName" runat="server" ErrorMessage="Please enter your last name" ControlToValidate="txtLastName"></asp:RequiredFieldValidator>
            </div>
        </div>

        <div class="form-group row">
            <label class="col-sm-2 col-form-label" for="MainContent_txtEmail">
                Email
            </label>
            <div class="col-sm-10">
                <asp:TextBox ID="txtEmail" runat="server" TextMode="Email"></asp:TextBox>
                <asp:RequiredFieldValidator ID="vldEmail" runat="server" ErrorMessage="Please enter your email" ControlToValidate="txtEmail"></asp:RequiredFieldValidator>
            </div>
        </div>

        <div class="form-group row">
            <label class="col-sm-2 col-form-label" for="MainContent_txtPassword">
                Password
            </label>
            <div class="col-sm-10">
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="vldPassword" runat="server" ErrorMessage="Please enter your password" ControlToValidate="txtPassword"></asp:RequiredFieldValidator>
            </div>
        </div>
            
        <div class="form-group row">
            <label class="col-sm-2 col-form-label" for="MainContent_txtConfirmPassword">
                Confirm Password            
            </label>
            <div class="col-sm-10">
                <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="vldConfirmPassword" runat="server" ErrorMessage="Please enter confirm your password" ControlToValidate="txtConfirmPassword"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="vldPasswordCompare" runat="server" ErrorMessage="Passwords must be the same" ControlToCompare="txtConfirmPassword" ControlToValidate="txtPassword"></asp:CompareValidator>
            </div>
        </div>
            
        <div class="form-group row">
            <label class="col-sm-2 col-form-label" for="MainContent_profileImage">
                Profile Image            
            </label>
            <div class="col-sm-10">
                <asp:FileUpload ID="profileImage" runat="server" />
            </div>            
        </div>
        <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" CssClass="btn btn-primary btn-lg" />
    </main>

</asp:Content>
