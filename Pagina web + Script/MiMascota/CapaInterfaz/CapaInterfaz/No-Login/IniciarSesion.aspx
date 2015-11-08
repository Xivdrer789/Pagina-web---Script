<%@ Page Title="" Language="C#" MasterPageFile="~/No-Login/MasterPageNoLogin2.Master" AutoEventWireup="true" CodeBehind="IniciarSesion.aspx.cs" Inherits="CapaInterfaz.No_Login.IniciarSesion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
        <asp:Label ID="Label1" runat="server" Text="Nombre Usuario :"></asp:Label><asp:TextBox
            ID="txtNombreUsuario" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="txtNombreUsuario" 
            ErrorMessage="Falta Rellenar Campo Nombre Usuario" ForeColor="Red">*</asp:RequiredFieldValidator>
        <br /><br />
        <asp:Label ID="Label2" runat="server" Text="Contraseña : "></asp:Label>
        <asp:TextBox ID="txtContraseña" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="txtContraseña" 
            ErrorMessage="Falta Rellenar Campo Contraseña" ForeColor="Red">*</asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
        <br />
        <asp:Label ID="lblError" runat="server" ForeColor="#FF3300" Text="lblError"></asp:Label>
        <br />
        <br />
        <asp:Button ID="btnIngresar" runat="server" Text="Ingresar" 
            onclick="btnIngresar_Click" />
    </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
