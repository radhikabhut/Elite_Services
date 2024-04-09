<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminSide.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Elite_Services.admin.Index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder2">
  
    <center>
         <p><h2> Recently Booked Worker </h2> </p>

         <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
             <Columns>
                 <asp:TemplateField HeaderText="User_Name">
                     <ItemTemplate>
                         <asp:Label ID="Label1" runat="server" Text='<%# Eval("User_Name") %>'></asp:Label>
                     </ItemTemplate>
                 </asp:TemplateField>
                 <asp:TemplateField HeaderText="Worker_Name">
                     <ItemTemplate>
                         <asp:Label ID="Label2" runat="server" Text='<%# Eval("Wname") %>'></asp:Label>
                     </ItemTemplate>
                 </asp:TemplateField>
                 <asp:TemplateField HeaderText="Booking_Date">
                     <ItemTemplate>
                         <asp:Label ID="Label3" runat="server" Text='<%# Eval("BookingDate") %>'></asp:Label>
                     </ItemTemplate>
                 </asp:TemplateField>
             </Columns>
         </asp:GridView>

    </center>
   


</asp:Content>

