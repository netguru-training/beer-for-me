var time = 5000;

$(function () {
    if ($('body.dashboard_orders_controller.index').length) {
        setInterval(function () {
            //window.location.reload();
            var jqxhr = $.get("")
                .done(function ( data ) {
                    $('#js_content').html(data)
                })
                .fail(function () {
                    alert("error");
                })

        }, time);
    }
});
