<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="updateUserInfo.aspx.cs" Inherits="Phase4.update" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Update Account</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="first" runat="server" Text="<b>First Name: </b>"></asp:Label>
        <asp:TextBox ID="fname" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="last" runat="server" Text="<b>Last Name: </b>"></asp:Label>
        <asp:TextBox ID="lname" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="username" runat="server" Text="<b>Username: </b>"></asp:Label>
        <asp:TextBox ID="usernm" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="password" runat="server" Text="<b>Password: </b>"></asp:Label>
        <asp:TextBox ID="passw" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="address" runat="server" Text="<b>Address: </b>"></asp:Label>
        <asp:TextBox ID="addrs" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="email_address" runat="server" Text="<b>Email: </b>"></asp:Label>
        <asp:TextBox ID="email" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="phone_number" runat="server" Text="<b>Phone number: </b>"></asp:Label>
        <asp:TextBox ID="phone" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="submit" Text="Submit" runat="server" onclick="submit_Click"/>    
    </div>
    </form>
</body>
</html>
