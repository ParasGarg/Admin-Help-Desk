<%@ Page Title="" Language="C#" MasterPageFile="~/Master Pages/Admin.master" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="Web_Pages_Admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <br /><br />

    <center>
        <asp:Label ID="lbl_wel" runat="server" Font-Bold="True" Font-Size="22pt" 
            Height="27px" Text="WELCOME" Width="151px" style="margin-top: 7px" 
            ForeColor="#666666"></asp:Label>
        <br />
        <asp:Label ID="lbl_home" runat="server" Font-Bold="True" Font-Size="26pt" 
            Height="33px" Text="ADMIN VIEW" Width="330px" ForeColor="#666666"></asp:Label>
    </center>


</asp:Content>

