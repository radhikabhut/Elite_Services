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
                <th> <asp:Label ID="lbl_unm" runat="server"  Text="Username"></asp:Label> </th>
                <td> <asp:TextBox ID="txt_unm" class="bdr" runat="server"></asp:TextBox> </td>
            </tr>
        
            <tr>
                <th> <asp:Label ID="lbl_fnm" runat="server" Text="Fullname"></asp:Label> </th>
                <td> <asp:TextBox ID="txt_fnm" class="bdr" runat="server"></asp:TextBox> 
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txt_fnm" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                </td>
            </tr>

            <tr>
                <th><asp:Label ID="lbl_gn" runat="server" Text="Gender"></asp:Label>  </th>
                <td> <asp:RadioButtonList ID="Gender" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem>Male</asp:ListItem> 
                    <asp:ListItem>Female</asp:ListItem>
                    </asp:RadioButtonList> </td>
            </tr>

            <tr>
                <th> <asp:Label ID="lbl_no" runat="server" Text="Contect no"></asp:Label> </th>
                <td> <asp:TextBox ID="txt_no" class="bdr"  runat="server" TextMode="Phone"></asp:TextBox> </td>
            </tr>

            <tr>
                <th class="auto-style1"> <asp:Label ID="lbl_eml" runat="server" Text="Email Id"></asp:Label> </th>
                <td class="auto-style1"> <asp:TextBox ID="txt_eml" class="bdr" runat="server" TextMode="Email"></asp:TextBox> 
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="txt_eml" runat="server" ErrorMessage="RegularExpressionValidator" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="None" Height="0px" Width="86px"></asp:RegularExpressionValidator>
                </td>
            </tr>

            <tr>
                <th> <asp:Label ID="lbl_ps" runat="server" Text="Password"></asp:Label> </th>
                <td> <asp:TextBox ID="txt_ps" class="bdr" runat="server" TextMode="Password"></asp:TextBox> </td>
            </tr>

            <tr>
                <th> <asp:Label ID="lbl_cp" runat="server" Text="Conform Password"></asp:Label> </th>
                <td> <asp:TextBox ID="txt_cp" class="bdr" runat="server" TextMode="Password" ValidateRequestMode="Enabled"></asp:TextBox> 
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="txt_cp" ControlToCompare="txt_ps" ErrorMessage="CompareValidator"></asp:CompareValidator>
                </td>
            </tr>

            <tr>
                <th> <asp:Label ID="lbl_drp_service" runat="server"  Text="Service"></asp:Label> </th>
                <td> <asp:DropDownList ID="drp_service" CssClass="bdr" runat="server">
                    <asp:ListItem>--Select Service--</asp:ListItem>
                    <asp:ListItem>Electricians</asp:ListItem>
                    <asp:ListItem>Painter</asp:ListItem>
                    <asp:ListItem>Plumber</asp:ListItem>
                    <asp:ListItem>Carpenter</asp:ListItem>
                    <asp:ListItem>Cleaning &amp; Disinfection</asp:ListItem>
                    <asp:ListItem>Appliance Repair</asp:ListItem>
                    </asp:DropDownList> 
                    <br />
                </td>
            </tr>
            <br />
            <tr>
                <th> <asp:Label ID="lbl_drp_area" runat="server" Text="Area"></asp:Label> </th>
                <td> <asp:DropDownList ID="drp_area" CssClass="bdr" runat="server">
                    <asp:ListItem>--Select Area--</asp:ListItem>
                    <asp:ListItem>Arya Nagar</asp:ListItem>
                    <asp:ListItem>Gandhigram</asp:ListItem>
                    <asp:ListItem>Hari Nagar</asp:ListItem>
                    <asp:ListItem>Kuvadva</asp:ListItem>
                    <asp:ListItem>Lodhika</asp:ListItem>
                    <asp:ListItem>Mavdi</asp:ListItem>
                    <asp:ListItem>Railnagar</asp:ListItem>
                    <asp:ListItem>Shastri Nagar</asp:ListItem>
                    <asp:ListItem>Kotharia</asp:ListItem>
                    <asp:ListItem>Bhakti Nagar</asp:ListItem>
                    <asp:ListItem>Virpa Nagar</asp:ListItem>
                    <asp:ListItem>Vaishali Nagar</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                </td>
            </tr>

             <tr>
                <th> <asp:Label ID="lbl_add" runat="server" Text="Address"></asp:Label> </th>
                <td> <asp:TextBox ID="txt_add" class="bdr" runat="server" TextMode="MultiLine"></asp:TextBox> </td>
            </tr>


            <tr>
                <th> <asp:Label ID="lbl_ur_pic" runat="server" Text="Upload your photo"></asp:Label> </th>
                <td> <asp:FileUpload ID="flu_ur_img" runat="server" /> </td>
            </tr>

             <tr>
                <th> <asp:Label ID="lbl_skill_cer" runat="server" Text="Upload your skill certificate"></asp:Label> </th>
                <td> <asp:FileUpload ID="flu_skill_img" runat="server" />  </td>
            </tr>

             <tr>
                <th> <asp:Label ID="lbl_exp_cer" runat="server" Text="Upload your experiance certificate"></asp:Label> </th>
                <td> <asp:FileUpload ID="flu_exp_img" runat="server" /> </td>
            </tr>

            <tr>
                <td>  <asp:Button ID="submit" runat="server" CssClass="btn" Text="Submit" OnClick="Button1_Click" /> </td>
            </tr>
            </table>
           


        </div>
    </form>
</body>
</html>
