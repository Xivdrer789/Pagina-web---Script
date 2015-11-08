<%@ Page Title="" Language="C#" MasterPageFile="~/No-Login/MasterPageNoLogin.Master" AutoEventWireup="true" CodeBehind="MascotasPublicadas.aspx.cs" Inherits="CapaInterfaz.No_Login.MascotasPublicadas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
        <!-- Aqui generamos codigo para cargar las publicaciones-->
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
