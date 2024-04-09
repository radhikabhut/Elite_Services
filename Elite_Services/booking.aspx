<%@ Page Title="" Language="C#" MasterPageFile="~/userSide.Master" AutoEventWireup="true" CodeBehind="Booking.aspx.cs" Inherits="Elite_Services.Booking" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder2">
    <center>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowCommand="GridView1_RowCommand">
        <Columns>
            <asp:TemplateField HeaderText="Full_Name">
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("Full_Name") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Mobile_No">
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("Contect_no") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Cancle">
                <ItemTemplate>
                    <asp:ImageButton ID="ImageButton1" runat="server" CommandArgument='<%# Eval("ID") %>' CommandName="cmd_dlt" Height="50px" ImageUrl="~/img/cancel.png" />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="Bookedworker" runat="server"></asp:SqlDataSource>
        </center>
            </asp:Content>

