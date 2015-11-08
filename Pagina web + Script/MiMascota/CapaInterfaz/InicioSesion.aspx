<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestra2.Master" AutoEventWireup="true" CodeBehind="InicioSesion.aspx.cs" Inherits="CapaInterfaz.InicioSesion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Iniciar Sesión</h2><br />
    <asp:Table ID="Table1" runat="server" 
        style="margin:0 auto; text-align: center;" Height="98px" 
        Width="284px">
        <asp:TableHeaderRow ID="TableHeaderRow1" runat="server">
        <asp:TableCell></asp:TableCell>
        </asp:TableHeaderRow>
        <asp:TableRow ID="TableRow1" runat="server">
        <asp:TableCell>Usuario :</asp:TableCell>
        <asp:TableCell><asp:TextBox ID="txtUsuario" runat="server"></asp:TextBox></asp:TableCell>
        </asp:TableRow>
        <asp:TableRow ID="TableRow2" runat="server">
        <asp:TableCell>Contraseña :</asp:TableCell>
        <asp:TableCell>
            <asp:TextBox ID="txtContraseña" runat="server" TextMode="Password"></asp:TextBox></asp:TableCell>
        </asp:TableRow>
    </asp:Table><br /><asp:Label runat="server" ID="lblError" ForeColor="Red"></asp:Label><br />
    <asp:Button ID="btnIngresar" runat="server" Text="Ingresar" 
        style="margin:0 auto" Height="40px" Width="97px" 
        onclick="btnIngresar_Click" />
</asp:Content>
