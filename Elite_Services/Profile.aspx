<%@ Page Title="" Language="C#" MasterPageFile="~/userSide.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="Elite_Services.Profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
   <p  class="header lcenter">Your profile</>
    
 <div class="  brdW frm flx w60 ma jcsb">
     
     <table >
     <div >
         <asp:Image ID="Image1" Height="300px" Width="300px" runat="server" style="border-radius:50%; border-bottom: 3px solid black; border-right: 3px solid black; padding:5px; " />
     </div>
     </table>
         <style>
             .tbl2{
             }
             .tbl2 th{font-weight:700 !important;}
         </style>
     <table class="tbl2 w15r" >
                <tr>
                    <th> Fullname : &nbsp </th>
                    <td><asp:Label ID="txt_fnm" runat="server" Text="Label"></asp:Label></td>
                </tr>
                
                <tr>
                    <th> Gender : &nbsp </th>
                    <td><asp:Label ID="txt_gen" runat="server" Text="Label"></asp:Label></td></tr>

                <tr>
                    <th> Mobile no : &nbsp </th>
                    <td>
                        <asp:Label ID="txt_no" runat="server" Text="Label"></asp:Label></td>
                </tr>
                
                <tr>
                    <th> Email Id : &nbsp </th>
                    <td>
                        <asp:Label ID="txt_eml" runat="server" Text="Label"></asp:Label></td>
                </tr>

                <tr>
                    <th> City : &nbsp </th>
                    <td>
                        <asp:Label ID="txt_cty" runat="server" Text="Label"></asp:Label></td>
                </tr>
        
                <tr>
                    <th> Address : &nbsp </th>
                    <td> <asp:Label ID="txt_add" runat="server" Text="Label"></asp:Label></td>
                </tr>
     </table>
    <asp:Button ID="submit" runat="server"  CssClass="btnn  lcenter" Text="Book" OnClick="submit_Click" />
       
 </div>
</asp:Content>

