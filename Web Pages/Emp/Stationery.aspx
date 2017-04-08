<%@ Page Title="" Language="C#" MasterPageFile="~/Master Pages/Employee.master" AutoEventWireup="true" CodeFile="Stationery.aspx.cs" Inherits="Web_Pages_Emp_Stationery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 25%;
        }
        .style2
        {
            width: 53%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div id="stationery">
    
        <br /><br />

       <center>
            <asp:Label ID="lbl_head" runat="server" Text="STATIONERY"></asp:Label>
       </center>
       
        
        <br />
        <table style="width: 799px; margin-left:25%; margin-right: 25%">
            <tr>
                <td class="style2">
                    <h4>File Holders</h4>
                </td>
                <td>
                   <h4>Paper Based Material</h4> 
                </td>
            </tr>
            <tr>
                <td align="left" class="style2">
                    <asp:RadioButtonList ID="rbtn_file" runat="server" AutoPostBack="True">
                        <asp:ListItem>Plastic Holder</asp:ListItem>
                        <asp:ListItem>Lever File</asp:ListItem>
                        <asp:ListItem>File Tray</asp:ListItem>
                        <asp:ListItem>Card Album</asp:ListItem>
                        <asp:ListItem>Board File</asp:ListItem>
                        <asp:ListItem>Spring File</asp:ListItem>
                        <asp:ListItem>Binder Dock</asp:ListItem>
                        <asp:ListItem>Folio Jacket</asp:ListItem>
                        <asp:ListItem>Green Separator</asp:ListItem>
                        <asp:ListItem>Clip</asp:ListItem>
                    </asp:RadioButtonList>
                 </td>
        
                <td width="50%" align="left">
                    <asp:RadioButtonList ID="rbtn_ppr" runat="server" AutoPostBack="True">
                        <asp:ListItem>Eraser</asp:ListItem>
                        <asp:ListItem>Sharpner</asp:ListItem>
                        <asp:ListItem>Scale &#39;&#39;12</asp:ListItem>
                        <asp:ListItem>Brown Tape</asp:ListItem>
                        <asp:ListItem>Cello Tape</asp:ListItem>
                        <asp:ListItem>A4 Sheet Paper</asp:ListItem>
                        <asp:ListItem>Punch</asp:ListItem>
                        <asp:ListItem>Stepler</asp:ListItem>
                        <asp:ListItem>Stepler Pins</asp:ListItem>
                        <asp:ListItem>Scissors</asp:ListItem>
                    </asp:RadioButtonList>
               </td>
            </tr>
        </table>

        <br />
        <table style="width: 800px; margin-left:25%; margin-right: 25%">
            <tr>
                <td class="style2">
                    <h4>Pen & Markers</h4>
                </td>
                <td>
                   <h4>Others</h4> 
                </td>
            </tr>
            <tr>
                <td align="left" class="style2">
                    <asp:RadioButtonList ID="rbtn_pen" runat="server" AutoPostBack="True">
                        <asp:ListItem>Sketch Pen Black</asp:ListItem>
                        <asp:ListItem>Sketch Pen Coloured</asp:ListItem>
                        <asp:ListItem>Pen</asp:ListItem>
                        <asp:ListItem>Pencil</asp:ListItem>
                        <asp:ListItem>Folio Pen Set</asp:ListItem>
                        <asp:ListItem>Highlihter</asp:ListItem>
                        <asp:ListItem>White Board Marker</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                 <td width="50%" align="left">
                    <asp:RadioButtonList ID="rbtn_other" runat="server" AutoPostBack="True">
                        <asp:ListItem>Calculator</asp:ListItem>
                        <asp:ListItem>Marker Duster</asp:ListItem>
                        <asp:ListItem>Remover</asp:ListItem>
                        <asp:ListItem>Board Pins</asp:ListItem>
                        <asp:ListItem>Ink Pad</asp:ListItem>
                        <asp:ListItem>Stamp</asp:ListItem>
                        <asp:ListItem>I-Card Holder</asp:ListItem>
                        <asp:ListItem Value="I-Card Strip">I-Card Strip</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
        </table>

        <br />
        
        <table style="width: 600px; margin-left:30%">
            
            <tr>
                <td align="justify" class="style1">
                    <asp:Label ID="lbl_item" runat="server" Text="Item Selected" Width="100%"></asp:Label>                
                </td>
                <td width="10%"></td>
                <td align="justify" width="40%">
                    <asp:TextBox ID="txt_item_file" runat="server" Width="22.9%" Height="22px"></asp:TextBox>
                    <asp:TextBox ID="txt_item_ppr" runat="server" Width="22.9%" Height="22px"></asp:TextBox>
                    <asp:TextBox ID="txt_item_pen" runat="server" Width="22.9%" Height="22px"></asp:TextBox>
                    <asp:TextBox ID="txt_item_other" runat="server" Width="22.9%" Height="22px"></asp:TextBox>                
                                  
                </td>
            </tr>
            <tr>
                <td align="justify" class="style1">
                    <asp:Label ID="lbl_qty" runat="server" Text="Quantity" Width="100%"></asp:Label>                
                </td>
                <td width="10%"></td>
                <td align="justify" width="40%">
                    <asp:TextBox ID="txt_qty_file" runat="server" Width="22.9%" Height="22px"></asp:TextBox> 
                    <asp:TextBox ID="txt_qty_ppr" runat="server" Width="22.9%" Height="22px"></asp:TextBox>
                    <asp:TextBox ID="txt_qty_pen" runat="server" Width="22.9%" Height="22px"></asp:TextBox>
                    <asp:TextBox ID="txt_qty_other" runat="server" Width="22.9%" Height="22px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="justify" class="style1">
                    <asp:Label ID="lbl_id" runat="server" Text="Employee Id" Width="100%"></asp:Label>                
                </td>
                <td width="10%"></td>
                <td align="justify" width="40%">
                    <asp:TextBox ID="txt_id" runat="server" Width="99%" Height="22px"></asp:TextBox>                
                </td>
            </tr>
        </table>
                
          <br />

        <center>
            <asp:Button ID="btn_submit" runat="server" Text="Submit" Height="35px" Width="90px" onclick="btn_submit_Click" />
            <br />
            <asp:Label ID="lbl_success" runat="server" Text="Request for Stationery Item is Successfully Registered" ></asp:Label> 
        </center>
</div>


</asp:Content>

