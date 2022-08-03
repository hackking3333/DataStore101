var EnigRotateObject = {
    [1]: {
        ["rotate"]: 1,
        ["addper"]: 666
    },
    [2]: {
        ["rotate"]: 5,
        ["addper"]: 16
    },
    [3]: {
        ["rotate"]: 3,
        ["addper"]: 333
    },
};
var keycypt = "+*-+/*/";
var rsakey = "Hello world!";

function EnigEncrypt(UnString) {
    var savedstr = "";
    (UnString.split("")).forEach((indx, item) => {
        var asciitran = indx.charCodeAt(0);
        var savedascii = asciitran;
        console.log(asciitran);
        Object.entries(EnigRotateObject).forEach((indx2, item2) => {
            var engiobject = EnigRotateObject[indx2[0]];
            asciitran = asciitran + engiobject["addper"];
            asciitran = asciitran + engiobject["rotate"];
            console.log(engiobject["addper"] + engiobject["rotate"]);
            engiobject["rotate"] = engiobject["rotate"] + 1;
        });
        var tostr = String.fromCharCode(asciitran);
        savedstr = savedstr + tostr;
    });
    return savedstr;
};

function EnigDecrypt(EncryptedString) {
    var savedstr = "";
    (EncryptedString.split("")).forEach((indx, item) => {
        var asciitran = indx.charCodeAt(0);
        var savedascii = asciitran;
        Object.entries(EnigRotateObject).reverse().forEach((indx2, item2) => {
            var engiobject = EnigRotateObject[indx2[0]];
            asciitran = asciitran - engiobject["addper"];
            asciitran = asciitran - engiobject["rotate"];
            console.log(engiobject["addper"] + engiobject["rotate"]);
            engiobject["rotate"] = engiobject["rotate"] - 1;
        });
        var tostr = String.fromCharCode(asciitran);
        savedstr = savedstr + tostr;
    });
    return savedstr;
};

var Encrypted = EnigEncrypt("Hello");
console.log(Encrypted);
var Decrypted = EnigDecrypt(Encrypted)
console.log(Decrypted);