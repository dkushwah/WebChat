<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ChatDemo._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
    <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
    <div align="center">

        <asp:TextBox required="required" runat="server" ID="username" />
        <asp:Button Text="Join" OnClick="joinroom_Click" runat="server"  ID="joinroom" />
    </div>
    <br />
    <br />
    <br />
    <br />
    <br />

</asp:Content>
