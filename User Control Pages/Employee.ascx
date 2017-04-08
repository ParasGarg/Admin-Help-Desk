<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Employee.ascx.cs" Inherits="User_Control_Pages_Employee" %>


<div id="sidebar">
    <asp:Menu ID="menu_side" runat="server" DynamicHorizontalOffset="2" 
        Font-Names="Verdana" Font-Size="0.8em" ForeColor="#7C6F57" 
        StaticEnableDefaultPopOutImage="False" StaticSubMenuIndent="10px" 
        Height="20px" RenderingMode="Table" BackColor="#F7F6F3" 
        Orientation="Horizontal">
        <DynamicHoverStyle BackColor="#7C6F57" ForeColor="White" />
        <DynamicMenuItemStyle Height="11px" HorizontalPadding="5px" VerticalPadding="2px" />
        <DynamicMenuStyle BackColor="#F7F6F3" />
        <Items>
            <asp:MenuItem Text="Workstation Movement" Value="Workstation Movement" NavigateUrl="~/Web Pages/Emp/Workstation.aspx"></asp:MenuItem>
            <asp:MenuItem Text="Complaints" Value="Complaints" NavigateUrl="~/Web Pages/Emp/Complaints.aspx"></asp:MenuItem>
            <asp:MenuItem Text="Stationery" Value="Stationery" NavigateUrl="~/Web Pages/Emp/Stationery.aspx"></asp:MenuItem>
            <asp:MenuItem Text="Facility" Value="Facility" NavigateUrl="~/Web Pages/Emp/Facility.aspx"></asp:MenuItem>
        </Items>
        <StaticHoverStyle BackColor="#7C6F57" ForeColor="White" Font-Bold="True" Font-Italic="True" Font-Size="Smaller" />
        <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" 
            Height="11px" Width="266px" />
   </asp:Menu>
</div>