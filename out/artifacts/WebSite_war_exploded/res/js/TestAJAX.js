$(document).on("click", "#button", function () {
    $.get("AJAX", function (response) {
        $("#span").text(response)
    })
})