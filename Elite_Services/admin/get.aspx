<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="get.aspx.cs" Inherits="Elite_Services.admin.get" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DataList ID="DataList1" runat="server" RepeatDirection="Horizontal">
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("User_Name") %>'></asp:Label>
                </ItemTemplate>
            </asp:DataList>
        </div>
    </form>
</body>
</html>
