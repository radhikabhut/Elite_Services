<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Area_List.aspx.cs" Inherits="Elite_Services.admin.Area_List" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="../css/a.css" />
    <title></title>
</head>
<body>
    <center>    
        <br />
        <br />
        <form id="form1" runat="server"  >
        <div class="frm box shadow1 ">
             Area:<asp:TextBox ID="txt_area" runat="server"></asp:TextBox>
            <br />

            <br />
            <asp:Button ID="Button1" runat="server" Text="Save" OnClick="Button1_Click" />

           
    
             <br />
            <br />
        </div>
            <br />
            <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowCommand="GridView1_RowCommand">
            <Columns>
                <asp:TemplateField HeaderText="Id">
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("Id") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Area">
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("Area_Name") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Edit">
                    <ItemTemplate>
                        <asp:ImageButton ID="ImageButton1" runat="server" CommandArgument='<%# Eval("Id") %>' CommandName="cmd_edt" Height="50px" ImageUrl="~/img/edit.png" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Delete">
                    <ItemTemplate>
                        <asp:ImageButton ID="ImageButton2" runat="server" CommandArgument='<%# Eval("Id") %>' CommandName="cmd_dlt" Height="50px" ImageUrl="~/img/delete.png" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            </asp:GridView>


    </form>


        </center>

</body>
</html>
