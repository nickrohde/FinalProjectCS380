<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="FacultyViewProgress.aspx.cs" Inherits="Phase8.facultyTools.FacultyViewProgress" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link href="../css/FacultyStyle.css" rel="stylesheet" />

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div id="MenuBox">
        <asp:Menu ID="navMenu" runat="server" BackColor="#7407c6" BorderColor="#5d03a0" StaticMenuItemStyle-ForeColor="#FFFFFF" 
                        StaticMenuItemStyle-VerticalPadding="10px" StaticMenuItemStyle-HorizontalPadding="10px" RenderingMode="List" Orientation="Horizontal">  

            <staticselectedstyle backcolor="#8a0bea"/>
    
            <Items>
                <asp:MenuItem Text="Home" NavigateUrl="FacultyHome.aspx"></asp:MenuItem>
                <asp:MenuItem Text="Accept Student Hours" NavigateUrl="FacultyAcceptHours.aspx"></asp:MenuItem>
                <asp:MenuItem Text="View Student Progress" Selected="true"></asp:MenuItem>
                <asp:MenuItem Text="Account Settings" NavigateUrl="FacultyAccount.aspx"></asp:MenuItem>
                <asp:MenuItem Text="Sign Out" NavigateUrl="../LoginPage/LoginPage.aspx"></asp:MenuItem>
            </Items>
                                  
        </asp:Menu>
     </div>

</asp:Content>