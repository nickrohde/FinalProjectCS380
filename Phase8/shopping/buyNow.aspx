<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="buyNow.aspx.cs" Inherits="Phase_7.shopping.buyNow" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Checkout</title>
    <link href="../css/style.css" rel="stylesheet" />
</head>
<body>
    
    <div id="bannerBox"> 
        <div id="banner">
            <img src="../images/header.jpg" />
        </div>
    </div>

    <%-- Lhs menu --%>
    <form runat="server" class="menuAdjust">

        <div id="menu" runat="server">
            <nav id="main_menu" runat="server">
        
                <h3 id="menu_title">Menu</h3>

                <%-- Menu List --%>
                <ul>
                    <li><a href="../index.aspx">Homepage</a></li>
                    <li><a href="../productManagement/newProduct.aspx">New Product</a></li>
                    <li><a href="productsPage.aspx">Products</a></li>
                    <li><a >Current Sale</a></li>
                    <li><a >Hot Items</a></li>

                        <%--Place holder links ^^ --%>
                </ul>
            </nav>

            <div id="logoutBox" runat="server" visible="true">

                <asp:Button ID="logoutButton" OnClick="logoutButton_Click" runat="server" Text="Logout"/>

            </div>

        </div>

    <%-- Main Page Content --%>
        <main runat="server">
            
            <div id="thankYouMsg">
                
                <asp:Label ID="Msg" runat="server"></asp:Label>

            </div>

        </main>
    </form>

    <%-- Footer --%>
    <footer> Contact Us - Copyright - Legal - Feedback </footer>


</body>
</html>
