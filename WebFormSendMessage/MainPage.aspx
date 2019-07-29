<%@ Page Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="MainPage.aspx.cs" Inherits="WebFormSendMessage.MainPage" %>

<%@ Register Src="~/FormSendMessage.ascx" TagName="FormSendMessage" TagPrefix="uc1" %>
    <asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <link rel="stylesheet" href="/Content/MainStyle.css" />
    </asp:Content>
    <asp:Content ID="Content2" ContentPlaceHolderID="TitleContent" runat="server">
        <h1>
            <asp:Label ID="TitleMainPage" runat="server" Text="Label"></asp:Label></h1>
        <div>
            <form id="form2" runat="server">
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
            <uc1:FormSendMessage ID="FormSendMessage" runat="server" />
            </form>
        </div>
    </asp:Content>
