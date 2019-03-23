<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="thecookscravings._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <main class="jumbotron">
        <asp:ListView ID="RecipeList" DataKeyNames="recipe_id" DataSourceID="RecipesSource" GroupItemCount="4" runat="server">
            <EmptyDataTemplate>
                <table >
                    <tr>
                        <td>No recipes</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <EmptyItemTemplate>
                <td />
            </EmptyItemTemplate>
            <GroupTemplate>
                    <tr id="itemPlaceholderContainer" runat="server">
                        <td id="itemPlaceholder" runat="server"></td>
                    </tr>
                </GroupTemplate>
            <ItemTemplate>
                <td runat="server">
                        <table>
                            <tr>
                                <td>
                                    <img src='<%# Eval("image") %>' alt='<%# Eval("image") %>' class="thumbnail"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="lblRecipe" runat="server" Text='<%# Eval("recipe_name") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                    </td>
            </ItemTemplate>
            <LayoutTemplate>
                    <table style="width:100%;">
                        <tbody>
                            <tr>
                                <td>
                                    <table id="groupPlaceholderContainer" runat="server" style="width:100%">
                                        <tr id="groupPlaceholder"></tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td></td>
                            </tr>
                            <tr></tr>
                        </tbody>
                    </table>
                </LayoutTemplate>
        </asp:ListView>
        <asp:SqlDataSource ID="RecipesSource" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnect %>" SelectCommand="SELECT [recipe_name], [recipe_id], [image] FROM [recipes]"></asp:SqlDataSource>
    </main>

    

</asp:Content>
