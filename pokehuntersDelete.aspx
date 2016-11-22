<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="pokehuntersDelete.aspx.cs" Inherits="csharp3rdHandin.pokehuntersDelete" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
 
        <asp:Label ID="Label1" runat="server" Text="Delete pokehunter"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:Label ID="LabelMessage" runat="server"></asp:Label>
        <br />
        <br />
        <asp:ListBox ID="ListBoxPokehunters" runat="server" Height="189px" Width="707px"></asp:ListBox>
        <p>
            <asp:TextBox ID="TextBoxAlias" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
            <asp:Label ID="LabelAlias" runat="server" Text="Alias to be deleted"></asp:Label>
        </p>
        <p>
            <asp:Button ID="ButtonDelete" runat="server" OnClick="ButtonDelete_Click" Text="Delete pokehunter" />
        </p>
        <p>
            <asp:Button ID="ButtonBack" runat="server" OnClick="ButtonBack_Click" Text="Go back" />
        </p>


    
  
    </form>
</body>
</html>
