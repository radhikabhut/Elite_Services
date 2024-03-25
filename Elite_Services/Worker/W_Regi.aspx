<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="W_Regi.aspx.cs" Inherits="Elite_Services.Worker.W_Regi" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="../css/a.css" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="fcenter frm  shadow1">
            <h2>Welcome</h2>
            <table>
                <tr>
                    <th>Name:</th>
                    <td><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <th>Area:</th>
                    <td>
                    <asp:DropDownList ID="DropDownList1" CssClass="dropd" runat="server">
                        <asp:ListItem>abc</asp:ListItem>
                        <asp:ListItem>Xyz</asp:ListItem>
                        </asp:DropDownList>
                        </td>
                </tr>
                <tr>
                    <th>Gender</th>
                    <td>
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" CssClass="radio" RepeatDirection="Horizontal">
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                        </asp:RadioButtonList></td>
                </tr>
            </table>
            <asp:Button ID="Button1" runat="server" CssClass="btn" Text="Button" />


        </div>
    </form>
</body>
</html>
