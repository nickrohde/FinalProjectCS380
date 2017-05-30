<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="CommunitySignUp.aspx.cs" Inherits="Phase8.communityTools.CommunitySignUp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    <div id="SignUpBox">

        <h1>Community Sign Up</h1>
        <p>Thank you for signing up! Please provide some information, <br />
           and we will contact you to verify your account shortly.</p>

        <asp:Label runat="server" CssClass="label">Institution Name: </asp:Label>
        <asp:TextBox runat="server"></asp:TextBox>
        <br />
        <asp:Label runat="server" CssClass="label">Your Name: </asp:Label>
        <asp:TextBox runat="server"></asp:TextBox>
        <br />
        <asp:Label runat="server" CssClass="label">Your Position: </asp:Label>
        <asp:TextBox runat="server"></asp:TextBox>
        <br />
        <asp:Label runat="server" CssClass="label">Desired Username: </asp:Label>
        <asp:TextBox runat="server"></asp:TextBox>
        <br />
        <asp:Label runat="server" CssClass="label">Password: </asp:Label>
        <asp:TextBox runat="server"></asp:TextBox>
        <br />
        <asp:Label runat="server" CssClass="label">Contact Phone #: </asp:Label>
        <asp:TextBox runat="server"></asp:TextBox>
        <br />
        <asp:Button runat="server" Text="Sign Up" onclick="SignUp_Click"/>
    </div>



</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
