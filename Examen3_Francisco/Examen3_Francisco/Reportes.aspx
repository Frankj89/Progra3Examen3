<%@ Page Title="" Language="C#" MasterPageFile="~/Menu.Master" AutoEventWireup="true" CodeBehind="Reportes.aspx.cs" Inherits="Examen3_Francisco.Reportes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container text-center">
    <h5>Reportes</h5>
</div>

<div class="container text-center">

    <asp:GridView ID="datagrid" runat="server"></asp:GridView>

</div>
</asp:Content>
