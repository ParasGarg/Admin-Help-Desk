<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Tech_View.ascx.cs" Inherits="User_Control_Pages_Tech_View" %>

<div>
                 <div id="home_view">
                    <div="logo_image">
                        <table>
                            <tr>
                                <td>
                                    <asp:Image ID="img_logo" runat="server" Height="120px" ImageUrl="~/Images/Logo.jpg" Width="250px" />
                                </td>
                                <td width="3%"></td>
                                <td valign="top">
                                    <br />
                                    <asp:Image ID="img_name" runat="server" Height="30px" ImageUrl="~/Images/Name.jpg" Width="250px" />
                                    <br /><br />
                                    <br />
                                    <asp:Menu ID="menu_home" runat="server" DynamicHorizontalOffset="2" 
                                        Font-Names="Verdana" Font-Size="0.8em" ForeColor="#7C6F57" 
                                        Orientation="Horizontal" StaticEnableDefaultPopOutImage="False" 
                                        StaticSubMenuIndent="10px" Height="20px" RenderingMode="Table" 
                                        BackColor="#F7F6F3" Width="245px">
                                        <DynamicHoverStyle BackColor="#7C6F57" ForeColor="White" />
                                        <DynamicMenuItemStyle Height="11px" HorizontalPadding="5px" VerticalPadding="2px" />
                                        <DynamicMenuStyle BackColor="#F7F6F3" />
                                        <Items>
                                            <asp:MenuItem Text="Home" Value="Home" NavigateUrl="~/Web Pages/Home.aspx"></asp:MenuItem>
                                            <asp:MenuItem Text="Helpdesk" Value="Helpdesk" Selectable="False">
                                                <asp:MenuItem Text="Employee" Value="Employee" 
                                                    NavigateUrl="~/Web Pages/Employee.aspx"></asp:MenuItem>
                                                <asp:MenuItem Text="Admin" Value="Admin" NavigateUrl="~/Web Pages/Admin.aspx"></asp:MenuItem>
                                            </asp:MenuItem>
                                        </Items>
                                        <StaticHoverStyle BackColor="#7C6F57" ForeColor="White" Font-Bold="True" Font-Italic="True" Font-Size="Smaller" />
                                        <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" Height="11px" Width="120px" />
                                    </asp:Menu>
                                </td>
                            </tr>
                        </table>
                    </div>

                </div>
        </div>