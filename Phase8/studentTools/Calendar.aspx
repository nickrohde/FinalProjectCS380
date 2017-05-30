<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Calendar.aspx.cs" Inherits="Phase8.studentTools.Calendar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div id="MenuBox">
        <asp:Menu ID="navMenu" runat="server" BackColor="#7407c6" BorderColor="#5d03a0" StaticMenuItemStyle-ForeColor="#FFFFFF" 
                        StaticMenuItemStyle-VerticalPadding="10px" StaticMenuItemStyle-HorizontalPadding="10px" RenderingMode="List" Orientation="Horizontal">  
            <staticselectedstyle backcolor="#8a0bea"/>
            <Items>
                <asp:MenuItem Text="Create A Plan" NavigateUrl="studentCreateAPlan.aspx"></asp:MenuItem>
                <asp:MenuItem Text="View Progress" NavigateUrl="studentViewProgress.aspx"></asp:MenuItem>
                <asp:MenuItem Text="Calendar" Selected="true" NavigateUrl="#"></asp:MenuItem>
                <asp:MenuItem Text="Sign Out" NavigateUrl="../LoginPage/LoginPage.aspx"></asp:MenuItem>
            </Items>
                                  
        </asp:Menu>
     </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
<iframe src="https://calendar.google.com/calendar/embed?src=sqn5mq1729a5huk5q97lsc9ma0%40group.calendar.google.com&ctz=America/Los_Angeles" style="border: 0" width="800" height="600" frameborder="0" scrolling="no"></iframe>

</asp:Content>
