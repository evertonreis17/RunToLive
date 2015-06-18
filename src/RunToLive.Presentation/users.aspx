<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="users.aspx.cs" Inherits="RunToLive.Presentation.Users" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>Usuários</h1>
        <asp:Button ID="btnNewUser" Text="Novo Usuário" runat="server"/>
        <p><asp:Literal ID="litTotalUsers" runat="server"></asp:Literal> cadastrado(s)</p>
        <asp:GridView ID="gvUsers" AutoGenerateColumns="false"  runat="server">
            <Columns>
                <asp:BoundField HeaderText="Nome" DataField="Nome"/>
                <asp:BoundField HeaderText="E-mail" DataField=""/>
            </Columns>
        </asp:GridView>
    </div>
    </form>
</body>
</html>
