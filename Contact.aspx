<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Contact.aspx.vb" Inherits="Contact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Web Contact Form</title>
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

        <!-- Check to see if you are in postback.  If not, display the contact form. -->
        <% If Not IsPostBack Then%>

        Your email address:<br />
        <asp:TextBox ID="senderAddress" runat="server"></asp:TextBox>
        <br />
        <br />
       
         Your message:<br /> 
        <!-- to make your box bigger add rows, columns, and textmode -->
        <asp:TextBox ID="senderMessage" runat="server" Rows="20" Columns="30" TextMode="MultiLine"></asp:TextBox>
        
        <br />
        <br />
        <asp:Button ID="sendMail" runat="server" Text="Send" />

        <!-- If you are in postback, display the confirmation label. -->
        <%Else%>

        <asp:Label ID="confirmSent" runat="server" Text=""></asp:Label>

        <!-- End your 'If' statement. -->
        <%End If%>
       <br />
        <div style= "text-align: center; font-size: small; color: #696969; bottom: 3px;" >&#169 2014 Software Development & Design<br />
    </div>
    </form>
</body>
</html>
