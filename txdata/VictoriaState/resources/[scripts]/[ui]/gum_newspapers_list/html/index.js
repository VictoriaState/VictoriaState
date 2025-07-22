var resourceName = ""
$(document).keydown(function(e){
	var close = 27, close2 = 8;
	switch (e.keyCode) {
		case close:
			$.post('http://'+resourceName+'/exit')
            document.getElementById("ListButton").innerHTML = ""
		break;

		case close2:
            document.getElementById("ListButton").innerHTML = ""
            $.post('http://'+resourceName+'/exit')
		break;
	}
});


$(function () {
    function display(bool) {
        if (bool) {
            $("#container").show();
        } else {
            $("#container").hide();
        }
    }
    display(false)

    window.addEventListener('message', function(event) {
        var item = event.data;
        if (item.type === "open") {
            resourceName = item.resource
            display(true)
            var img = document.createElement("img");
            img.src = item.link;

            img.style.width= "95%";
            var div = document.getElementById("ListButton");
            div.appendChild(img);
 
        }
    })

    $("#close").click(function () {
        $.post('http://'+resourceName+'/exit', JSON.stringify({}));
        return
    })
})


