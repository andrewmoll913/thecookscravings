<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="thecookscravings._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <main class="jumbotron">
        <asp:ListView ID="RecipeList" DataKeyNames="recipe_id" DataSourceID="RecipesSource" GroupItemCount="4" runat="server">
            <EmptyDataTemplate>
                <div class="card-deck">
                    <div class="card">
                        <div class="card-title">No recipes</div>
                    </div>
                </div>
            </EmptyDataTemplate>
            <EmptyItemTemplate>
                <div />
            </EmptyItemTemplate>
            <GroupTemplate>
                <div id="itemPlaceholderContainer" class="card-deck" runat="server">
                    <asp:PlaceHolder ID="itemPlaceholder" runat="server" />
                </div>
            </GroupTemplate>
            <ItemTemplate>
                <asp:HyperLink ID="HyperLink1" class="card bg-dark text-white mb-4" runat="server">
                    <img src='<%# Eval("image") %>' alt='<%# Eval("image") %>' class="card-img-top" />
                    <div class="card-body">
                        <asp:Label ID="lblRecipeTitle" runat="server" Text='<%# Eval("recipe_name") %>' CssClass="card-title"></asp:Label>
                    </div>
                </asp:HyperLink>
            </ItemTemplate>
            <LayoutTemplate>
                <div id="groupPlaceholderContainer" runat="server">
                    <div id="groupPlaceholder" runat="server">
                    </div>
                </div>
            </LayoutTemplate>
        </asp:ListView>
        <asp:SqlDataSource ID="RecipesSource" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnect %>" SelectCommand="SELECT [recipe_name], [recipe_id], [recipe_description], [image] FROM [recipes]"></asp:SqlDataSource>
    </main>



</asp:Content>
