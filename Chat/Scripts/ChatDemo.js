$(function () {
    var chat = $.connection.chatHub;
    chat.client.broadcastMessage = function (name, message) {
        var encodename = $('<div />').text(name).html();
        var encodemessage = $('<div />').text(message).html();
        if (user == encodename) {
            $("#Messagewindow").append(' <pre><strong style="color:blue;"> ' + encodename + ' </strong>: &nbsp;&nbsp; ' + encodemessage + '</pre>');
        } else {
            $("#Messagewindow").append(' <pre><strong style="color:green;">' + encodename + ' </strong>: &nbsp;&nbsp; ' + encodemessage + '</pre>');
        }
        
    };

    chat.client.onlineusers = function (name) {
        var encodename = $('<div />').text(name).html();
        $("#onlineusers").append("<b>" + encodename + "</b>");
    };
    $.connection.hub.start().done(function () {
        $("#inputmsg").keyup(function (evt) {
            if (evt.keyCode == 13 || evt.keyCode == 116) {
                var msg = $(this);
                chat.server.send(user, msg.val());
                msg.val('').focus();
            }

        });

    });
});


$(function () {
    $("#sendmsg").click(function (evt) {
        var that = $("#msg");
        ShowMessage(that.val());
        that.val('');
    }).focus();
});
function ShowMessage(msg) {
    $("<pre>").text(msg).prependTo("#Messagewindow");
}