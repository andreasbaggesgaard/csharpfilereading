﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="organizers.aspx.cs" Inherits="csharp3rdHandin.organizers" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="LabelOrganizers" runat="server" Text="Organizers"></asp:Label>
        <br />
        <br />
    
    </div>
        <asp:ListBox ID="ListBoxOrganizers" runat="server" Height="185px" Width="1102px"></asp:ListBox>
        <br />
        <br />        
        <asp:Button ID="ButtonSave" runat="server" OnClick="ButtonSave_Click" Text="Save to file" />
         &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="ButtonRead" runat="server" OnClick="ButtonRead_Click" Text="Read from file" />
         <br />
        <br />
        <asp:Label ID="LabelMessage" runat="server">You only need to save to file when creating new Organizer</asp:Label>
        <br />
        <br />
         <asp:Button ID="ButtonCreate" runat="server" OnClick="ButtonCreate_Click" Text="Create" />
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="ButtonUpdate" runat="server" OnClick="ButtonUpdate_Click" Text="Update" />
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="ButtonDelete" runat="server" Text="Delete" OnClick="ButtonDelete_Click" />

          
       
        <br />
        <br />
        <br />
        <asp:Button ID="ButtonBack" runat="server" OnClick="ButtonBack_Click" Text="Go back to Frontpage" />

    </form>
</body>
</html>
