<%@ Page Title="" Language="C#" MasterPageFile="~/Login/MasterPageLogin.Master" AutoEventWireup="true" CodeBehind="MiPerfil.aspx.cs" Inherits="CapaInterfaz.Login.MiPerfil" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            text-align: center;
        }
    </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <a href="MiPerfil.aspx">Mis Datos Personales</a>
    <a href="ListarPublicacion.aspx">Listar Publicacion</a>
    <a href="ModificarPublicacion.aspx">Modificar Publicaciones</a><br />
    <br />
    <asp:Label ID="Label1" runat="server" Text="Nombre :"></asp:Label>
&nbsp;<asp:Label ID="lblNombre" runat="server"></asp:Label>
&nbsp;<asp:Label ID="Label2" runat="server" Text="Apellido :"></asp:Label>
&nbsp;<asp:Label ID="lblApellido" runat="server"></asp:Label>
&nbsp;<asp:Label ID="Label3" runat="server" Text="Edad :"></asp:Label>
&nbsp;<asp:Label ID="lblEdad" runat="server"></asp:Label>
&nbsp;<asp:Label ID="Label4" runat="server" Text="Correo :"></asp:Label>
&nbsp;<asp:Label ID="lblCorreo" runat="server"></asp:Label>
&nbsp;
</asp:Content>
