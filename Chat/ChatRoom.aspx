<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ChatRoom.aspx.cs" Inherits="ChatDemo.ChatRoom" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <table>
        <tr>
            <td>
                <div class="chatwindowwrapper">
                    <div id="Messagewindow">
                    </div>
                </div>
                <textarea class="typingwindow" name="inputmsg" placeholder="Type message here....." id="inputmsg"></textarea>
            </td>
            <td style="vertical-align: top;">
                <div id="onlineusers"></div>
            </td>
        </tr>
    </table>
</asp:Content>
