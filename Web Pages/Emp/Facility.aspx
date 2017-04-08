<%@ Page Title="" Language="C#" MasterPageFile="~/Master Pages/Employee.master" AutoEventWireup="true" CodeFile="Facility.aspx.cs" Inherits="Web_Pages_Emp_Facility" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div id="facility">
    
        <br /><br />

       <center>
            <asp:Label ID="lbl_head" runat="server" Text="S.T.D. FACILITY"></asp:Label>
       </center>

        <br />

        <table style="width: 500px; margin-left:25%">
            <tr>
                <td align="justify" width="30%">
                    <asp:Label ID="Id" runat="server" Text="Employee Id" 
                        Width="100%" Height="20px"></asp:Label>                
                </td>
                <td width="10%"></td>
                <td align="justify" width="30%">
                    <asp:TextBox ID="txt_id" runat="server" Width="100%"></asp:TextBox>                
                </td>
            </tr>
            <tr>
                <td align="justify" width="30%">
                    <asp:Label ID="lbl_ext_no" runat="server" Text="Employee Extension Number" 
                        Width="100%" Height="20px"></asp:Label>                
                </td>
                <td width="10%"></td>
                <td align="justify" width="30%">
                    <asp:TextBox ID="txt_ext_no" runat="server" Width="100%"></asp:TextBox>                
                </td>
            </tr>
            <tr>
                <td align="justify" width="30%">
                    <asp:Label ID="lbl_mngr_name" runat="server" Text="Manager Name" Width="100%"></asp:Label>                
                </td>
                <td width="10%"></td>
                <td align="justify" width="30%">
                    <asp:TextBox ID="txt_mngr_name" runat="server" Width="100%"></asp:TextBox>                
                </td>
            </tr>
            <tr>
                <td align="justify" width="30%">
                    <asp:Label ID="lbl_mngr_id" runat="server" Text="Manager ID" Width="100%"></asp:Label>                
                </td>
                <td width="10%"></td>
                <td align="justify" width="30%">
                    <asp:TextBox ID="txt_mngr_id" runat="server" Width="100%"></asp:TextBox>                
                </td>
            </tr>
        </table>
                
        <table style="width: 500px; margin-left:25%">
            <tr>
                <td>
                    <br />
                    <asp:Label ID="lbl_purpose" runat="server" Text="Purpose"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="txt_purpose" runat="server" Height="50px" TextMode="MultiLine" 
                        Width="80%"></asp:TextBox>
                </td>
            </tr>
        </table>

          <br />

        <center>
            <asp:Button ID="btn_submit" runat="server" Text="Submit" Height="35px" 
                Width="90px" onclick="btn_submit_Click" />
            <br />
            <asp:Label ID="lbl_request" runat="server" Text="Your Request For STD Call has been Registered"></asp:Label>
        </center>
</div>


</asp:Content>

