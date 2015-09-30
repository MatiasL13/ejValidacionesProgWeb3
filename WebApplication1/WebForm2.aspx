<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="WebApplication1.WebForm2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
       <asp:Label ID="lblNombre" runat="server"  Text="Nombre"/>
       <asp:TextBox ValidationGroup="test" ID="txtNombre" runat="server"/>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
        ValidationGroup="test" ControlToValidate="txtNombre" 
        ErrorMessage="Nombre Requerido"></asp:RequiredFieldValidator>
    </div>
        <div>
       <asp:Label ID="lblApellido" runat = "server"  Text="apellido"/>
       <asp:TextBox ValidationGroup="test" ID="txtApellido" runat="server" />
         <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
        ValidationGroup="test" ControlToValidate="txtApellido" 
        ErrorMessage="Apellido Requerido"></asp:RequiredFieldValidator>
    </div>
        <div>
       <asp:Label ID="lblFechaNacimiento" runat="server"  Text="Fecha Nacimiento"/>
       <asp:Calendar ID="calFechaNacimiento" runat="server" ValidationGroup="test" 
                SelectedDate="09/08/2015 21:26:42"  />


    </div>
        <div>
       <asp:Label ID="lblTipo" runat="server"  Text="tipo"/>
       <asp:DropDownList ID="ddlTipo" runat="server"  > 
       <asp:ListItem Text="Normal"/>
        <asp:ListItem Text="Administrador"/>
       </asp:DropDownList>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
        ValidationGroup="test" ControlToValidate="ddlTipo" 
        ErrorMessage="tipo Requerido"></asp:RequiredFieldValidator>
    </div>
        <div>
       <asp:Label ID="lblCodigo" runat="server"  Text="Codigo"/>
       <asp:TextBox ID="txtCodigo" runat="server"  ValidationGroup="test" />
          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ValidationGroup="test" ControlToValidate="txtCodigo" 
        ErrorMessage="Codigo Requerido"></asp:RequiredFieldValidator>
        <asp:RangeValidator runat="server" MaximumValue="110.5" MinimumValue="0" ValidationGroup="test" ControlToValidate="txtCodigo" ErrorMessage="tiene q ser entre 0 y 110.5"></asp:RangeValidator>
    </div>
        <div>
       <asp:Button runat="server" Text="aceptar" onclick="Unnamed1_Click" ValidationGroup="test"/>
    </div>
 
    </form>
</body>
</html>
