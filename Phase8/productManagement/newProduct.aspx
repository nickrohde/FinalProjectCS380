<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="newProduct.aspx.cs" Inherits="Phase6.productManagement.newProduct" %>

<!DOCTYPE html>

<link href="../css/style.css" rel="stylesheet" />
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add New Product</title>
</head>
<body runat="server">
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
                    <li><a href="../shopping/productsPage.aspx">Products</a></li>
                    <li><a >Current Sale</a></li>
                    <li><a >Hot Items</a></li>
                    <li><a >Checkout</a></li>
                        <%--Place holder links ^^ --%>
                </ul>
            </nav>

            <div id="logoutBox" runat="server" visible="true">

                <asp:Button ID="logoutButton" OnClick="logoutButton_Click" runat="server" Text="Logout"/>

            </div>

        </div>

    <%-- Main Page Content --%>
        <main runat="server">
            <div runat="server" id="productBox">

                <h3 id="productBoxLabel"> Add New Product: </h3>
                <div id="inputBox">
                    <%-- Add Product --%>
                    <asp:Label ID="newProductName" runat="server">Product Name: </asp:Label>
                    <asp:Textbox ID="newProductNameInput" runat="server"></asp:Textbox>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="newProductNameInput" ErrorMessage="Product Name is Required." CssClass="error">*</asp:RequiredFieldValidator>
                    <br />
                    <asp:Label ID="newProductDescription" runat="server">Product Description: </asp:Label>
                    <asp:Textbox ID="newProductDescriptionInput" runat="server"></asp:Textbox>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="newProductDescriptionInput" ErrorMessage="Product Description is Required." CssClass="error">*</asp:RequiredFieldValidator>
                    <br />
                    <asp:Label ID="newProductPrice" runat="server">Price: </asp:Label>
                    <asp:Textbox ID="newProductPriceInput" runat="server"></asp:Textbox>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="newProductPriceInput" ErrorMessage="Price is Required." CssClass="error">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator runat="server" ControlToValidate="newProductPriceInput" ValidationExpression="^[+]?([.]\d+|\d+([.]\d+)?)$" ErrorMessage="Invalid Price, must be positve a number." CssClass="error">*</asp:RegularExpressionValidator>
                    <br />
                    <asp:Label ID="newProductQuantity" runat="server">Quantity: </asp:Label>
                    <asp:Textbox ID="newProductQuantityInput" runat="server"></asp:Textbox>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="newProductQuantityInput" ErrorMessage="Quantity is Required." CssClass="error">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator runat="server" ControlToValidate="newProductQuantityInput" ValidationExpression="^[1-9]\d*$" ErrorMessage="Invalid Quantity, must be positive integer." CssClass="error">*</asp:RegularExpressionValidator>
                    <br />
                    <asp:Button ID="submitButton" runat="server" OnClick="submitButton_Click" Text="Send"/>  
                </div>
                <div id="errorBox" runat="server">
                    <asp:ValidationSummary runat=server HeaderText="There were errors on the page:" CssClass="error" />
                </div>
            </div>
        </main>
    </form>

    <%-- Footer --%>
    <footer> Contact Us - Copyright - Legal - Feedback </footer>


</body>
</html>
