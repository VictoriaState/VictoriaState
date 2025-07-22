var resourceName = ""
$(document).keydown(function(e){
	var close = 27, close2 = 8;
	switch (e.keyCode) {
		case close:
			$.post('http://'+resourceName+'/exit')
            $("#flipbook").hide();
        break;

		case close2:
			$.post('http://'+resourceName+'/exit')
            $("#flipbook").hide();
        break;
	}
});


$(function () {
    function display(bool) {
        if (bool) {
            $("#flipbook").show();
        } else {
            $("#flipbook").hide();
        }
    }
    display(false)

    window.addEventListener('message', function(event) {
        var item = event.data;
        if (item.type === "openNews") {
            resourceName = item.resource
            display(true)
            loadNewspapersBook(item.books, item.itemName)
        }
    })

    $("#close").click(function () {
        $.post('http://'+resourceName+'/exit', JSON.stringify({}));
        return
    })
})

var trys = null

function loadNewspapersBook(bookList, name) {
    if (name !== trys) {
        trys = name
        const page_books = document.getElementById('flipbook');
        let dataHtml = '';
        for (var i in bookList) {
            if(i % 2 == 0) {
                dataHtml += '<div class="left_page" style="background-image: url(' + bookList[i] + ');"></div>';
            }else {
                dataHtml += '<div class="right_page" style="background-image: url(' + bookList[i] + ');"></div>';
            }
        }
        page_books.innerHTML = dataHtml
        const screenWidth = window.screen.width;
        const screenHeight = window.screen.height;

        const pixelWidth = (55 / 100) * screenWidth;
        const pixelHeight = (70 / 100) * screenHeight;
        const pixelPositionX = (15 / 100) * screenWidth;
        const pixelPositionY = (15 / 100) * screenHeight;


        $('#flipbook').css({
            position: 'absolute',
            top: pixelPositionY,
            left: pixelPositionX,
            width: pixelWidth,
            height: pixelHeight
        }).turn({
            acceleration: false,
            width: pixelWidth,
            height: pixelHeight,
            page: 1,
            duration: 450,
        });


    } else {
        $('#flipbook').turn("destroy");

        $("#flipbook2").append('<div id="flipbook"></div>');

        trys = name
        const page_books = document.getElementById('flipbook');
        let dataHtml = '';
        for (var i in bookList) {
            if(i % 2 == 0) {
                console.log(i, bookList[i])
                dataHtml += '<div class="left_page" style="background-image: url(' + bookList[i] + ');"></div>';
            }else {
                console.log(i, bookList[i])
                dataHtml += '<div class="right_page" style="background-image: url(' + bookList[i] + ');"></div>';
            }
        }
        page_books.innerHTML = dataHtml
        const screenWidth = window.screen.width;
        const screenHeight = window.screen.height;

        const pixelWidth = (55 / 100) * screenWidth;
        const pixelHeight = (70 / 100) * screenHeight;
        const pixelPositionX = (15 / 100) * screenWidth;
        const pixelPositionY = (15 / 100) * screenHeight;
        
        $('#flipbook').css({
            position: 'absolute',
            top: pixelPositionY,
            left: pixelPositionX,
            width: pixelWidth,
            height: pixelHeight
        }).turn({
            acceleration: false,
            width: pixelWidth,
            height: pixelHeight,
            page: 1,
            duration: 450
        });


    }
}

