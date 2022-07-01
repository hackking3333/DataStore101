var OldJson = []
var CloneJson = []
var CloneJson2 = []
var CloneJsonB = []
var CloneJsonB2 = []
var setClip = ""
var setClip2 = ""

OldJson = contenidoaguardar

for (let loopA1 = 0 ; loopA1 < OldJson.length ; loopA1++){
	if (OldJson[loopA1][0].toLowerCase().indexOf('choose:') === (window.location.href.split(".c")[0].split("li")[1].length - 12)){
		for (let loopA2 = 0 ; loopA2 < OldJson[loopA1][0].split("choose:")[1].split("/")["length"] ; loopA2++){
			if (OldJson[loopA1][0].split("choose:")[1].split("/")[loopA2].split("*")["length"] > 1){
				document.getElementById("selectbox" + loopA1).selectedIndex = loopA2 + 1
				saveselectbox(loopA1)
			}
		}
	}else if (OldJson[loopA1][0].toLowerCase().indexOf('drag:') === (window.location.href.split(".c")[0].split("li")[1].length - 12)){
		for (let loopA2 = 0 ; loopA2 < OldJson.length ; loopA2++){
			if (OldJson[loopA1][0].split("drag:")[1] === OldJson[loopA2][0].split("drop:")[1]){
				document.getElementById('dragablediv' + loopA1).style["left"] = document.getElementById('dropdiv' + loopA2).offsetLeft + "px"
				document.getElementById('dragablediv' + loopA1).style["top"] = document.getElementById('dropdiv' + loopA2).offsetTop + "px"
				document.getElementById('dragablediv' + loopA1).offsetTop = document.getElementById('dropdiv' + loopA2).offsetTop + "px"
				document.getElementById('dragablediv' + loopA1).offsetLeft = document.getElementById('dropdiv' + loopA2).offsetLeft + "px"
				contenidorellenado[loopA1][5] = document.getElementById('dropdiv' + loopA2).offsetTop + "@" + document.getElementById('dropdiv' + loopA2).offsetLeft
			}
		}
	}else if (OldJson[loopA1][0].toLowerCase().indexOf('select:') === (window.location.href.split(".c")[0].split("li")[1].length - 12)){
		if (OldJson[loopA1][0].split("select:")[1] === "yes"){
			selectanswer(loopA1)
		}
	}else if (OldJson[loopA1][0].toLowerCase().indexOf('join:') === (window.location.href.split(".c")[0].split("li")[1].length - 12)){
		for (let loopA2 = 0 ; loopA2 < OldJson.length ; loopA2++){
			if (OldJson[loopA1][0].split('join:')[1] === OldJson[loopA2][0].split('join:')[1]){
				try {
					htmldefinitivolinea = '<line x1="' + document.getElementById('joindiv' + loopA1).style["left"].split("px")[0] - parseInt(document.getElementById('capafondo').offsetLeft) + '" y1="' + document.getElementById('joindiv' + loopA1).style["top"].split("px")[0] - parseInt(document.getElementById('capafondo').offsetTop) + '" x2="' + document.getElementById('joindiv' + loopA2).style["left"].split("px")[0] - parseInt(document.getElementById('capafondo').offsetLeft) + '" y2="' + document.getElementById('joindiv' + loopA2).style["top"].split("px")[0] - parseInt(document.getElementById('capafondo').offsetTop) + '" stroke="darkblue" stroke-width="5"/>'
					flechaunida[loopA1] = String(loopA2)
					flechaunida[loopA2] = String(loopA1)
					console.log(htmldefinitivolinea)
					OldJson[loopA1][5] = htmldefinitivolinea
					OldJson[loopA2][5] = htmldefinitivolinea
				}
				catch(err) {
				}
			}
		}
	}else{
		try {
			if (OldJson[loopA1][0].split("/").length > 1){
				if (CloneJson[OldJson[loopA1][0]] === NaN || CloneJson[OldJson[loopA1][0]] === undefined || CloneJsonB[OldJson[loopA1][0]] === null){
					CloneJson[OldJson[loopA1][0]] = OldJson[loopA1][0].split("/")
				}
				if (CloneJsonB[OldJson[loopA1][0]] === NaN || CloneJsonB[OldJson[loopA1][0]] === undefined || CloneJsonB[OldJson[loopA1][0]] === null){
					CloneJsonB[OldJson[loopA1][0]] = 0
				}
				document.getElementById("textbox" + loopA1).innerHTML = CloneJson[OldJson[loopA1][0]][ CloneJsonB[OldJson[loopA1][0]] ]
				savetextbox(loopA1)
				CloneJsonB[OldJson[loopA1][0]] = CloneJsonB[OldJson[loopA1][0]] + 1
			}else{
				document.getElementById("textbox" + loopA1).innerHTML = OldJson[loopA1][0]
				savetextbox(loopA1)
			}
		}
		catch(err) {
		}
	}
}