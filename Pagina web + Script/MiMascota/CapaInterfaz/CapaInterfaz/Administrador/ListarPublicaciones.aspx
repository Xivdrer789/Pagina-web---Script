<%@ Page Title="" Language="C#" MasterPageFile="~/Administrador/MasterPageAdministracion.Master" AutoEventWireup="true" CodeBehind="ListarPublicaciones.aspx.cs" Inherits="CapaInterfaz.Administrador.ListarPublicaciones" %>
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
    <a href="EliminarPublicaciones.aspx">Eliminar Publicaciones</a>
<br /><br />
        <h3 class="style1">Listar Publicaciones</h3>&nbsp&nbsp<br /><br />
            <asp:Button ID="btnListar" runat="server" Text="Listar" Height="29px" 
        Width="83px" />&nbsp&nbsp<br /><br />
            <asp:GridView ID="gvListarPublicaciones" runat="server">
            </asp:GridView>
        </ContentTemplate>
        </asp:UpdatePanel>
</asp:Content>
