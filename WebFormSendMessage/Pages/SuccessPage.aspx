<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SuccessPage.aspx.cs" Inherits="WebFormSendMessage.Pages.SuccessPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="/Content/MainStyle.css" />
    <title></title>
    <meta charset="utf-8" />
</head>
<body runat="server">
    <form id="form1" runat="server">
        <div runat="server">
            <h1>Congratulation!</h1>
            <h2>You have sent the message</h2>
            <p>
                <asp:Button ID="buttonReturn" runat="server" OnClick="ReturnToMainPage" />
            </p>
        </div>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    </form>
</body>
</html>
