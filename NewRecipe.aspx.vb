
Partial Class NewRecipe
    Inherits System.Web.UI.Page

    Protected Sub DV_NewRecipe_ItemInserted(sender As Object, e As DetailsViewInsertedEventArgs) Handles DV_NewRecipe.ItemInserted
        Response.Redirect("./default.aspx")
    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        DV_NewRecipe.Focus()
    End Sub
End Class
