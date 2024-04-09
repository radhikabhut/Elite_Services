<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminSide.Master" AutoEventWireup="true" CodeBehind="Area-List.aspx.cs" Inherits="Elite_Services.admin.Area_List1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <center>
        <br />
        <br />
        <div class="frm box shadow1 ">
             Area:<asp:TextBox ID="txt_area" runat="server"></asp:TextBox>
            <br />

            <br />
            <asp:Button ID="Button1" CssClass="btnn" runat="server" Text="Save" OnClick="Button1_Click"/>

           
    
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
                        <asp:ImageButton ID="ImageButton1" runat="server" CommandArgument='<%# Eval("Id") %>' CommandName="cmd_edt" Height="50px" ImageUrl="~/img/edit.png" Width="50px" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Delete">
                    <ItemTemplate>
                        <asp:ImageButton ID="ImageButton2" runat="server" CommandArgument='<%# Eval("Id") %>' CommandName="cmd_dlt" Height="50px" ImageUrl="~/img/delete.png" Width="50px" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </center>
</asp:Content>

