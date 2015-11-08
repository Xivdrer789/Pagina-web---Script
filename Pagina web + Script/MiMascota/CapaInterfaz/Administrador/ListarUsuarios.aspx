<%@ Page Title="" Language="C#" MasterPageFile="~/Administrador/MasterPageAdministracion.Master" AutoEventWireup="true" CodeBehind="ListarUsuarios.aspx.cs" Inherits="CapaInterfaz.Administrador.ListarUsuarios" %>
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
    <a href="ListarUsuarios.aspx">Listar Usuarios</a>
    <a href="EliminarUsuarios.aspx">Eliminar Usuarios</a>
<br /><br />
        <h3 class="style1">Listar Usuarios</h3>&nbsp&nbsp<br /><br />
        <asp:Button ID="btnListarUsuarios" runat="server" Text="Listar" Height="29px" 
        Width="83px" onclick="btnListarUsuarios_Click" />&nbsp&nbsp<br /><br />
        <asp:GridView ID="gvListarUsuarios" runat="server">
        </asp:GridView>
    </ContentTemplate>
    </asp:UpdatePanel>

</asp:Content>
