﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="SuccessPage.aspx.cs" Inherits="WebFormSendMessage.Pages.SuccessPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="/Content/MainStyle.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="TitleContent" runat="server">
    <form id="form1" runat="server">
        <div runat="server">
            <h1>Congratulation!</h1>
            <h2>You have sent the message</h2>
            <p>
                <asp:Button ID="buttonReturn" runat="server" OnClick="ReturnToMainPage" />
            </p>
        </div>
    </form>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</asp:Content>
