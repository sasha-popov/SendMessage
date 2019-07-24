<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="FormSendMessage.ascx.cs" Inherits="WebFormSendMessage.FormSendMessage" %>
<link rel="stylesheet" href="/Content/MainStyle.css"/>
<script src="JS/cookie.js"></script>
<p id="emailP">
    <asp:Label ID="emailLabel" runat="server"></asp:Label>
</p>
<p>
    <asp:TextBox ID="email" text-align="center" runat="server" Width="60%"></asp:TextBox>
</p>
<p>
    <asp:CustomValidator 
        ID="emailValidator" 
        runat="server" 
        ErrorMessage="EmailValidator" 
        ControlToValidate="email" 
        ForeColor="Red" 
    >*</asp:CustomValidator>
</p>
<p text-align="center" runat="server" id="messageP">
    <asp:Label ID="messageLabel" runat="server"></asp:Label>
</p>
<p>
    <asp:textbox ID="message" TextMode="multiline" Height="100%" Rows="10" Width="100%"  runat="server"></asp:textbox>
</p>
<p>
    <asp:CustomValidator 
        ID="messageValidator" 
        runat="server" 
        ErrorMessage="MessageValidator" 
        ControlToValidate="message" 
        ForeColor="#CC0000" 
    >*</asp:CustomValidator>
</p>
<p>
    <asp:Button ID="sendMessage" runat="server" OnClick="SendMessage_Click"/>
</p>