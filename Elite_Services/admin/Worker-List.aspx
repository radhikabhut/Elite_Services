<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminSide.Master" AutoEventWireup="true" CodeBehind="Worker-List.aspx.cs" Inherits="Elite_Services.admin.Worker_List" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <center>

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="WorkerList" OnRowCommand="GridView1_RowCommand" >
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="User_Name" HeaderText="User_Name" SortExpression="User_Name" />
                <asp:BoundField DataField="Full_Name" HeaderText="Full_Name" SortExpression="Full_Name" />
                <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                <asp:BoundField DataField="Contect_no" HeaderText="Contect_no" SortExpression="Contect_no" />
                <asp:BoundField DataField="Email_Id" HeaderText="Email_Id" SortExpression="Email_Id" />
                <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                <asp:BoundField DataField="Service" HeaderText="Service" SortExpression="Service" />
                <asp:BoundField DataField="Area" HeaderText="Area" SortExpression="Area" />
                <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                <asp:BoundField DataField="Worker_Image" HeaderText="Worker_Image" SortExpression="Worker_Image" />
                <asp:BoundField DataField="Worker_skill" HeaderText="Worker_skill" SortExpression="Worker_skill" />
                <asp:BoundField DataField="Worker_Experiance" HeaderText="Worker_Experiance" SortExpression="Worker_Experiance" />
                <asp:TemplateField HeaderText="Remove">
                    <ItemTemplate>
                        <asp:ImageButton ID="ImageButton1" runat="server" CommandArgument='<%# Eval("Id") %>' CommandName="cmd_dlt" Height="50px" ImageUrl="~/img/delete.png" Width="50px" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>

        <asp:SqlDataSource ID="WorkerList" runat="server" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\elite_db.mdf;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [W_Regi_tbl]"></asp:SqlDataSource>

    </center>
</asp:Content>

