<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="pokehuntersUpdate.aspx.cs" Inherits="csharp3rdHandin.pokehuntersUpdate" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>


        <asp:Label ID="LabelUpadte" runat="server" Text="Update Pokehunter"></asp:Label>


    </div>
        <p>
            <asp:ListBox ID="ListBoxHunters" runat="server" Height="210px" Width="925px"></asp:ListBox>
        </p>
        <p>
            <asp:Label ID="LabelMessage" runat="server"></asp:Label>
        </p>
        <asp:TextBox ID="TextBoxOldEmail" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Text="Email to be changed"></asp:Label>
        <br />
        <br />
        <asp:TextBox ID="TextBoxNewEmail" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
        <asp:Label ID="LabelNewEmail" runat="server" Text="New email name"></asp:Label>
        <br />
        <br />
        <asp:Button ID="ButtonChangeEmail" runat="server" OnClick="ButtonChangeEmail_Click" Text="Change email" />
        <br />
        <br />
        <asp:Button ID="ButtonBack" runat="server" OnClick="ButtonBack_Click" Text="Go back" />
    </form>
</body>
</html>
