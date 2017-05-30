<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="FacultyHome.aspx.cs" Inherits="Phase8.teacherTools.faculty_home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
    <link href="../css/FacultyStyle.css" rel="stylesheet" />

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div id="MenuBox">
        <asp:Menu ID="navMenu" runat="server" BackColor="#7407c6" BorderColor="#5d03a0" StaticMenuItemStyle-ForeColor="#FFFFFF" 
                        StaticMenuItemStyle-VerticalPadding="10px" StaticMenuItemStyle-HorizontalPadding="10px" RenderingMode="List" Orientation="Horizontal">  

            <staticselectedstyle backcolor="#8a0bea"/>
    
            <Items>
                <asp:MenuItem Text="Home" NavigateUrl="CommunityHome.aspx" ></asp:MenuItem>
                    <asp:MenuItem Text="Accept Student Hours" NavigateUrl="FacultyAcceptHours.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="View Student Progress" NavigateUrl="FacultyViewProgress.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="Edit Account" Selected="true"></asp:MenuItem>
                    <asp:MenuItem Text="Sign Out" NavigateUrl="../LoginPage/LoginPage.aspx"></asp:MenuItem>
            </Items>
                                  
        </asp:Menu>
     </div>

</asp:Content>

<asp:Content ID="ContentPlaceHolder2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

</asp:Content>
