<%@ Page Title="" Language="C#" MasterPageFile="~/userSide.Master" AutoEventWireup="true" CodeBehind="worker_profile.aspx.cs" Inherits="Elite_Services.worker_profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <p  class="header lcenter">worker profile</>
    
 <div class="  brdW frm flx ">
     
     <table class="tbl2" >
                <tr>
                    <th> Fullname </th>
                    <td> <asp:TextBox ID="txt_fnm"  runat="server"></asp:TextBox> </td>
                </tr>
                
                <tr>
                    <th> Gender </th>
                    <td> <asp:TextBox ID="txt_gen" runat="server"></asp:TextBox> </td>
                </tr>

                <tr>
                    <th> Mobile no </th>
                    <td> <asp:TextBox ID="txt_no" runat="server"></asp:TextBox> </td>
                </tr>

                <tr>
                    <th> Service </th>
                    <td> <asp:TextBox ID="txt_serv" runat="server"></asp:TextBox> </td>
                </tr>
        
                <tr>
                    <th> Address </th>
                    <td> <asp:TextBox ID="txt_add" runat="server"></asp:TextBox> </td>
                </tr>
     </table>
     <table >
     <div >
         <asp:Image ID="Image1" Height="250px" Width="250px" runat="server" />
     </div>
     </table>
       
 </div>

    <asp:Button ID="submit" runat="server"  CssClass="btnn" Text="Book" OnClick="submit_Click" />
</asp:Content>

