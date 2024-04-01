<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="U_Regi.aspx.cs" Inherits="Elite_Services.U_Regi" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <link rel="stylesheet" href="../css/a.css" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server"  >
        <div class="fcenter frm flx shadow1">
            <h2>Welcome</h2>
            <table>
                 <tr>
                <th>      
                    <asp:Label ID="lbl_unm" runat="server" class="ulabel" Text="User Name"></asp:Label>
                    <%--<label for="User Name" class="ulabel">Username:</label>--%>
                </th>
                <td>       
                    <asp:TextBox ID="txt_unm"  class="uinput" runat="server"></asp:TextBox>
                    <%--                    <input type="text" class="uinput" id="username" required>--%>
                </td>
            </tr>


            <tr>
                <th>        
                    <asp:Label ID="lbl_fnm" runat="server" class="ulabel" Text="Full Name"></asp:Label>
                    
<%--                    <label for="full name" class="ulabel">fullname:</label>--%>
                </th>
                <td>        
                    <asp:TextBox ID="txt_fnm"  class="uinput" runat="server"></asp:TextBox>
                    <%--                    <input type="text" class="uinput" id="fnm" required>--%>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_fnm" ErrorMessage="Enter Your Name"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <th>        
                    <asp:Label ID="lbl_gender" runat="server" Text="Gender"></asp:Label>
                    <%--                    <label for="gender" >Gender:</label><br>--%>
                </th>
                <td>
                    <asp:RadioButtonList ID="gender" runat="server">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:RadioButtonList>
                    
                    <%--<input type="radio" name="gender" value="Male">
                    <label for="Male" >Male</label>
                    <input type="radio" name="gender" value="Female">
                    <label for="Female" >Female</label>
                    <input type="radio" name="gender" value="Trans">
                    <label for="Trans" >Trans</label></td>--%>
            </tr>
            <tr>
                <th>    
                    <asp:Label ID="lbl_mo" runat="server" CssClass="ulabel" Text="Mobile"></asp:Label>
                    <%--                    <label for="Mobile" class="ulabel">Contect no:</label>--%>
                </th>
                <td>       
                    <asp:TextBox ID="txt_mo" class="uinput"  runat="server" TextMode="Phone"></asp:TextBox>
                    <%--                    <input type="tel" class="uinput"  required>--%>
                </td>
            </tr>
            <tr>
                <th>        
                    <asp:Label ID="lbl_eml" runat="server" CssClass="ulabel" Text="Email Id"></asp:Label>
                    <%--                    <label for="Email" class="ulabel">Email Id:</label>--%>
                </th>
                <td>        
                    <asp:TextBox ID="txt_eml" class="uinput"  runat="server" TextMode="Email"></asp:TextBox>
                    <%--                    <input type="email" class="uinput" id="email" required>--%>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="txt_eml" runat="server"  ErrorMessage="Enter Proper Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <th>       
                    <asp:Label ID="lbl_pass" CssClass="ulabel" runat="server" Text="Password"></asp:Label>
                    <%--                    <label for="Password" class="ulabel">Password:</label>--%>
                </th>
                <td>       
                    <asp:TextBox ID="txt_ps" class="uinput" runat="server" TextMode="Password" ></asp:TextBox>
                    <%--                    <input type="password" class="uinput" id="password" required>--%>
                </td>
            </tr>
            <tr>
                <th>        
                    <asp:Label ID="lbl_cpass" CssClass="ulabel" runat="server"  Text="Conform Password"></asp:Label>
                    <%--                    <label for="Conform_Password" class="ulabel">Conform Password:</label>--%>
                </th>
                <td>
                    <asp:TextBox ID="txt_cpass" CssClass="uinput" runat="server" TextMode="Password"  ></asp:TextBox>

<%--                    <input type="password" class="uinput" id="cp" required>--%>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="txt_cpass" ControlToCompare="txt_ps" ErrorMessage="password is not a match"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <th>       
                    <asp:Label ID="lbl_ct" CssClass="ulabel" runat="server" Text="City"></asp:Label>
                    <%--                    <label for="city" class="ulabel">City:</label>--%>
                </th>
                <td>        
                    <asp:TextBox ID="txt_ct" class="uinput"  runat="server"></asp:TextBox>
                    <%--                    <input type="text" class="uinput" id="city" required>--%>
                </td>
            </tr>
            <tr>
                <th>       
                    <asp:Label ID="lbl_add" CssClass="ulabel" runat="server" Text="Address"></asp:Label>
                    <%--                    <label for="address" class="ulabel">Address:</label>--%>
                </th>
                <td>        
                    <asp:TextBox ID="txt_add" class="uinput" rows="4"  runat="server" TextMode="MultiLine"></asp:TextBox>
                    <%--                    <textarea  id="address" class="uinput" rows="4" required></textarea>--%>
                </td>
            </tr>
            <tr>
                <td colspan="2" rowspan="2" style="text-align: right;">  
                    <asp:Button ID="submit"  CssClass="submit" runat="server"  Text="Submit" OnClick="submit_Click" />
                    
<%--                    <input type="submit" class="submit">  --%>
                </td>
            </tr>
    <!-- <select id="gender" name="gender" required>
        <option value="male">Male</option>
        <option value="female">Female</option>
        <option value="other">Other</option>
    </select> -->
    
        
        
  
            </table>
        </div>
    </form>
</body>
</html>
