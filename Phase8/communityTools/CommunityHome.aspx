<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="CommunityHome.aspx.cs" Inherits="Phase8.communityTools.CommunityHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link href="../css/CommunityStyle.css" rel="stylesheet" />

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div id="MenuBox">
            <asp:Menu ID="navMenu" runat="server" BackColor="#7407c6" BorderColor="#5d03a0" StaticMenuItemStyle-ForeColor="#FFFFFF" 
                        StaticMenuItemStyle-VerticalPadding="10px" StaticMenuItemStyle-HorizontalPadding="50px" RenderingMode="List" Orientation="Horizontal">  
    
                <Items>
                    <asp:MenuItem Text="Home"></asp:MenuItem>
                    <asp:MenuItem Text="Post Job" NavigateUrl="CommunityJob.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="Institution Info" NavigateUrl="CommunityInfo.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="Edit Account" NavigateUrl="CommunityAccount.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="Sign Out" NavigateUrl="../LoginPage/LoginPage.aspx"></asp:MenuItem>
                </Items>
                                  
            </asp:Menu>
        </div>

</asp:Content>

<asp:Content ID="ContentPlaceHolder2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

</asp:Content>