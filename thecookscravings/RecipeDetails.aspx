<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RecipeDetails.aspx.cs" Inherits="thecookscravings.RecipeDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:FormView ID="RecipeDetailsForm" DataKeyNames="recipe_id" runat="server">
        <ItemTemplate>
            <asp:Image ID="RecipeImage" ImageUrl='<%# Eval("image") %>' runat="server"/>
            <asp:Label ID="lblRecipeTitle" runat="server" Text='<%# Eval("recipe_name") %>' CssClass="card-title"></asp:Label>
            <asp:Label ID="lblRecipeDescription" runat="server" Text='<%# Eval("recipe_description") %>' CssClass="card-text"></asp:Label>
        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="RecipesSource"
        runat="server" 
        ConnectionString="<%$ ConnectionStrings:DefaultConnect %>"
        SelectCommand="SELECT [recipe_name], [recipe_id], [recipe_description], [image], [prep_time], [cooking_time] FROM [recipes] WHERE [recipe_id] = @recipe_id">
        <SelectParameters>
            <asp:QueryStringParameter Name="recipe_id" QueryStringField="recipe_id" DbType="Int32"/>

        </SelectParameters>
    </asp:SqlDataSource>
    
</asp:Content>
