<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="thecookscravings._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <main class="jumbotron">
        <asp:GridView ID="RecipesGrid" datasourceid="RecipesSource" runat="server" AutoGenerateColumns="False" DataKeyNames="recipe_id">
            <Columns>
                <asp:BoundField DataField="recipe_name" HeaderText="recipe_name" SortExpression="recipe_name" />
                <asp:BoundField DataField="recipe_id" HeaderText="recipe_id" InsertVisible="False" ReadOnly="True" SortExpression="recipe_id" />
                <asp:BoundField DataField="image" HeaderText="image" SortExpression="image" />
            </Columns>
    </asp:GridView>
        <asp:SqlDataSource ID="RecipesSource" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnect %>" SelectCommand="SELECT [recipe_name], [recipe_id], [image] FROM [recipes]"></asp:SqlDataSource>
    </main>

    

</asp:Content>
