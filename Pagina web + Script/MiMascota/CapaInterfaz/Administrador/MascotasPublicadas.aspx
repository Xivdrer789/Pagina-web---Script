<%@ Page Title="" Language="C#" MasterPageFile="~/Administrador/MasterPageAdministracion.Master"
    AutoEventWireup="true" CodeBehind="MascotasPublicadas.aspx.cs" Inherits="CapaInterfaz.Administrador.MascotasPublicadas" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="font-family: Arial">
        <table>
            <tr>
                <td>
                    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="ObjectDataSource1">
                        <ItemTemplate>
                            <table style="border: 1px solid #A55129; background-color: #FFF7E7">
                                <tr>
                                    <td style="width: 200px">
                                        <asp:Image ID="imgMascota" ImageUrl='<%# Eval("imagenPulicacion")%>' runat="server" />
                                    </td>
                                    <td style="width: 500px">
                                        <table>
                                            <tr>
                                                <td>
                                                    <b>Nombre:</b>
                                                </td>
                                                <td>
                                                    <asp:Label ID="lblNombre" runat="server" Text='<%#Eval("nombrePublicacion") %>'>
                                                    </asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <b>Fecha de perdida:</b>
                                                </td>
                                                <td>
                                                    <asp:Label ID="lblFechaPerdida" runat="server" Text='<%#Eval("fechaPerdida") %>'>
                                                    </asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <b>Nombre Mascota:</b>
                                                </td>
                                                <td>
                                                    <asp:Label ID="lblNombreMascota" runat="server" Text='<%#Eval("nombreMascota") %>'></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <b>Tamaño Mascota:</b>
                                                </td>
                                                <td>
                                                    <asp:Label ID="lblTamañoMascota" runat="server" Text='<%#Eval("tamañoMascota") %>'></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <b>Edad Mascota:</b>
                                                </td>
                                            </tr>
                                            <td>
                                                <asp:Label ID="lblEdadMascota" runat="server" Text='<%#Eval("edadMascota") %>'></asp:Label>
                                            </td>
                                        </table>
                                    </td>
                                    <td style="width: 400px">
                                        <table>
                                            <tr>
                                                <td>
                                                    <b>Descripicion:</b>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Label ID="lblDescripcion" runat="server" Text='<%#Eval("descripcionPublicacion") %>'>
                                                    </asp:Label>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                        </ItemTemplate>
                        <SeparatorTemplate>
                            <tr>
                                <td colspan="2">
                                    <hr />
                                </td>
                            </tr>
                        </SeparatorTemplate>
                    </asp:Repeater>
                    <br />
                    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="listarTodaInformacion"
                        TypeName="CapaDatos.AccesoPublicacion"></asp:ObjectDataSource>
                    <br />
                    <br />
                    <br />
                    <br />
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
