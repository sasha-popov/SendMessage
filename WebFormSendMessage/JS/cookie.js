
$(document).ready(function () {
    $('input').on('input', function () {
        let email = $("#FormSendMessage1_email").val();
        document.cookie = "email=" + email;
    });
    $('textarea').on('input', function () {
        let message = $("#FormSendMessage1_message").val();
        document.cookie = "message=" + message;
    });

});
function getCookie(cname) {
    var name = cname + "=";
    var ca = document.cookie.split(';');
    for(var i = 0; i < ca.length; i++) {
        var c = ca[i];
        while (c.charAt(0) == ' ') {
            c = c.substring(1);
        }
        if (c.indexOf(name) == 0) {
            return c.substring(name.length, c.length);
        }
    }
    return "";
}