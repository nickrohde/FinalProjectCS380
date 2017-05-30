<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="studentViewProgress.aspx.cs" Inherits="Phase8.studentTools.studentViewProgress" %>
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
                <asp:MenuItem Text="Calendar" Selected="true" NavigateUrl="Calendar.aspx"></asp:MenuItem>
                <asp:MenuItem Text="Sign Out" NavigateUrl="../LoginPage/LoginPage.aspx"></asp:MenuItem>
            </Items>
                                  
        </asp:Menu>
     </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
<h2>Good Job Jimbo</h2>
<br />
    You have completed your service hours
</asp:Content>
