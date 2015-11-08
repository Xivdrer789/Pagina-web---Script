﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Administrador/MasterPageAdministracion.Master" AutoEventWireup="true" CodeBehind="EliminarUsuarios.aspx.cs" Inherits="CapaInterfaz.Administrador.EliminarUsuarios" %>
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
        <asp:TextBox ID="txtBuscarUsuarioId" runat="server"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
            ErrorMessage="Solo Letras" ValidationExpression="[A-Za-z]*" 
            ControlToValidate="txtBuscarUsuarioId"></asp:RegularExpressionValidator>
        <br /><br />
        <asp:Button ID="btnBuscarUsuarioId" runat="server" Text="Buscar" Height="32px" 
            Width="91px" />
        <asp:GridView ID="gvEliminarUsuario" runat="server" 
            AutoGenerateDeleteButton="True">
        </asp:GridView>
    </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>