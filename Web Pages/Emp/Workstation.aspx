<%@ Page Title="" Language="C#" MasterPageFile="~/Master Pages/Employee.master" AutoEventWireup="true" CodeFile="Workstation.aspx.cs" Inherits="Web_Pages_Employee_Workstation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 25%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div id="workshop">
    
        <br /><br />

       <table style="width: 500px; margin-left:25%">
            <tr>
                <td align="center">
                    <asp:Label ID="lbl_head" runat="server" Text="WORKSHOP MOVEMENT"></asp:Label>
                </td>
            </tr>
        </table>

        <br />

        <table style="width: 500px; margin-left:25%">
            <tr>
                <td align="justify" class="style1">
                    <asp:Label ID="lbl_id" runat="server" Text="Employee ID" 
                        Width="100%" Height="20px"></asp:Label>                
                </td>
                <td width="10%"></td>
                <td align="justify" width="30%">
                    <asp:TextBox ID="txt_id" runat="server" Width="100%"></asp:TextBox>                
                </td>
            </tr>
            <tr>
                <td align="justify" class="style1">
                    <asp:Label ID="lbl_old_work" runat="server" Text="Old Workshop Number" 
                        Width="100%" Height="20px"></asp:Label>                
                </td>
                <td width="10%"></td>
                <td align="justify" width="30%">
                    <asp:TextBox ID="txt_old_work" runat="server" Width="100%"></asp:TextBox>                
                </td>
            </tr>
            <tr>
                <td align="justify" class="style1">
                    <asp:Label ID="lbl_new_work" runat="server" Text="New Workshop Number" Width="100%"></asp:Label>                
                </td>
                <td width="10%"></td>
                <td align="justify" width="30%">
                    <asp:TextBox ID="txt_new_work" runat="server" Width="100%"></asp:TextBox>                
                </td>
            </tr>
            <tr>
                <td align="justify" class="style1">
                    <asp:Label ID="lbl_old_ext" runat="server" Text="Old Extension Number" Width="100%"></asp:Label>                
                </td>
                <td width="10%"></td>
                <td align="justify" width="30%">
                    <asp:TextBox ID="txt_old_ext" runat="server" Width="100%"></asp:TextBox>                
                </td>
            </tr>
            <tr>
                <td align="justify" class="style1">
                    <asp:Label ID="lbl_new_ext" runat="server" Text="New Extension Number" Width="100%"></asp:Label>                
                </td>
                <td width="10%"></td>
                <td align="justify" width="30%">
                    <asp:TextBox ID="txt_new_ext" runat="server" Width="100%"></asp:TextBox>                
                </td>
            </tr>
            
        </table>

        <br />

        <table style="width: 500px; margin-left:25%">
            <tr>
                <td class="style1"></td>
                <td width="10%">
                    <asp:Button ID="btn_submit" runat="server" Text="Submit" Height="35px" 
                        style="margin-left: 0px" Width="90px" onclick="btn_submit_Click" />
                </td>
                <td width="30%"></td>
            </tr>
            <tr>
                <td align="center">
                    <asp:Label ID="lbl_success" runat="server" Text="Your Request Submtted Successfully"></asp:Label>
                </td>
            </tr>
        </table>
</div>

</asp:Content>

