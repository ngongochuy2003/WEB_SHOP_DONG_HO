<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/LayoutPageAdmin.master" AutoEventWireup="true" CodeFile="ThongKe.aspx.cs" Inherits="Admin_ThongKe" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2 class="text-center title">Thống kê</h2>
    <asp:GridView ID="GridView1" runat="server" CssClass="table table-striped table-bordered table-hover"></asp:GridView>
    <div class="text-right">
        <asp:Label ID="txtTongDoanhThu" runat="server" CssClass="font-weight-bold" Font-Size="X-Large"></asp:Label>
    </div>
</asp:Content>

