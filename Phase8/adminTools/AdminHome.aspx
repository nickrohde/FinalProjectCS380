<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="AdminHome.aspx.cs" Inherits="Phase8.adminTools.admin_home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div id="MenuBox">
        <asp:Menu ID="navMenu" runat="server" BackColor="#7407c6" BorderColor="#5d03a0" StaticMenuItemStyle-ForeColor="#FFFFFF" 
                        StaticMenuItemStyle-VerticalPadding="10px" StaticMenuItemStyle-HorizontalPadding="10px" RenderingMode="List" Orientation="Horizontal">  
    
            <Items>
                <asp:MenuItem Text="Home" Selected="true"></asp:MenuItem>
                <asp:MenuItem Text="Post Job" NavigateUrl="#"></asp:MenuItem>
                <asp:MenuItem Text="Edit Account" NavigateUrl="#"></asp:MenuItem>
                <asp:MenuItem Text="Institution" NavigateUrl="#"></asp:MenuItem>
                <asp:MenuItem Text="Sign Out" NavigateUrl="../LoginPage/LoginPage.aspx"></asp:MenuItem>
            </Items>
                                  
        </asp:Menu>

     </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <table border="1px">
                <tr>
                    <td style="width: 258px"><b>Community Service Institution Name</b></td>
                    <td style="width: 113px"><b>Phone Number</b></td>
                    <td style="width: 192px"><b>Email Address</b></td>
                    <td style="width: 179px"><b>Name of Supervisor</b></td>
                </tr>

                <tr>
                    <td style="width: 258px">&nbsp;</td>
                    <td style="width: 113px">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td><asp:CheckBox ID="Remove0" runat="server" Text="Add" /></td>
                </tr>

                <tr>
                    <td style="width: 258px">&nbsp;</td>
                    <td style="width: 113px">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td><asp:CheckBox ID="CheckBox6" runat="server" Text="Add" /></td>
                </tr>

                <tr>
                    <td style="width: 258px; height: 23px;">&nbsp;</td>
                    <td style="width: 113px; height: 23px;">&nbsp;</td>
                    <td style="height: 23px">&nbsp;</td>
                    <td style="height: 23px">&nbsp;</td>
                    <td style="height: 23px"><asp:CheckBox ID="CheckBox7" runat="server" Text="Add" /></td>
                </tr>


                <tr>
                    <td style="width: 258px">&nbsp;</td>
                    <td style="width: 113px">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td><asp:CheckBox ID="CheckBox8" runat="server" Text="Add" /></td>
                </tr>

                <tr>
                    <td style="width: 258px">&nbsp;</td>
                    <td style="width: 113px">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td><asp:CheckBox ID="CheckBox9" runat="server" Text="Add" /></td>
                </tr>
            </table>
            <p>
                &nbsp;</p>
            <p>
                <asp:Button ID="testButton2" runat="server" Text="Add Community Service " OnClick="testButton2_Click" />
            </p>
            <p>
                &nbsp;</p>
            <table border="1px">
                <tr>
                    <td style="width: 258px"><b>Community Service Institution Name</b></td>
                    <td style="width: 113px"><b>Phone Number</b></td>
                    <td style="width: 192px"><b>Email Address</b></td>
                    <td style="width: 179px"><b>Name of Supervisor</b></td>
                </tr>

                <tr>
                    <td style="width: 258px">Ellensburg Animal Shelter</td>
                    <td style="width: 113px">509-111-1111</td>
                    <td>snowball@yahoo.com</td>
                    <td>Rick Sanchez</td>
                    <td><asp:CheckBox ID="Remove" runat="server" Text="Remove" /></td>
                </tr>

                <tr>
                    <td style="width: 258px">Cle Elum Nursing Home</td>
                    <td style="width: 113px">509-222-2222</td>
                    <td>cleelumnursing@gmail.com</td>
                    <td>Nurse Ratchet</td>
                    <td><asp:CheckBox ID="CheckBox1" runat="server" Text="Remove" /></td>
                </tr>

                <tr>
                    <td style="width: 258px; height: 23px;">Ellensburg Church</td>
                    <td style="width: 113px; height: 23px;">509-333-3333</td>
                    <td style="height: 23px">churchladysnl@yahoo.com</td>
                    <td style="height: 23px">Church Lady</td>
                    <td style="height: 23px"><asp:CheckBox ID="CheckBox2" runat="server" Text="Remove" /></td>
                </tr>


                <tr>
                    <td style="width: 258px">Yakima River Cleanup</td>
                    <td style="width: 113px">509-444-4444</td>
                    <td>yakimacleanup@yahoo.com</td>
                    <td>Brook Riverstone</td>
                    <td><asp:CheckBox ID="CheckBox3" runat="server" Text="Remove" /></td>
                </tr>

                <tr>
                    <td style="width: 258px">Random Nonprofit Eburg</td>
                    <td style="width: 113px">509-555-5555</td>
                    <td>somecharity@yahoo.com</td>
                    <td>Doc Tore</td>
                    <td><asp:CheckBox ID="CheckBox5" runat="server" Text="Remove" /></td>
                </tr>
            </table>
        </div>
        <br />
        <br />
        <asp:Button ID="testButton3" runat="server" Text="Remove Community Service " OnClick="testButton3_Click" />
        <br />
        <br />
        <br />
</asp:Content>
