<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="showUser.aspx.cs" Inherits="Phase4.showUser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Updated Account</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="first" runat="server" ></asp:Label>
        <br />
        <asp:Label ID="last" runat="server" ></asp:Label>
        <br />
        <asp:Label ID="username" runat="server" ></asp:Label>
        <br />
        <asp:Label ID="password" runat="server" ></asp:Label>
        <br />
        <asp:Label ID="address" runat="server" ></asp:Label>
        <br />
        <asp:Label ID="email_address" runat="server"></asp:Label>
        <br />
        <asp:Label ID="phone_number" runat="server" ></asp:Label>
        <br />
        <br />
        <a href="../index.aspx">Return to Homepage</a>
    </div>
    </form>
</body>
</html>
