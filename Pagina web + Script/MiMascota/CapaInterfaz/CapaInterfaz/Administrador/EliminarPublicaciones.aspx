<%@ Page Title="" Language="C#" MasterPageFile="~/Administrador/MasterPageAdministracion.Master" AutoEventWireup="true" CodeBehind="EliminarPublicaciones.aspx.cs" Inherits="CapaInterfaz.Administrador.EliminarPublicaciones" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
        <a href="ListarPublicaciones.aspx">Listar Publicaciones</a>
        <a href="EliminarPublicaciones.aspx">Eliminar Publicación</a>
        <br /><br />
        <h3 class="style1">Eliminar Publicación</h3>&nbsp&nbsp<br /><br />
        <asp:Label ID="Label1" runat="server" Text="ID :"></asp:Label>
        <asp:TextBox ID="txtNombrePublicacionId" runat="server"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
            ErrorMessage="Solo Letras" ValidationExpression="[A-Za-z]*" 
            ControlToValidate="txtNombrePublicacionId"></asp:RegularExpressionValidator>&nbsp&nbsp
                  <br /><br />
        <asp:Button ID="btnBuscarPublicacionId" runat="server" Text="Buscar" Height="32px" 
            Width="91px"/><br /><br />
        <asp:GridView ID="gvEliminarPublicacion" runat="server">
        </asp:GridView>
    </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
