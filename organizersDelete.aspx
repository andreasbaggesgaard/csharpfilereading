<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="organizersDelete.aspx.cs" Inherits="csharp3rdHandin.organizersDelete" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
     
        <asp:Label ID="LabelOrganizers" runat="server" Text="Delete Organizer"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:Label ID="LabelMessage" runat="server"></asp:Label>
        <br />
        <br />
        <asp:ListBox ID="ListBoxOrganizers" runat="server" Height="189px" Width="707px"></asp:ListBox>
        <p>
            <asp:TextBox ID="TextBoxAlias" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
            <asp:Label ID="LabelAlias" runat="server" Text="Write alias to be deleted"></asp:Label>
        </p>
        <p>
            <asp:Button ID="ButtonDelete" runat="server" Text="Delete Organizer" OnClick="ButtonDelete_Click" />
        </p>
        <p>
            <asp:Button ID="ButtonBack" runat="server" Text="Go back" OnClick="ButtonBack_Click" />
        </p>
    </form>
</body>
</html>
