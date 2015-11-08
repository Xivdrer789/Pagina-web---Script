<%@ Page Title="" Language="C#" MasterPageFile="~/Login/MasterPageLogin.Master" AutoEventWireup="true" CodeBehind="PublicarMascota.aspx.cs" Inherits="CapaInterfaz.Login.PublicarMascota" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
    <h4>Publicar Mascota</h4>
            <div class="style1">
                <br />
                <asp:Label ID="Label1" runat="server" Text="Nombre :"></asp:Label>
                <asp:TextBox ID="txtNombreMascota" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtNombreMascota" Display="Dynamic" 
                    ErrorMessage="Falta Rellenar Campo" ForeColor="Red">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                    ControlToValidate="txtNombreMascota" ErrorMessage="Solo letras Nombre" 
                    ForeColor="Red" ValidationExpression="[A-Za-z ]*">*</asp:RegularExpressionValidator>
                <br />
                <asp:Label ID="Label2" runat="server" Text="Tamaño :"></asp:Label>
                <asp:TextBox ID="txtTamañoMascota" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtTamañoMascota" Display="Dynamic" 
                    ErrorMessage="Falta Rellenar Campo" ForeColor="Red">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ErrorMessage="Solo letras Tamaño" ForeColor="Red" 
                    ValidationExpression="[A-Za-z ]*" ControlToValidate="txtTamañoMascota">*</asp:RegularExpressionValidator>
                <br />
                <asp:Label ID="Label3" runat="server" Text="Edad :"></asp:Label>
                <asp:TextBox ID="txtEdadMascota" runat="server" MaxLength="2"></asp:TextBox>
                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtEdadMascota" Display="Dynamic" 
                    ErrorMessage="Falta Rellenar Campo" ForeColor="Red">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                    ErrorMessage="Solo Numero" ForeColor="Red" 
                    ValidationExpression="([0-9]|-)*" ControlToValidate="txtEdadMascota">*</asp:RegularExpressionValidator>
                <br />
                <asp:Label ID="Label4" runat="server" Text="Fecha Perdida: "></asp:Label>
                <asp:TextBox ID="txtFecha" runat="server" ReadOnly="True"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="txtFecha" Display="Dynamic" 
                    ErrorMessage="Falta Rellenar Campo" ForeColor="Red">*</asp:RequiredFieldValidator>
                <br />
            </div>
            <asp:Calendar ID="Calendar2" runat="server" 
                NextPrevFormat="ShortMonth" 
                onselectionchanged="Calendar2_SelectionChanged">
            </asp:Calendar>
            <br />
            <asp:Label ID="Label5" runat="server" Text="Breve Descripcion:"></asp:Label>
            <br />
            <asp:TextBox ID="txtDescripcion" runat="server" Height="79px" TextMode="MultiLine" 
                Width="383px"></asp:TextBox>
            <br />
            <asp:ValidationSummary ID="ValidationSummary3" runat="server" />
            <asp:Button ID="btnRegistrar" runat="server" Height="36px" Text="Registrar" 
            Width="97px" />
            <br />
    </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
