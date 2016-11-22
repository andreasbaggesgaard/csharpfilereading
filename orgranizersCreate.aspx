<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="orgranizersCreate.aspx.cs" Inherits="csharp3rdHandin.orgranizersCreate" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <asp:Label ID="LabelTitle" runat="server" Text="Create new Organizer"></asp:Label>
        <br />
        <br />
        <asp:TextBox ID="TextBoxAlias" runat="server"></asp:TextBox>
&nbsp;&nbsp;
        <asp:Label ID="LabelAlias" runat="server" Text="Alias"></asp:Label>
        <br />
        <br />
        <asp:TextBox ID="TextBoxName" runat="server"></asp:TextBox>
&nbsp;&nbsp;
        <asp:Label ID="LabelName" runat="server" Text="Name"></asp:Label>
        <br />
        <br />
        <asp:TextBox ID="TextBoxAge" runat="server"></asp:TextBox>
&nbsp;&nbsp;
        <asp:Label ID="LabelAge" runat="server" Text="Age"></asp:Label>
        <br />
        <br />
        <asp:TextBox ID="TextBoxPassword" runat="server"></asp:TextBox>
&nbsp;&nbsp;
        <asp:Label ID="LabelPassword" runat="server" Text="Password"></asp:Label>
        <br />
        <br />
        <asp:TextBox ID="TextBoxEmail" runat="server"></asp:TextBox>
&nbsp;&nbsp;
        <asp:Label ID="LabelEmail" runat="server" Text="Email"></asp:Label>
        <br />
        <br />
        <asp:Button ID="ButtonAdd" runat="server" Text="Add new Organizer" OnClick="ButtonAdd_Click" />
    <br />
        <br />
        <asp:Label ID="LabelMessage" runat="server" Text=""></asp:Label>
        <br />
        <br />
    
        <asp:Button ID="ButtonBack" runat="server" Text="Go back" OnClick="ButtonBack_Click" />
    </form>
</body>
</html>
