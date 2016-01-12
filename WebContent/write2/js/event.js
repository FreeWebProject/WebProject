/*
*本作品由JquerySchool网站整理改编*
*关注：http://www.jq-school.com
*/
$(function() {
    $("a").focus(function() {
        this.blur();
    });
    $("#showButton").mouseover(function() {
        $(this).removeClass("handwrite").addClass("handwrite_over")
    }).mouseout(function() {
        $(this).removeClass("handwrite_over").addClass("handwrite")
    });
});
function showFlash(a) {
    var b = '<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,29,0" width="295" height="200"><param name="movie" value="' + a + '"> <param name="quality" value="high"><param name="flashvars" value="serverIP=58.68.226.8"/><embed flashvars="serverIP=58.68.226.8" src="' + a + '" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="295" height="200" /></object>';
    open_lw(b)
}
function open_lw(c) {
    var g = "showflash";
    var a = document.getElementById("showButton");
    var b = getCoords(a);
    if (!document.getElementById(g)) {
        var f = document.createElement("div");
        var e = b.y + 26;
        var d = b.x;
        f.style.left = d + "px";
        f.style.top = e + "px";
        f.style.margin = "0px";
        f.style.padding = "0px";
        f.style.position = "absolute";
        f.style.zIndex = "9999";
        f.id = g;
        f.innerHTML = c;
        f.style.background = "#fff";
        document.body.appendChild(f)
    } else {
        iciba_shouxie_close()
    }
}
function getCoords(c) {
    var a = c.offsetLeft - 30;
    var d = c.offsetTop;
    var b = c.offsetParent;
    while (b != null) {
        a += b.offsetLeft;
        d += b.offsetTop;
        b = b.offsetParent
    }
    return {
        x: a,
        y: d
    }
}
function iciba_shouxie_close() {
    var a = "showflash";
    if (document.getElementById(a)) {
        document.body.removeChild(document.getElementById(a))
    }
}
function registerHotKey(f) {
    var b = f ? f: (window.event ? window.event: null);
    var c = b.srcElement || b.target;
    if (c.nodeName != "INPUT" && c.nodeName != "OBJECT") {
        var d = (is_ie) ? b.which: b.keyCode;
        if (d >= 65 && d <= 90 && b.shiftKey == false && b.altKey == false && b.ctrlKey == false) {
            var a = 1;
            window.scrollTo(0, 0);
            if ($("#s").val()) {
                $("#s").select()
            } else {
                $("#s").focus()
            }
        } else {
            var a = 0
        }
    }
}
function SinoVoice_show(a) {
    document.getElementById("s").value += a
}

function getFlashObject(a) {
    if (window.document[a]) {
        return window.document[a]
    }
    if (navigator.appName.indexOf("Microsoft Internet") == -1) {
        if (document.embeds && document.embeds[a]) {
            return document.embeds[a]
        }
    } else {
        return document.getElementById(a)
    }
}
