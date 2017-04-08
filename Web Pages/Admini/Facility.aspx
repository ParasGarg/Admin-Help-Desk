<%@ Page Title="" Language="C#" MasterPageFile="~/Master Pages/Admin.master" AutoEventWireup="true" CodeFile="Facility.aspx.cs" Inherits="Web_Pages_Admini_Facility" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

 <br /><br />

       <table style="width: 500px; margin-left:25%">
            <tr>
                <td align="center">
                    <asp:Label ID="lbl_head" runat="server" Text="S.T.D. FACILITIES REQUEST"></asp:Label>
                </td>
            </tr>
        </table>

        <br />

    <table class="style1">
        <tr><td>&nbsp;</td></tr>
        <tr>
            <td>
                <asp:GridView ID="gv_std" runat="server" AllowSorting="True"  AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" 
                    GridLines="None" TabIndex="-1" style="text-align: center" Width="1060px" AllowPaging="True" onpageindexchanging="gv_std_PageIndexChanging">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="Id" HeaderText="Employee ID" />
                        <asp:BoundField DataField="Extension" HeaderText="Extension" />
                        <asp:BoundField DataField="Manger_Name" HeaderText="Manager Name" />
                        <asp:BoundField DataField="Manger_Id" HeaderText="Manager Id" />
                        <asp:BoundField DataField="Purpose" HeaderText="Purpose" />
                        <asp:TemplateField HeaderText="Status">
                            <ItemTemplate>
                                <asp:DropDownList ID="ddl_status" runat="server" AutoPostBack="True" Height="16px" Width="93px" CausesValidation="False" CommandName="gv_status"
                                    style="text-align: center" CommandArgument='<%#DataBinder.Eval(Container,"DataItem.Id") %>'>
                                    <asp:ListItem Selected="True">Pending</asp:ListItem>
                                    <asp:ListItem>Running</asp:ListItem>
                                    <asp:ListItem>Completed</asp:ListItem>
                                </asp:DropDownList>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="Remarks" HeaderText="Remarks" />
                        <asp:TemplateField HeaderText="Delete">
                         <ItemTemplate>
                                <asp:LinkButton ID="lnk_btn_delete" runat="server" style="text-align: center" CausesValidation="False" CommandName="gv_delete"
                                                CommandArgument='<%#DataBinder.Eval(Container,"DataItem.Id") %>'>
                                Delete
                                </asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>
                <asp:HiddenField ID="hddn_id" runat="server" Value="Id" />
            </td>
        </tr>
    </table>

</asp:Content>

