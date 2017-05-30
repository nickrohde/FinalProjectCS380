<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="CommunityAccount.aspx.cs" Inherits="Phase8.communityTools.CommunityAccount" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link href="../css/CommunityStyle.css" rel="stylesheet" />

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div id="MenuBox">
            <asp:Menu ID="navMenu" runat="server" BackColor="#7407c6" BorderColor="#5d03a0" StaticMenuItemStyle-ForeColor="#FFFFFF" 
                        StaticMenuItemStyle-VerticalPadding="10px" StaticMenuItemStyle-HorizontalPadding="50px" RenderingMode="List" Orientation="Horizontal">  
    
                <Items>
                    <asp:MenuItem Text="Home" NavigateUrl="CommunityHome.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="Post Job" NavigateUrl="CommunityJob.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="Institution Info" NavigateUrl="CommunityInfo.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="Edit Account"></asp:MenuItem>
                    <asp:MenuItem Text="Sign Out" NavigateUrl="../LoginPage/LoginPage.aspx"></asp:MenuItem>
                </Items>
                                  
            </asp:Menu>
        </div>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

     <div id="AccountInfo">

        <h2>Instituition Name:</h2>
        
        <p class="indent">
            Dummy Instituition
        </p>

        <h2>Instituition Description:</h2>
        
        <p class="indent">
            Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor <br />
            incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud <br />
            exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute <br />
            irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla <br />
            pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia <br />
            deserunt mollit anim id est laborum.
        </p>

     </div>

</asp:Content>
