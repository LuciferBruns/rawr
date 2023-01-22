$(function(){
    window.onload = (e) => {
        window.addEventListener("message", (event) => {
            var item = event.data;
            if(item !== undefined && item.type === "ui") {
                if (item.display) {
                    $('#pic').show();
                    $('#sound')[0].play();
                } else{
                    $('#pic').hide();
                    $('#sound')[0].pause();
                }
            }
        })
    }
})