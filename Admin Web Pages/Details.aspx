<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Details.aspx.cs" Inherits="Admin_Web_Pages_Details" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 270px;
        }
        .style2
        {
            text-align: center;
        }
        .style3
        {
            width: 208px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>

       <table>
            <tr>
                <td class="style1">
                    <asp:Label ID="lbl_name" runat="server" Text="Employee Name" 
                        Width="45%" Height="18px"></asp:Label>                
                </td>
                <td width="3%" class="style2"><strong>:</strong></td>
                <td class="style3">
                    <asp:TextBox ID="txt_name" runat="server" Width="100%" Height="22px"></asp:TextBox>                
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="lbl_fname" runat="server" Text="Father's Name" Width="45%" 
                        Height="16px"></asp:Label>                
                </td>
                <td width="3%" class="style2"><strong>:</strong></td>
                <td class="style3">
                    <asp:TextBox ID="txt_fname" runat="server" Width="100%"></asp:TextBox>                
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="lbl_add" runat="server" Text="Address" Width="45%" Height="16px"></asp:Label>                
                </td>
                <td width="3%" class="style2"><strong>:</strong></td>
                <td class="style3">
                    <asp:TextBox ID="txt_add" runat="server" Width="100%"></asp:TextBox>                
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="lbl_mob" runat="server" Text="Mobile Number" Width="45%" 
                        Height="16px"></asp:Label>                
                </td>
                <td width="3%" class="style2"><strong>:</strong></td>
                <td class="style3">
                    <asp:TextBox ID="txt_mob" runat="server" Width="100%"></asp:TextBox>                
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="lbl_ext" runat="server" Text="Extension Number" Width="45%" 
                        Height="16px"></asp:Label>                
                </td>
                <td width="3%" class="style2"><strong>:</strong></td>
                <td class="style3">
                    <asp:TextBox ID="txt_ext" runat="server" Width="100%" Height="22px"></asp:TextBox>                
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="lbl_work" runat="server" Text="Workshop Number" Width="45%" 
                        Height="16px"></asp:Label>                
                </td>
                <td width="3%" class="style2"><strong>:</strong></td>
                <td class="style3">
                    <asp:TextBox ID="txt_workshop" runat="server" Width="100%"></asp:TextBox>                
                </td>
            </tr>
        </table>

          <br />
        <asp:HiddenField ID="hddn_id" runat="server" Value="ID" />
        <br />

        <asp:Button ID="btn_submit" runat="server" Text="Submit" Height="35px" 
            style="margin-left: 10px" Width="90px" onclick="btn_submit_Click" />
        <asp:Button ID="btn_Edit" runat="server" Text="Edit" Height="35px" 
            style="margin-left: 10px" Width="90px" onclick="btn_Edit_Click" />
        <asp:Button ID="btn_delete" runat="server" Text="Delete" Height="35px" 
            style="margin-left: 10px" Width="90px" onclick="btn_delete_Click" />

</div>

    </form>
</body>
</html>
