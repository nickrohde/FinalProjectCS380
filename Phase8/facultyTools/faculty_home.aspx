<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="faculty_home.aspx.cs" Inherits="Phase8.teacherTools.faculty_home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Menu ID="navMenu" runat="server" BackColor="#7407c6" BorderColor="#5d03a0" StaticMenuItemStyle-ForeColor="#FFFFFF" 
                    StaticMenuItemStyle-VerticalPadding="10px" StaticMenuItemStyle-HorizontalPadding="10px" RenderingMode="List" Orientation="Horizontal">  
    
        <Items>
            <asp:MenuItem Text="Home" NavigateUrl="#"></asp:MenuItem>
            <asp:MenuItem Text="Post Job" NavigateUrl="#"></asp:MenuItem>
            <asp:MenuItem Text="Edit Account" NavigateUrl="#"></asp:MenuItem>
            <asp:MenuItem Text="Institution" NavigateUrl="#"></asp:MenuItem>
            <asp:MenuItem Text="Sign Out" NavigateUrl="#"></asp:MenuItem>
        </Items>
                                  
    </asp:Menu>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
