<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="organizersUpdate.aspx.cs" Inherits="csharp3rdHandin.organizersUpdate" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="LabelUpdate" runat="server" Text="Update Organizer"></asp:Label>
    </div>
        <p>
            <asp:ListBox ID="ListBoxOrganizers" runat="server" Height="206px" Width="631px"></asp:ListBox>
        </p>
        <p>
            <asp:Label ID="LabelMessage" runat="server"></asp:Label>
        </p>
        <asp:TextBox ID="TextBoxOldEmail" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
        <asp:Label ID="LabelOldEmail" runat="server" Text="Write email to be changed"></asp:Label>
        <br />
        <br />
        <asp:TextBox ID="TextBoxNewEmail" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
        <asp:Label ID="LabelNewEmail" runat="server" Text="New email name"></asp:Label>
        <br />
        <br />
        <asp:Button ID="ButtonChangeEmail" runat="server" Text="Change email" OnClick="ButtonChangeEmail_Click" />
        <br />
        <br />
        <asp:Button ID="ButtonBack" runat="server" Text="Go back" OnClick="ButtonBack_Click" />
    </form>
</body>
</html>
