<%@ Page Title="" Language="C#" MasterPageFile="~/Administrador/MasterPageAdministracion.Master" AutoEventWireup="true" CodeBehind="EliminarUsuarios.aspx.cs" Inherits="CapaInterfaz.Administrador.EliminarUsuarios" %>
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
        <h3 class="style1">Eliminar Usuarios</h3>&nbsp&nbsp<br /><br />
        <asp:Label ID="Label1" runat="server" Text="ID :"></asp:Label>
        <asp:DropDownList ID="ddlListaId" runat="server" 
            DataSourceID="EntityDataSource1" DataTextField="id_usuario" 
            DataValueField="id_usuario">
        </asp:DropDownList>
        <asp:EntityDataSource ID="EntityDataSource1" runat="server" 
            ConnectionString="name=EF_Pagina" DefaultContainerName="EF_Pagina" 
            EnableFlattening="False" EntitySetName="Usuario" Select="it.[id_usuario]">
        </asp:EntityDataSource>
        <br /><br />
        <asp:Button ID="btnBuscarUsuarioId" runat="server" Text="Buscar" Height="32px" 
            Width="91px" onclick="btnBuscarUsuarioId_Click" />
        <br />
        <br />
        <asp:Label ID="lblMensaje" runat="server"></asp:Label>
    </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
