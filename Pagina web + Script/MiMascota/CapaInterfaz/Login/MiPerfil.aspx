<%@ Page Title="" Language="C#" MasterPageFile="~/Login/MasterPageLogin.Master" AutoEventWireup="true"
    CodeBehind="MiPerfil.aspx.cs" Inherits="CapaInterfaz.Login.MiPerfil" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="treeview">
        <a href="MiPerfil.aspx">Mis Datos Personales</a> <a href="ListarPublicacion.aspx">Listar
            Publicacion</a> <a href="ModificarPublicacion.aspx">Modificar Publicaciones</a><br />
        <br />
        <br />
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div>
        <asp:Label ID="Label1" runat="server" Text="Nombre"></asp:Label>
        &nbsp;&nbsp;
        <asp:Label ID="lblNombre" runat="server"></asp:Label>
        &nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Text="Apellido"></asp:Label>
        &nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblApellido" runat="server"></asp:Label>
        <br />
        <asp:Label ID="Label3" runat="server" Text="Edad"></asp:Label>
        &nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblEdad" runat="server"></asp:Label>
        <br />
        <asp:Label ID="Label4" runat="server" Text="Correo"></asp:Label>
        &nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblCorreo" runat="server"></asp:Label>
        <br />
        <asp:Label ID="Label5" runat="server" Text="Nombre de usuario"></asp:Label>
        &nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblUsuario" runat="server"></asp:Label>
    </div>
</asp:Content>
