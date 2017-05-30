<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="studentThankYou.aspx.cs" Inherits="Phase8.studentTools.studentThankYou" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="MenuBox">
        <asp:Menu ID="navMenu" runat="server" BackColor="#7407c6" BorderColor="#5d03a0" StaticMenuItemStyle-ForeColor="#FFFFFF"
            StaticMenuItemStyle-VerticalPadding="10px" StaticMenuItemStyle-HorizontalPadding="10px" RenderingMode="List" Orientation="Horizontal">
            <staticselectedstyle backcolor="#8a0bea"/>
            <Items>
                <asp:MenuItem Text="Create A Plan" NavigateUrl="studentCreateAPlan.aspx"></asp:MenuItem>
                <asp:MenuItem Text="View Progress" NavigateUrl="#"></asp:MenuItem>
                <asp:MenuItem Text="Calendar" NavigateUrl="#"></asp:MenuItem>
                <asp:MenuItem Text="Sign Out" NavigateUrl="../LoginPage/LoginPage.aspx"></asp:MenuItem>
            </Items>
        </asp:Menu>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:Label ID="Welcome_Message" runat="server"></asp:Label>
    <div id="ThankYouMessage">
    <h2>Thank You</h2>
    </div>
    <asp:Button ID="Submit" OnClick="returnToStart" text="Return" runat="server" />
</asp:Content>
