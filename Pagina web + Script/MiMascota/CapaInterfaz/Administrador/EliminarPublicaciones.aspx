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
        &nbsp&nbsp
                  <asp:DropDownList ID="ddlListaEli" runat="server" 
            DataSourceID="EntityDataSource1" DataTextField="id_publicacion" 
            DataValueField="id_publicacion">
        </asp:DropDownList>
        <asp:EntityDataSource ID="EntityDataSource1" runat="server" 
            ConnectionString="name=EF_Pagina" DefaultContainerName="EF_Pagina" 
            EnableFlattening="False" EntitySetName="Publicacion" 
            Select="it.[id_publicacion]">
        </asp:EntityDataSource>
                  <br /><br />
        <asp:Button ID="btnBuscarPublicacionId" runat="server" Text="Buscar" Height="32px" 
            Width="91px" onclick="btnBuscarPublicacionId_Click"/>
        <br />
        <br />
        <asp:Label ID="lblMensaje" runat="server"></asp:Label>
        <br /><br />
    </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
