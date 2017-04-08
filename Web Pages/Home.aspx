<%@ Page Title="" Language="C#" MasterPageFile="~/Master Pages/Tech_main.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Web_Pages_Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<br />
<div id="home_view">
    
    <br /><br />
    
    <center>
        <asp:Label ID="lbl_wel" runat="server" Font-Bold="True" Font-Size="22pt" 
            Height="27px" Text="WELCOME" Width="151px" style="margin-top: 7px" 
            ForeColor="#666666"></asp:Label>
        <br />
        <asp:Label ID="lbl_home" runat="server" Font-Bold="True" Font-Size="26pt" 
            Height="33px" Text="ADMIN HELPDESK" Width="330px" ForeColor="#666666"></asp:Label>
    </center>

</div>

</asp:Content>

