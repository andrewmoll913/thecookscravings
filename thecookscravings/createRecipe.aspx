<%@ Page Title="Create a New Recipe" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="createRecipe.aspx.cs" Inherits="thecookscravings.createRecipe" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="lblRecipeImage" runat="server" Text="Recipe Image"></asp:Label>
    <asp:FileUpload ID="uploadRecipeImage" runat="server" />
    <asp:Label ID="lblRecipeName" runat="server" Text="Recipe Name"></asp:Label>
    <asp:TextBox ID="txtRecipeName" runat="server"></asp:TextBox>
    <asp:Label ID="lblPrepTime" runat="server" Text="Preparation Time"></asp:Label>
    <asp:TextBox ID="txtPrepTime" runat="server"></asp:TextBox>
    <asp:Label ID="lblCookingTime" runat="server" Text="Preparation Time"></asp:Label>
    <asp:TextBox ID="txtCookingTime" runat="server"></asp:TextBox>
    <asp:Label ID="lblRecipeDescription" runat="server" Text="Recipe Description" TextMode="MultiLine"></asp:Label>
    <asp:TextBox ID="txtRecipeDescription" runat="server" TextMode="MultiLine"></asp:TextBox>
    <asp:Label ID="lblIngredients" runat="server" Text="Ingredients (put each ingredient in each line)"></asp:Label>
    <asp:TextBox ID="txtIngredients" runat="server" TextMode="MultiLine"></asp:TextBox>
    <asp:Label ID="lblSteps" runat="server" Text="Steps (put each step in each line)"></asp:Label>
    <asp:TextBox ID="txtSteps" runat="server" TextMode="MultiLine"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
</asp:Content>

