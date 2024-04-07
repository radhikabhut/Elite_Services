<%@ Page Title="" Language="C#" MasterPageFile="~/userSide.Master" AutoEventWireup="true" CodeBehind="worker_list.aspx.cs" Inherits="Elite_Services.worker_list" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
        <div>
            <h2>Show worker</h2>
             <asp:DataList ID="DataList1" runat="server" OnItemCommand="DataList1_ItemCommand" RepeatDirection="Horizontal" >
                 <ItemTemplate>
                     <asp:ImageButton ID="ImageButton1" runat="server" CommandArgument='<%# Eval("Id") %>' Height="150px" ImageUrl='<%# Eval("Worker_Image") %>' Width="150px" />
                     <br />
                     <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("Id") %>' Text='<%# Eval("Full_Name") %>'></asp:LinkButton>
                     <br />
                 </ItemTemplate>
             </asp:DataList>
        </div>

</asp:Content>

