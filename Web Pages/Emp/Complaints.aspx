<%@ Page Title="" Language="C#" MasterPageFile="~/Master Pages/Employee.master" AutoEventWireup="true" CodeFile="Complaints.aspx.cs" Inherits="Web_Pages_Emp_Complaints" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div id="complaints">
    
        <br /><br />

       <table style="width: 500px; margin-left:25%">
            <tr>
                <td align="center">
                    <asp:Label ID="lbl_head" runat="server" Text="COMPLAINTS"></asp:Label>
                </td>
            </tr>
        </table>

        <br />

        <table style="width: 500px; margin-left:25%">
            <tr>
                <td align="left">
                    <asp:Label ID="lbl_headline" runat="server" Text="Select any one from below:-"></asp:Label>
                </td>
            </tr>
        </table>

        <br />

        <table style="width: 500px; margin-left:28%">
            <tr>
                <td>                    
                    <asp:RadioButtonList ID="rbtn_prob" runat="server" AutoPostBack="True">
                        <asp:ListItem Selected="True">Computer Problem</asp:ListItem>
                        <asp:ListItem>A.C. Problem</asp:ListItem>
                        <asp:ListItem>Lift Problem</asp:ListItem>
                        <asp:ListItem>Cleanliness Problem</asp:ListItem>
                        <asp:ListItem>Pest Control</asp:ListItem>
                        <asp:ListItem>Lock Problem</asp:ListItem>
                        <asp:ListItem>Swipe Card Problem</asp:ListItem>
                        <asp:ListItem>First Aid/Medicine Problem</asp:ListItem>
                        <asp:ListItem>Extension Board</asp:ListItem>
                        <asp:ListItem>Others</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td>
                    <br />
                    <asp:Label ID="lbl_id" runat="server" Text="Employee ID"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="txt_id" runat="server" Height="20px" Width="81%"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <br />
                    <asp:Label ID="lbl_des" runat="server" Text="Description"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="txt_des" runat="server" Height="50px" TextMode="MultiLine" 
                        Width="80%"></asp:TextBox>
                </td>
            </tr>
        </table>

        <br />

        <center>
            <asp:Button ID="btn_submit" runat="server" Text="Submit" Height="35px" 
                Width="90px" onclick="btn_submit_Click" />
            <br />
            <asp:Label ID="lbl_register" runat="server" Text="Your Complaint Registered Successfully"></asp:Label>
        </center>
</div>


</asp:Content>

