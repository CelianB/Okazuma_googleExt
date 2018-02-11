(function()
{
    var LiveAlert = function()
    {
        this.browser= chrome || browser;
    }
    LiveAlert.prototype.setIcon = function(status)
    {
        let onoff = status ? "on" : "off";
        chrome.browserAction.setIcon({path:
        {
            "19": "img/logo19." + onoff + ".png",
            "32": "img/logo32." + onoff + ".png",
            "38": "img/logo38." + onoff + ".png",
            "64": "img/logo64." + onoff + ".png",
            "76": "img/logo76." + onoff + ".png"
        }});
    }

    LiveAlert.prototype.notify = function(message)
    {
        return new Promise((resolve,reject) =>
        {
             var opt = {
                 type: "basic",
                 title: "Okazma est en live !",
                 message: message,
                 iconUrl: '../img/logo.png',
                 isClickable: true
             };
             chrome.notifications.create("Okazuma", opt);
        });
    }
    window.LiveAlert = new LiveAlert();
})();
