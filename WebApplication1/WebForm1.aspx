<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <script type>
        function validar(sender, args)
         {
             if (args.Value == "perro")
                 args.IsValid = true;
            else
                args.IsValid = false;

               

        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:TextBox ID="TextBox1" runat="server" ValidationGroup="test"  ></asp:TextBox>
        <asp:TextBox ID="TextBox2" runat="server"  ValidationGroup="test" ></asp:TextBox>
        <%--<asp:RequiredFieldValidator runat="server" ValidationGroup="test" ControlToValidate="TextBox1" ErrorMessage="campo requerido"> </asp:RequiredFieldValidator>--%>
      
        <%--<asp:CompareValidator ID="CompareValidator1" runat="server" ValidationGroup="test" ControlToCompare="TextBox1" ControlToValidate="TextBox2" ErrorMessage="no son igules"> </asp:CompareValidator>--%>
        <asp:Button ID="Button1" runat="server" Text="Button" ValidationGroup="test" 
            onclick="Button1_Click"  />

        <asp:CustomValidator runat="server" ControlToValidate="TextBox1"  ClientValidationFunction="validar" ValidationGroup="test" ErrorMessage=" No es perro" ></asp:CustomValidator>
        <%--ClientValidationFunction=""--%>
        <%-- OnServerValidate="Validacion"--%>
    </div>
    </form>
</body>
</html>
