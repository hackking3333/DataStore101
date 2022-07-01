const express = require("express");
const expressws = require("express-ws");
const cors = require("cors");
const JavaScriptObfuscator = require("javascript-obfuscator");
const fs = require("fs");
const path = require("path");
const atob = require("atob");

const app = express();
app.use(cors());
expressws(app);

var linkobject = {};

function CreateRawWithTimeout() {
    var rawscript = fs.readFileSync(path.join(__dirname, "files", "main.js"), "utf8");
    var scriptwithtimeout = `var scripttimeout = ${(Date.now() + (1000 * 60 * 1))};\n${rawscript}`;
    return scriptwithtimeout;
};

function DecodeString(codeinput) {
    var decodetimes = 15;
    var atobdecoded = codeinput;
    for (var i = 0; i < decodetimes; i++) {
        atobdecoded = atob(atobdecoded);
    };
    return atobdecoded;
};

function CheckHWID(hwidinput) {
    if (hwidinput === "be7125c7-c1a9-44b1-b1e8-f46e27b3b07e") {
        console.log(`\nUser: "${"Pum"}"\nDevice: "${"Lenovo"}"\nStamp: "${Date()}"\nHWID: "${hwidinput}"`);
        return true;
	} else if (hwidinput === "d520c7a8-421b-4563-b955-f5abc56b97ec") {
		console.log(`\nUser: "${"Tae"}"\nDevice: "${"Unknow"}"\nStamp: "${Date()}"\nHWID: "${hwidinput}"`);
		return true;
	} else if (hwidinput === "9704c540-eaed-4c33-b74b-b1af49397828") {
		return true;
    };
    return false;
};

function ObfuscatorJavascript(script) {
    var obfuscationResult = JavaScriptObfuscator.obfuscate(
        script,
        {
            compact: true,
            controlFlowFlattening: true,
            controlFlowFlatteningThreshold: 0.75,
            deadCodeInjection: true,
            deadCodeInjectionThreshold: 0.4,
            debugProtection: false,
            debugProtectionInterval: 0,
            disableConsoleOutput: true,
            identifierNamesGenerator: 'hexadecimal',
            log: false,
            numbersToExpressions: true,
            renameGlobals: false,
            selfDefending: true,
            simplify: true,
            splitStrings: true,
            splitStringsChunkLength: 10,
            stringArray: true,
            stringArrayCallsTransform: true,
            stringArrayCallsTransformThreshold: 0.75,
            stringArrayEncoding: ['base64'],
            stringArrayIndexShift: true,
            stringArrayRotate: true,
            stringArrayShuffle: true,
            stringArrayWrappersCount: 2,
            stringArrayWrappersChainedCalls: true,
            stringArrayWrappersParametersMaxCount: 4,
            stringArrayWrappersType: 'function',
            stringArrayThreshold: 0.75,
            transformObjectKeys: true,
            unicodeEscapeSequence: false
        }
    );
    return (obfuscationResult.getObfuscatedCode());
};

app.ws("/protocol_link/:linkid", (ws, req) => {
    linkobject[DecodeString(req.params.linkid)] = ws;
});

app.ws("/protocol_afk/", (ws, req) => {
    // E \\
});

app.get("/", (req, res) => {
    res.send("Homes!");
});

app.get("/hwid-set/:usedname", (req, res) => {
    res.send(`<a>Send To Owner!</a><script src="../get/script1.js"></script><script>fetch(\`../info-send/${req.params.usedname}/\${DeviceUUID().get()}\`)</script>`);
});

app.get("/info-send/:name/:uuid", (req, res) => {
    console.log(`\nName: "${req.params.name}"\nHWID: "${req.params.uuid}"`);
    res.send("Success");
});

app.get("/hwid-check/:atobobfuscated", (req, res) => {
    try {
        var atobobfuscated = req.params.atobobfuscated;
        var atobdecoded = DecodeString(atobobfuscated);
        var timestamp = atobdecoded.split("stamp")[1].split("hwid")[0];
        var hwidinput = atobdecoded.split("hwid")[1];
        if (Date.now() < timestamp) {
            if (CheckHWID(hwidinput)) {
                if (linkobject[hwidinput] === undefined) {
                    res.send("WebSocket not found");
                } else {
                    linkobject[hwidinput].send(ObfuscatorJavascript(CreateRawWithTimeout()));
                    linkobject[hwidinput].close();
					delete linkobject[hwidinput];
					res.send("Script Works Have Fun!");
                };
            } else {
                res.send("HWID not found, \nPlease contact the developer");
            };
        } else {
            res.send("Request Timeout");
        };
    } catch {
        res.send("Something went wrong");
    };
});

app.get("/files/load.js", (req, res) => {
    res.send(ObfuscatorJavascript(fs.readFileSync(path.join(__dirname, "files", "loadscript.js"), "utf-8")));
});

app.get("/get/script1.js", (req, res) => {
    res.send(ObfuscatorJavascript(fs.readFileSync(path.join(__dirname, "files", "deviceuuid.js"), "utf-8")));
});

app.listen(3000, () => {
    console.log("Server started on port 3000");
});