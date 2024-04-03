<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Show_Worker.aspx.cs" Inherits="Elite_Services.Show_Worker" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <asp:DataList ID="DataList1" runat="server" DataKeyField="Id" DataSourceID="shoe" RepeatDirection="Horizontal">
                 <ItemTemplate>
                     Id:
                     <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                     <br />
                     User_Name:
                     <asp:Label ID="User_NameLabel" runat="server" Text='<%# Eval("User_Name") %>' />
                     <br />
<br />
                 </ItemTemplate>
             </asp:DataList>
             <asp:SqlDataSource ID="shoe" runat="server" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\elite_db.mdf;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [Id], [User_Name] FROM [W_Regi_tbl]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
