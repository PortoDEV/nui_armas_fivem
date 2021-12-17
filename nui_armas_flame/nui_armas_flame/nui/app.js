window.addEventListener("message", (event) => {
    let data = event.data

    if (data.open) {
        $('body').css('display', 'block')

        fetch(`https://nui_armas_flame/openNui`, {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json; charset=UTF-8',
            },
            body: JSON.stringify({
            })
        })
    }
})

$(function(){
    $(".arma1").click(function(e) {
        e.preventDefault();
        el = $(this).data('element');
        $(el).toggle();
        document.getElementById("escondido2").style.display = "none";
        document.getElementById("escondido3").style.display = "none";
        document.getElementById("escondido4").style.display = "none";
        document.getElementById("escondido5").style.display = "none";
    });
});
$(function(){
    $(".arma2").click(function(e) {
        e.preventDefault();
        el = $(this).data('element');
        $(el).toggle();
        document.getElementById("escondido1").style.display = "none";
        document.getElementById("escondido3").style.display = "none";
        document.getElementById("escondido4").style.display = "none";
        document.getElementById("escondido5").style.display = "none";
    });
});

$(function(){
    $(".arma3").click(function(e) {
            e.preventDefault();
        el = $(this).data('element');
        $(el).toggle();
        document.getElementById("escondido1").style.display = "none";
        document.getElementById("escondido2").style.display = "none";
        document.getElementById("escondido4").style.display = "none";
        document.getElementById("escondido5").style.display = "none";
    });
});

$(function(){
    $(".arma4").click(function(e) {
        e.preventDefault();
        el = $(this).data('element');
        $(el).toggle();
        document.getElementById("escondido1").style.display = "none";
        document.getElementById("escondido2").style.display = "none";
        document.getElementById("escondido3").style.display = "none";
        document.getElementById("escondido5").style.display = "none";
    });
});

$(function(){
    $(".arma5").click(function(e) {
        e.preventDefault();
        el = $(this).data('element');
        $(el).toggle();
        document.getElementById("escondido1").style.display = "none";
        document.getElementById("escondido2").style.display = "none";
        document.getElementById("escondido3").style.display = "none";
        document.getElementById("escondido4").style.display = "none";

    });
});

$(function(){
    $(".fechar").click(function(e) {
        createGun("fecharnui")

    });
});

function createGun(a) { 
    $('body').css('display', 'none')
    if(a == "fives" ) {
        console.log("FIVE")
        fetch(`https://nui_armas_flame/createFive`, {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json; charset=UTF-8',
            },
            body: JSON.stringify({
            })
        })
    } 
    if(a == "g3") { 
        console.log("G36C")
        fetch(`https://nui_armas_flame/createG3`, {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json; charset=UTF-8',
            },
            body: JSON.stringify({
            })
        })
    }
    if(a == "ak47") {
        console.log("AK47")
        fetch(`https://nui_armas_flame/createAK`, {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json; charset=UTF-8',
            },
            body: JSON.stringify({
            })
        })
    }
    if(a == "tec") {
        console.log("TEC9")
        fetch(`https://nui_armas_flame/createGlockr`, {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json; charset=UTF-8',
            },
            body: JSON.stringify({
            })
        })
    }
    if(a == "mp5") {
        console.log("MP5")
        fetch(`https://nui_armas_flame/createMP5`, {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json; charset=UTF-8',
            },
            body: JSON.stringify({
            })
        })
    }
    if(a == "fecharnui") {
        console.log("FECHAR")
        fetch(`https://nui_armas_flame/fecharnui`, {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json; charset=UTF-8',
            },
            body: JSON.stringify({
            })
        })
    }
}