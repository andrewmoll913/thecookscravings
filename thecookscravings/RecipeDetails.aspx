<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RecipeDetails.aspx.cs" Inherits="thecookscravings.RecipeDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <main class="jumbotron">
        <asp:FormView ID="RecipeDetailsForm" DataSourceID="RecipesSource" DataKeyNames="recipe_id" runat="server">
            <ItemTemplate>
                <section class="row">
                    <section class="col">
                        <asp:Image ID="RecipeImage" ImageUrl='<%# Eval("image") %>' runat="server" />
                    </section>
                    <section class="col">
                        <h1 id="lblRecipeTitle" class=""><%# Eval("recipe_name") %> </h1>
                        <p id="lblRecipeDescription"><%# Eval("recipe_description") %></p>
                        <p id="lblPrepTime">Prep time: <strong><%# Eval("prep_time") %></strong></p>
                        <p id="lblCookingTime">Prep time: <strong><%# Eval("cooking_time") %></strong></p>
                    </section>
                </section>
                <hr class="my-4">
                <section id="steps" class="row">
                    <section class="col">
                        <h1>Steps</h1>
                        <asp:ListView ID="StepsList" DataSourceID="StepsSource" runat="server">
                            <EmptyDataTemplate>
                                <h1>No Steps</h1>
                            </EmptyDataTemplate>
                            <EmptyItemTemplate>
                                <li />
                            </EmptyItemTemplate>
                            <ItemTemplate>
                                <li runat="server"><%# Eval("step_description") %></li>
                            </ItemTemplate>
                            <LayoutTemplate>
                                <ol runat="server">
                                    <li id="itemPlaceHolder" runat="server"></li>
                                </ol>
                            </LayoutTemplate>
                        </asp:ListView>
                    </section>
                    <section class="col">
                        <h1>Ingredients</h1>
                        <asp:ListView ID="IngredientsList" DataSourceID="IngredientsSource" runat="server">
                            <EmptyDataTemplate>
                                <h1>No Ingredients</h1>
                            </EmptyDataTemplate>
                            <EmptyItemTemplate>
                                <li />
                            </EmptyItemTemplate>
                            <ItemTemplate>
                                <li runat="server"><%# Eval("ingredient") %></li>
                            </ItemTemplate>
                            <LayoutTemplate>
                                <ul runat="server">
                                    <li id="itemPlaceHolder" runat="server"></li>
                                </ul>
                            </LayoutTemplate>
                        </asp:ListView>
                    </section>
                </section>
            </ItemTemplate>
        </asp:FormView>
    </main>
    <asp:SqlDataSource ID="RecipesSource"
        runat="server"
        ConnectionString="<%$ ConnectionStrings:DefaultConnect %>"
        SelectCommand="SELECT recipe_name, recipe_id, recipe_description, image, prep_time, cooking_time FROM recipes WHERE (recipe_id = @recipe_id)">
        <SelectParameters>
            <asp:QueryStringParameter Name="recipe_id" QueryStringField="recipe_id" DbType="Int32" />

        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="StepsSource"
        runat="server"
        ConnectionString="<%$ ConnectionStrings:DefaultConnect %>"
        SelectCommand="SELECT [step_description] FROM [steps] WHERE ([recipe_id] = @recipe_id) ORDER BY [step_number]">

        <SelectParameters>
            <asp:QueryStringParameter Name="recipe_id" QueryStringField="recipe_id" Type="Int32" />

        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="IngredientsSource" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnect %>" SelectCommand="SELECT * FROM [ingredients] WHERE ([recipe_id] = @recipe_id)">
        <SelectParameters>
            <asp:QueryStringParameter Name="recipe_id" QueryStringField="recipe_id" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
