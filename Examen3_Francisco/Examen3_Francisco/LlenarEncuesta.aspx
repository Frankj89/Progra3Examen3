<%@ Page Title="" Language="C#" MasterPageFile="~/Menu.Master" AutoEventWireup="true" CodeBehind="LlenarEncuesta.aspx.cs" Inherits="Examen3_Francisco.LlenarEncuesta" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <div class="container text-center">
       <h5>ENCUESTAS</h5>
   </div>
    <div class="container text-center">
       
        <asp:GridView runat="server" ID="datagrid" HorizontalAlign="Center"
            CssClass="mydatagrid" PagerStyle-CssClass="pager" HeaderStyle-CssClass="header"
            RowStyle-CssClass="rows" AllowPaging="True" CellPadding="4" ForeColor="#333333" GridLines="None" >
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
<HeaderStyle CssClass="header" BackColor="#5D7B9D" Font-Bold="True" ForeColor="White"></HeaderStyle>

<PagerStyle CssClass="pager" BackColor="#284775" ForeColor="White" HorizontalAlign="Center"></PagerStyle>

<RowStyle CssClass="rows" BackColor="#F7F6F3" ForeColor="#333333"></RowStyle>
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
</div>

 

   <div class="container text-center">
     
  <div class="col-auto">
    <label for="inputPassword6" class="col-form-label">EncuestaID</label>
      <br />
      <asp:TextBox ID="Tencuesta" class="col-auto" runat="server"></asp:TextBox>
  </div>
  
</div>

   <div class="container text-center">
     
  <div class="col-auto">
    <label for="inputPassword6" class="col-form-label">Nombre</label>
      <br />
      <asp:TextBox ID="Tnombre" class="col-auto" runat="server"></asp:TextBox>
  </div>
  
</div>

   <div class="container text-center">
     
  <div class="col-auto">
    <label for="inputPassword6" class="col-form-label">EdadNacimiento</label>
      <br />
      <asp:TextBox ID="Tedad" class="col-auto" runat="server"></asp:TextBox>
  </div>
  
</div>

   <div class="container text-center">
     
  <div class="col-auto">
    <label for="inputPassword6" class="col-form-label">CorreoElectronico</label>
      <br />
      <asp:TextBox ID="Tcorreo" class="col-auto" runat="server"></asp:TextBox>
  </div>
</div>
  

   <div class="container text-center">
       <asp:Button ID="Bagregar" class="btn btn-outline-primary" runat="server" Text="Agregar" OnClick="Bagregar_Click" />
       
      
</div>
    </asp:Content>
