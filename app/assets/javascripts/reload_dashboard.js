
var time = 5000;

$(function() {
    if ($('body.dashboard_orders_controller.index').length )
    {
        setInterval(function () {
            window.location.reload();
        }, time);
    }
});
