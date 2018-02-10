var url= 'http://celianbastien.fr/api/Okazuma.json'
var req= new XMLHttpRequest()
var res= null
req.open('GET',url,true)
req.onreadystatechange = function(){
    if((req.readyState == 4) && (req.status == 200)) {
        var data = JSON.parse(req.responseText)
        if(!data)
            return
            if(data.state){
                    chrome.storage.local.get('OkazumaaAlert', r => {
                        if (r.OkazumaaAlert===undefined)
                            r.OkazumaaAlert=false;
                        if(!r.OkazumaaAlert){
                            if (data.message==""){
                                data.message="Okazuma vient de lancer un live !"
                            }
                            LiveAlert.notify(data.message)
                        }
                        LiveAlert.setIcon(true);
                        chrome.browserAction.setBadgeText({text:'LIVE'});
                        chrome.browserAction.setTitle({title: 'Okazumaa - Online'})
                    });
            }
            else{
                chrome.browserAction.setBadgeText({text:'Off'});
                LiveAlert.setIcon(false);
            }
            
            chrome.storage.local.set({'OkazumaaAlert':data.state});
            let message=document.querySelectorAll(".text")[0]
            if(message != undefined){
                message.innerHTML=data.message;
            }
    }
}
chrome.notifications.onClicked.addListener(id=>{
    chrome.tabs.create({url:"https://www.twitch.tv/okazumaa"});
});

LiveAlert.setIcon(false);
chrome.browserAction.setBadgeText({text:'Off'});
chrome.browserAction.setTitle({title: 'Okazumaa - Offline'});

req.send();
setInterval(function()
{
    req.open('GET',url,true);
    req.send();
},10 * 1000);