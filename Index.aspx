<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="csharp3rdHandin.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="LabelWelcome" runat="server" Text="Welcome"></asp:Label>
    
        <br />
        <br />
    
    </div>
        <asp:Button ID="ButtonPokehunters" runat="server" OnClick="ButtonPokehunters_Click" Text="Pokehunters" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="ButtonOrganizers" runat="server" OnClick="ButtonOrganizers_Click" Text="Organizers" />
    </form>
</body>
</html>
