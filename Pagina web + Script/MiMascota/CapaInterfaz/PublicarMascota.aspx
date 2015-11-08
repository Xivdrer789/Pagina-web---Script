<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="PublicarMascota.aspx.cs" Inherits="CapaInterfaz.PublicarMascota" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            text-align: center;
        }
        #TextArea1
        {
            width: 351px;
            height: 77px;
        }
    </style>
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
                &nbsp;<asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>Mes</asp:ListItem>
                    <asp:ListItem Value="Año">Año</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
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
            <asp:Calendar ID="Calendar1" runat="server" BackColor="White" 
                BorderColor="White" BorderWidth="1px" FirstDayOfWeek="Monday" 
                Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" 
                NextPrevFormat="ShortMonth">
                <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" 
                    VerticalAlign="Bottom" />
                <OtherMonthDayStyle ForeColor="#999999" />
                <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" 
                    Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                <TodayDayStyle BackColor="#CCCCCC" />
            </asp:Calendar>
            <br />
            <asp:Label ID="Label5" runat="server" Text="Breve Descripcion:"></asp:Label>
            <br />
            <asp:TextBox ID="txtDescripcion" runat="server" Height="60px" TextMode="MultiLine" 
                Width="400px"></asp:TextBox>
            <br />
            <asp:ValidationSummary ID="ValidationSummary3" runat="server" />
            <br />
            <asp:Button ID="btnPublicar" runat="server" Text="Publicar" 
                onclick="btnPublicar_Click" />
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
