﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="U_Login.aspx.cs" Inherits="Elite_Services.U_Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="../css/a.css" />
    <title></title>
    <style>

         body{
             background-image:url("../img/loginbg.jpg");
         }
    </style>
</head>
<body>
    <form id="form1" runat="server">
         <div class="fcenter frm  shadow1">
             <h2> Login Your  Self </h2><br/>
        <table>
                 <tr>
                     <th>Emial:</th>
                     <td> <asp:TextBox ID="txt_eml" runat="server"></asp:TextBox> </td>
                 </tr>

                <tr>
                    <th>Password:</th>
                    <td> <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox> </td>
                </tr>
             <tr>
                <td colspan="2" rowspan="2" style="text-align: right;">  
                    <asp:Button ID="submit"  CssClass="submit" runat="server"  Text="Submit" />
                    
<%--                    <input type="submit" class="submit">  --%>
                </td>
            </tr>


        </table>
             
          
        </div>
    </form>
</body>
</html>
