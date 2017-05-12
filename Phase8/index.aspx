<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Phase5.WebForm" %>

<!DOCTYPE html>

<link href="css/style.css" rel="stylesheet" />
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Homepage</title>
</head>
<body runat="server">
    <div id="bannerBox">
        <div id="banner">
            <img src="images/header.jpg" />
        </div>
    </div>

    <%-- Lhs menu --%>
    <form id="menu_form" runat="server">

        <div id="menu" runat="server">
            <nav id="main_menu" runat="server">
        
                <h3 id="menu_title">Menu</h3>

                <%-- Menu List --%>
                <ul>
                    <li><a href="productManagement/newProduct.aspx">New Product</a></li>
                    <li><a href="shopping/productsPage.aspx">Products</a></li>
                    <li><a >Current Sale</a></li>
                    <li><a >Hot Items</a></li>
                    <li><a >Checkout</a></li>
                        <%--Place holder links ^^ --%>
                </ul>
            </nav>

            <%-- Login Menu --%>
            <div id="loginBox" runat="server" visible="true">

                <asp:Label runat="server">Username:</asp:Label>
                <br />
                <asp:TextBox runat="server" ID="usernameBox"></asp:TextBox>
                <br />
                <asp:Label runat="server">Password:</asp:Label>
                <br />
                <asp:TextBox runat="server" TextMode="password" ID="passwordBox" ></asp:TextBox>
                <br />
                <asp:Button ID="loginButton" OnClick="loginButton_Click" runat="server" Text="Login"/>
                <br />
                <a href="userManagement/userManagementIndex.aspx">Click to Sign Up</a>
            </div>
            <div id="logoutBox" runat="server" visible="false">

                <asp:Button ID="logoutButton" OnClick="logoutButton_Click" runat="server" Text="Logout"/>

            </div>

        </div>
    </form>

    <%-- Main Page Content --%>
    <main>
        <%-- Welcome User --%>
        <asp:Label ID="Welcome_Message" runat="server"></asp:Label>

    </main>

    <%-- Footer --%>
    <footer> Contact Us - Copyright - Legal - Feedback </footer>


</body>
</html>
