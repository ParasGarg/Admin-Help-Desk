<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Admin.ascx.cs" Inherits="User_Control_Pages_Admin" %>


<div id="sidebar">
    <asp:Menu ID="menu_side" runat="server" DynamicHorizontalOffset="2" 
        Font-Names="Verdana" Font-Size="0.8em" ForeColor="#7C6F57" 
        StaticEnableDefaultPopOutImage="False" StaticSubMenuIndent="10px" 
        Height="20px" RenderingMode="Table" BackColor="#F7F6F3" 
        Orientation="Horizontal" Width="518px">
        <DynamicHoverStyle BackColor="#7C6F57" ForeColor="White" />
        <DynamicMenuItemStyle Height="11px" HorizontalPadding="5px" VerticalPadding="2px" />
        <DynamicMenuStyle BackColor="#F7F6F3" />
        <Items>
            <asp:MenuItem Text="Complaints" Value="Complaints" NavigateUrl="~/Web Pages/Admini/Complaints.aspx"></asp:MenuItem>
            <asp:MenuItem Text="Requests" Value="Requests" Selectable="False" >
                <asp:MenuItem NavigateUrl="~/Web Pages/Admini/Workstation.aspx" Text="Workstation" Value="Workstation"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/Web Pages/Admini/Stationery.aspx" Text="Stationery" Value="Stationery"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/Web Pages/Admini/Facility.aspx" Text="S.T.D. Facility" Value="S.T.D. Facility"></asp:MenuItem>
            </asp:MenuItem>
        </Items>
        <StaticHoverStyle BackColor="#7C6F57" ForeColor="White" Font-Bold="True" Font-Italic="True" Font-Size="Smaller" />
        <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" 
            Height="11px" Width="257px" />
   </asp:Menu>
</div>
