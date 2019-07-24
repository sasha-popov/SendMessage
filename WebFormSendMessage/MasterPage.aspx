<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MasterPage.aspx.cs" Inherits="WebFormSendMessage.MasterPage" %>
<%@ Register src="FormSendMessage.ascx" tagname="FormSendMessage" tagprefix="uc1" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>
    </title>
</head>
<body runat="server">
<h1><asp:Label ID="TitleMainPage" runat="server" Text="Label"></asp:Label></h1>
<div>
    <form id="form1" runat="server">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <uc1:FormSendMessage ID="FormSendMessage1" runat="server" />
    </form>
</div>
</body>
</html>
