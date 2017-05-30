<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="Phase8.LoginPage.LoginPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div id="loginBox" runat="server">

        <asp:Label runat="server">Username:</asp:Label>
        <br />
        <asp:TextBox runat="server" ID="usernameBox"></asp:TextBox>
        <br />
        <asp:Label runat="server">Password:</asp:Label>
        <br />
        <asp:TextBox runat="server" TextMode="password" ID="passwordBox" ></asp:TextBox>
        <br />
        <asp:Button ID="loginButton" OnClick="LogInButtonClick" runat="server" Text="Login"/>
        <br />
        <br />
        <asp:Button ID="SignUpButton" OnClick="SignUpButtonClick" runat="server" Text="Sign Up As Community Member"></asp:Button>

    </div>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
