<%@ Page Title="" Language="C#" MasterPageFile="~/Login/MasterPageLogin.Master" AutoEventWireup="true"
    CodeBehind="PublicarMascota.aspx.cs" Inherits="CapaInterfaz.Login.PublicarMascota" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <Triggers>
            <asp:PostBackTrigger ControlID="btnRegistrar" />
        </Triggers>
        <ContentTemplate>
            <h4>
                Publicar Mascota</h4>
            <div class="style1">
                <br />
                <asp:Label ID="Label1" runat="server" Text="Nombre Publicacion :"></asp:Label>
                <asp:TextBox ID="txbNombrePublicacion" runat="server" MaxLength="30"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txbNombrePublicacion"
                    Display="Dynamic" ErrorMessage="Falta Rellenar Campo" ForeColor="Red">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txbNombrePublicacion"
                    ErrorMessage="Solo letras Nombre" ForeColor="Red" ValidationExpression="[A-Za-z ]*">*</asp:RegularExpressionValidator>
                <br />
                <asp:Label ID="Label3" runat="server" Text="Edad Mascota :"></asp:Label>
                <asp:TextBox ID="txbEdadMascota" runat="server" MaxLength="2"></asp:TextBox>
                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txbEdadMascota"
                    Display="Dynamic" ErrorMessage="Falta Rellenar Campo" ForeColor="Red">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Solo Numero"
                    ForeColor="Red" ValidationExpression="([0-9]|-)*" ControlToValidate="txbEdadMascota">*</asp:RegularExpressionValidator>
                <br />
                <asp:Label ID="Label6" runat="server" Text="Tamaño Mascota:"></asp:Label>
                &nbsp;
                <asp:TextBox ID="txbTamañoMascota" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txbTamañoMascota"
                    Display="Dynamic" ErrorMessage="Falta Rellenar Campo" ForeColor="Red">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="txbTamañoMascota"
                    ErrorMessage="Solo Numero" ForeColor="Red" ValidationExpression="([0-9]|-)*">*</asp:RegularExpressionValidator>
                &nbsp;<asp:Label ID="lblMetros" runat="server" Text="metros"></asp:Label>
                <br />
                <asp:Label ID="Label7" runat="server" Text="Nombre Mascota:"></asp:Label>
                &nbsp;<asp:TextBox ID="txbNombreMascota" runat="server"></asp:TextBox>
                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txbNombreMascota"
                    Display="Dynamic" ErrorMessage="Falta Rellenar Campo" ForeColor="Red">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="txbNombreMascota"
                    ErrorMessage="Solo letras Nombre" ForeColor="Red" ValidationExpression="[A-Za-z ]*">*</asp:RegularExpressionValidator>
                <br />
                <br />
                <asp:Label ID="Label8" runat="server" Text="Imagen"></asp:Label>
                &nbsp;<asp:FileUpload ID="FileUpload1" runat="server" />
                <asp:RegularExpressionValidator runat="server" ID="valUpTest" ControlToValidate="FileUpload1"
                    ErrorMessage="Solo se aceptan formatos (.jpg, .png)" ValidationExpression="^(([a-zA-Z]:)|(\\{2}\w+)\$?)(\\(\w[\w].*))(.jpg|.png)$" />
                <br />
                <asp:Label ID="Label4" runat="server" Text="Fecha Perdida: "></asp:Label>
                <br />
            </div>
            <asp:Calendar ID="cFechaPerdida" runat="server" NextPrevFormat="ShortMonth"></asp:Calendar>
            <br />
            <asp:Label ID="Label5" runat="server" Text="Breve Descripcion:"></asp:Label>
            <br />
            <asp:TextBox ID="txbDescripcion" runat="server" Height="79px" TextMode="MultiLine"
                Width="383px" MaxLength="8000"></asp:TextBox>
            <br />
            <asp:ValidationSummary ID="ValidationSummary3" runat="server" Width="968px" />
            <asp:Label ID="lblMensaje" runat="server" ForeColor="Red"></asp:Label>
            <br />
            <asp:Button ID="btnRegistrar" runat="server" Height="36px" Text="Registrar" Width="97px"
                OnClick="btnRegistrar_Click" />
            <br />
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
