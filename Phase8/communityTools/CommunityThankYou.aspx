<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="CommunityThankYou.aspx.cs" Inherits="Phase8.communityTools.CommunityThankYou" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div id="ThankYouMsg">
        <h1>Thank you for signing up! We will contact you shortly to verify your account.</h1>
    </div>

    <div id="HomeButtonThankYou">
        <asp:Button runat="server" OnClick="RedirectHome" Text="Back To Login" />
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
