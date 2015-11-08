<%@ Page Title="" Language="C#" MasterPageFile="~/Login/MasterPageLogin.Master" AutoEventWireup="true" CodeBehind="ModificarPublicacion.aspx.cs" Inherits="CapaInterfaz.Login.ModificarPublicacion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
    <a href="MiPerfil.aspx">Mis Datos Personales</a>
    <a href="ListarPublicacion.aspx">Listar Publicacion</a>
    <a href="ModificarPublicacion.aspx">Modificar Publicaciones</a><br />
        <br />
        <br />
        <br />
        <br />
    <br />
        <asp:Button ID="btnModificar" runat="server" Text="Modificar" /><br />
        <br />
    </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
