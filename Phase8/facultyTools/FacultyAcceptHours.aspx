<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="FacultyAcceptHours.aspx.cs" Inherits="Phase8.facultyTools.StudentCompleted" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link href="../css/FacultyStyle.css" rel="stylesheet" />

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div id="MenuBox">
        <asp:Menu ID="navMenu" runat="server" BackColor="#7407c6" BorderColor="#5d03a0" StaticMenuItemStyle-ForeColor="#FFFFFF" 
                        StaticMenuItemStyle-VerticalPadding="10px" StaticMenuItemStyle-HorizontalPadding="10px" RenderingMode="List" Orientation="Horizontal">  

            <staticselectedstyle backcolor="#8a0bea"/>
    
            <Items>
                <asp:MenuItem Text="Home" NavigateUrl="FacultyHome.aspx" ></asp:MenuItem>
                <asp:MenuItem Text="Accept Student Hours" Selected="true"></asp:MenuItem>
                <asp:MenuItem Text="View Student Progress" NavigateUrl="FacultyViewProgress.aspx"></asp:MenuItem>
                <asp:MenuItem Text="Account Settings" NavigateUrl="FacultyAccount.aspx"></asp:MenuItem>
                <asp:MenuItem Text="Sign Out" NavigateUrl="../LoginPage/LoginPage.aspx"></asp:MenuItem>
            </Items>
                                  
        </asp:Menu>
     </div>

</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

     <div id="headerStyle">

        <h2>Welcome!</h2>
        
        
        <table>
  <tr>
    <th>Last Name</th>
    <th>First Name</th>
    <th>Student ID</th>
    <th>Description</th>
    <th>Accept/Reject</th>
  </tr>
  <tr>
    <td>Washington</td>
    <td>George</td>
    <td>1234567</td>
    <td>Lorem ipsum dolor sit amet, consectetur adipiscing elit...</td>
    <td>
         <input type="radio" name="acceptOrReject" value="accept" /> Accept<br />
         <input type="radio" name="acceptOrReject" value="reject" /> Reject<br />
    </td>
  </tr>
  <tr>
    <td>Adams</td>
    <td>John</td>
    <td>1546344</td>
    <td>Lorem ipsum dolor sit amet, consectetur adipiscing elit...</td>
    <td>
         <input type="radio" name="acceptOrReject" value="accept" /> Accept<br />
         <input type="radio" name="acceptOrReject" value="reject" /> Reject<br />
    </td>
  </tr>
  <tr>
    <td>Jefferson</td>
    <td>Thomas</td>
    <td>8905402</td>
    <td>Lorem ipsum dolor sit amet, consectetur adipiscing elit...</td>
    <td>
         <input type="radio" name="acceptOrReject" value="accept" /> Accept<br />
         <input type="radio" name="acceptOrReject" value="reject" /> Reject<br />
    </td>
  </tr>
  <tr>
    <td>Madison</td>
    <td>James</td>
    <td>6743563</td>
    <td>Lorem ipsum dolor sit amet, consectetur adipiscing elit...</td>
    <td>
         <input type="radio" name="acceptOrReject" value="accept" /> Accept<br />
         <input type="radio" name="acceptOrReject" value="reject" /> Reject<br />
    </td>
  </tr>
</table>

        <p class="bodyStyle">
            Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor <br />
            incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud <br />
            exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute <br />
            irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla <br />
            pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia <br />
            deserunt mollit anim id est laborum.
        </p>

     </div>

</asp:Content>