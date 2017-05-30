<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="studentCreateAPlan.aspx.cs" Inherits="Phase8.studentTools.student_home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="MenuBox">
        <asp:Menu ID="navMenu" runat="server" BackColor="#7407c6" BorderColor="#5d03a0" StaticMenuItemStyle-ForeColor="#FFFFFF" 
                        StaticMenuItemStyle-VerticalPadding="10px" StaticMenuItemStyle-HorizontalPadding="10px" RenderingMode="List" Orientation="Horizontal">  
            <staticselectedstyle backcolor="#8a0bea"/>
            <Items>
                <asp:MenuItem Text="Create A Plan" Selected="true" NavigateUrl="#"></asp:MenuItem>
                <asp:MenuItem Text="View Progress" NavigateUrl="studentViewProgress.aspx"></asp:MenuItem>
                <asp:MenuItem Text="Calendar" NavigateUrl="Calendar.aspx"></asp:MenuItem>
                <asp:MenuItem Text="Sign Out" NavigateUrl="../LoginPage/LoginPage.aspx"></asp:MenuItem>
            </Items>
                                  
        </asp:Menu>
     </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
<div ID="StudentForm">
<asp:Label ID="Welcome_Message" runat="server"></asp:Label>
<br />
<asp:Label runat="server">Name:</asp:Label>
<br />
<asp:TextBox runat="server" ID="Name"></asp:TextBox>
<br />
<asp:Label runat="server">Description:</asp:Label>
<br />
<asp:Textbox runat="server" ID="Description" height="200px" textMode="Multiline"></asp:Textbox>
<br />
<asp:Label runat="server">Hours:</asp:Label>
<br />
<asp:TextBox runat="server" ID="Hours"></asp:TextBox>
<br />
<asp:Button ID="Submit" OnClick="submitStudentForm" text="Submit" runat="server" />
</div>
<div><meter id="StudentMeter" max="10" low="0" value="5"></meter></div>

</asp:Content>
