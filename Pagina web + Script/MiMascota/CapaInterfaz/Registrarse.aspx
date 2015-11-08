<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestra2.Master" AutoEventWireup="true" CodeBehind="Registrarse.aspx.cs" Inherits="CapaInterfaz.Registrarse" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 class="style1">Registrarse</h2><br />
    <asp:Label ID="Label1" runat="server" Text="Nombre :"></asp:Label>
    <asp:TextBox ID="txtNombre"
        runat="server" MaxLength="10" ToolTip="Ingrese su primer nombre"></asp:TextBox>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
        ControlToValidate="txtNombre" ErrorMessage="Solo letras Nombre" ForeColor="Red" 
        ValidationExpression="[A-Za-z ]*">*</asp:RegularExpressionValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ControlToValidate="txtNombre" Display="Dynamic" 
        ErrorMessage="Falta rellenar campo Nombre" ForeColor="Red">*</asp:RequiredFieldValidator>
    <br />
    <asp:Label ID="Label2" runat="server" Text="Apellido :"></asp:Label>
    <asp:TextBox ID="txtApellido" runat="server" MaxLength="10" 
        ToolTip="Ingrese apellido"></asp:TextBox>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
        ControlToValidate="txtApellido" ErrorMessage="Solo letras Apellido" 
        ForeColor="Red" ValidationExpression="[A-Za-z ]*">*</asp:RegularExpressionValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
        ControlToValidate="txtApellido" Display="Dynamic" 
        ErrorMessage="Falta rellenar campo Apellido" ForeColor="Red">*</asp:RequiredFieldValidator>
    <br />
    <asp:Label ID="Label3" runat="server" Text="Edad :"></asp:Label>
    <asp:TextBox ID="txtEdad" runat="server" MaxLength="2" 
        ToolTip="Ingrese su edad"></asp:TextBox>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
        ControlToValidate="txtEdad" ErrorMessage="solo numeros Edad" ForeColor="Red" 
        ValidationExpression="([0-9]|-)*">*</asp:RegularExpressionValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
        ControlToValidate="txtEdad" Display="Dynamic" 
        ErrorMessage="Falta rellenar campo Edad" ForeColor="Red">*</asp:RequiredFieldValidator>
    <br />
    <asp:Label ID="Label4" runat="server" Text="Correo :"></asp:Label>
    <asp:TextBox ID="txtCorreo" runat="server" MaxLength="10" 
        ToolTip="Ingrese su correo electronico"></asp:TextBox>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
        ControlToValidate="txtCorreo" ErrorMessage="Correo Invalido" ForeColor="Red" 
        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
        ControlToValidate="txtCorreo" Display="Dynamic" 
        ErrorMessage="Falta rellenar campo Correo" ForeColor="Red">*</asp:RequiredFieldValidator>
    <br />
    <asp:Label ID="Label5" runat="server" Text="Nombre Usuario :"></asp:Label>
    <asp:TextBox ID="txtNombreUsuario" runat="server" MaxLength="10" 
        ToolTip="Encargado para iniciar sesion"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
        ControlToValidate="txtNombreUsuario" Display="Dynamic" 
        ErrorMessage="Falta rellenar campo Nombre Usuario" ForeColor="Red">*</asp:RequiredFieldValidator>
    <br />
    <asp:Label ID="Label6" runat="server" Text="Contraseña :"></asp:Label>
    <asp:TextBox ID="txtContraseña" runat="server" MaxLength="10"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
        ControlToValidate="txtContraseña" Display="Dynamic" 
        ErrorMessage="Falta rellenar campo Contraseña" ForeColor="Red">*</asp:RequiredFieldValidator>
    <br />
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
    <br />
    <br />
    <asp:Button ID="btnRegistrar" runat="server" Text="Registrar" 
        onclick="btnRegistrar_Click" />
</asp:Content>
