<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="stylesheet.css">
</head>
<body>
    <form id="form1" runat="server">
   
   <div>
    
            <div style = "text-align:center; font-size:xx-large; font-weight:bold;">
                <br />
                Wicked Easy Recipes</div>
           <div style ="text-align :center; font-size: large;" >
                Using 5 Ingedients or Less!
            </div><br />
            <br />
                <div style="text-align:center">
                <a href="Default.aspx" style="color: #696969">
                Home</a>&nbsp; |&nbsp; <a href="NewRecipe.aspx" style="color: #696969">
                New Recipe</a>&nbsp; |&nbsp; <a href="AboutUs.aspx" style="color: #696969">
                About Us</a>&nbsp; |&nbsp; <a href="Contact.aspx" style="color: #696969">
                Contact</a>
                </div> 
            <br />        
        </div>
       <br />

    <div>
    
        <asp:SqlDataSource ID="Sql_Default" runat="server" ConnectionString="<%$ ConnectionStrings:db_stateFacts %>" DeleteCommand="DELETE FROM [hwang44_HW6_Recipe] WHERE [ID] = @ID" InsertCommand="INSERT INTO [hwang44_HW6_Recipe] ([Recipe_Name], [Submitted_By], [Ingredient_#1], [Ingredient_#2], [Ingredient_#3], [Ingredient_#4], [Ingredient_#5], [Preparation], [Notes]) VALUES (@Recipe_Name, @Submitted_By, @column1, @column2, @column3, @column4, @column5, @Preparation, @Notes)" SelectCommand="SELECT * FROM [hwang44_HW6_Recipe]" UpdateCommand="UPDATE [hwang44_HW6_Recipe] SET [Recipe_Name] = @Recipe_Name, [Submitted_By] = @Submitted_By, [Ingredient_#1] = @column1, [Ingredient_#2] = @column2, [Ingredient_#3] = @column3, [Ingredient_#4] = @column4, [Ingredient_#5] = @column5, [Preparation] = @Preparation, [Notes] = @Notes WHERE [ID] = @ID">
            <DeleteParameters>
                <asp:Parameter Name="ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Recipe_Name" Type="String" />
                <asp:Parameter Name="Submitted_By" Type="String" />
                <asp:Parameter Name="column1" Type="String" />
                <asp:Parameter Name="column2" Type="String" />
                <asp:Parameter Name="column3" Type="String" />
                <asp:Parameter Name="column4" Type="String" />
                <asp:Parameter Name="column5" Type="String" />
                <asp:Parameter Name="Preparation" Type="String" />
                <asp:Parameter Name="Notes" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Recipe_Name" Type="String" />
                <asp:Parameter Name="Submitted_By" Type="String" />
                <asp:Parameter Name="column1" Type="String" />
                <asp:Parameter Name="column2" Type="String" />
                <asp:Parameter Name="column3" Type="String" />
                <asp:Parameter Name="column4" Type="String" />
                <asp:Parameter Name="column5" Type="String" />
                <asp:Parameter Name="Preparation" Type="String" />
                <asp:Parameter Name="Notes" Type="String" />
                <asp:Parameter Name="ID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        
        <asp:GridView class="defaultGrid" ID="GV_Default" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="Sql_Default" PageSize="5">
            <Columns>
                <asp:BoundField DataField="Recipe_Name" HeaderText="Recipe Name" SortExpression="Recipe_Name"/>
                <asp:BoundField DataField="Submitted_By" HeaderText="Submitted By" SortExpression="Submitted_By" />
                <asp:HyperLinkField DataNavigateUrlFields="ID" DataNavigateUrlFormatString="RecipeDetail.aspx?ID={0}" Text="Select" />
            </Columns>
        </asp:GridView>
    <br />
    <br />
    </div>
    </div>
        <br />
        <div style= "text-align: center; font-size: small; color: #696969; bottom: 3px;" >&#169 2014 Software Development & Design<br />
    </div>
    </form>
</body>
</html>
