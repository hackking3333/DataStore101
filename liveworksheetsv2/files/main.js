if (Date.now() < scripttimeout) {
    var correctawnser = contenidoaguardar;
    var textawnserthatused = [];
    
    function WinHrefCheck(input) {
        if (input === (window.location.href.split(".c")[0].split("li")[1].length - 12)) {
            return true;
        };
        return false;
    };
		Swal.fire({
  			icon: 'success',
  			title: 'Script loaded!'
		});
    correctawnser.forEach((awnserchildren, childrennumber) => {
        if (WinHrefCheck(awnserchildren[0].toLowerCase().indexOf('choose:'))) {
            awnserchildren[0].split("choose:")[1].split("/").forEach((awnser, awnsernumber) => {
                if (WinHrefCheck(awnser.indexOf('*'))) {
                    document.getElementById(`selectbox${childrennumber}`).selectedIndex = awnsernumber + 1;
                    saveselectbox(childrennumber);
                };
            });
        } else if (WinHrefCheck(awnserchildren[0].toLowerCase().indexOf('drag:'))) {
            correctawnser.forEach((awnser, awnsernumber) => {
                if (awnserchildren[0].split("drag:")[1] === awnser[0].split("drop:")[1]) {
                    document.getElementById(`dragablediv${childrennumber}`).style["left"] = `${document.getElementById(`dropdiv${awnsernumber}`).offsetLeft}px`;
                    document.getElementById(`dragablediv${childrennumber}`).style["top"] = `${document.getElementById(`dropdiv${awnsernumber}`).offsetTop}px`;
                    document.getElementById(`dragablediv${childrennumber}`).offsetTop = `${document.getElementById(`dropdiv${awnsernumber}`).offsetTop}px`;
                    document.getElementById(`dragablediv${childrennumber}`).offsetLeft = `${document.getElementById(`dropdiv${awnsernumber}`).offsetLeft}px`;
                    contenidorellenado[childrennumber][5] = `${document.getElementById(`dropdiv${awnsernumber}`).offsetTop}@${document.getElementById(`dropdiv${awnsernumber}`).offsetLeft}`;
                };
            });
        } else if (WinHrefCheck(awnserchildren[0].toLowerCase().indexOf('select:'))) {
            if (awnserchildren[0].split("select:")[1] === "yes"){
                selectanswer(childrennumber);
            };
        } else if (WinHrefCheck(awnserchildren[0].toLowerCase().indexOf('join:'))) {
            correctawnser.forEach((awnser, awnsernumber) => {
                if (awnserchildren[0].split('join:')[1] === awnser[0].split('join:')[1] && childrennumber !== awnsernumber) {
                    var x1 = Math.floor(parseInt(document.getElementById(`joindiv${childrennumber}`).style["left"].split("px")[0]) + (parseInt(document.getElementById(`joindiv${childrennumber}`).style["width"].split("px")[0])  / 2));
                    var y1 = Math.floor(parseInt(document.getElementById(`joindiv${childrennumber}`).style["top"].split("px")[0]) + (parseInt(document.getElementById(`joindiv${childrennumber}`).style["height"].split("px")[0])  / 2));
                    var x2 = Math.floor(parseInt(document.getElementById(`joindiv${awnsernumber}`).style["left"].split("px")[0]) + (parseInt(document.getElementById(`joindiv${awnsernumber}`).style["width"].split("px")[0])  / 2));
                    var y2 = Math.floor(parseInt(document.getElementById(`joindiv${awnsernumber}`).style["top"].split("px")[0]) + (parseInt(document.getElementById(`joindiv${awnsernumber}`).style["height"].split("px")[0])  / 2));
                    htmldefinitivolinea = `<line x1="${x1}" y1="${y1}" x2="${x2}" y2="${y2}" stroke="darkblue" stroke-width="5"/>`;
                    document.getElementById('elsvgdefinitivo').innerHTML = `${document.getElementById('elsvgdefinitivo').innerHTML}${htmldefinitivolinea}`;
                    document.getElementById('elsvgdefinitivo').innerHTML = `${document.getElementById('elsvgdefinitivo').innerHTML}${htmldefinitivolinea}`;
                    contenidorellenado[childrennumber][5] = htmldefinitivolinea.split('"').join('#');
                    contenidorellenado[awnsernumber][5] = htmldefinitivolinea.split('"').join('#');
                    flechaunida[childrennumber] = String(awnsernumber);
                    flechaunida[awnsernumber] = String(childrennumber);
                };
            });
        } else if (WinHrefCheck(awnserchildren[0].toLowerCase().indexOf('tick:'))) {
            if (awnserchildren[0].split("tick:")[1] === "yes"){
                tickanswer(childrennumber);
            };
        } else if (document.getElementById(`textbox${childrennumber}`)) {
            //if (WinHrefCheck(awnserchildren[0].indexOf('/'))) {
                // if have multi correct answers
            //} else {
                document.getElementById(`textbox${childrennumber}`).innerHTML = awnserchildren[0];
                savetextbox(childrennumber);
            //};
        };
    });
} else {
		Swal.fire({
  			icon: 'error',
  			title: 'Script Used Timeout,\nPlease Try Again!'
		});
};