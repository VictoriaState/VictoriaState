const winAudio = new Audio('assets/sound/success.wav');
const lostAudio = new Audio('assets/sound/fail.mp3');

var locale = {
    "whitepearl": "White Pearl",
    "goldenpearl": "Gold Pearl",
    "bluepearl": "Blue Pearl",
    "redpearl": "Red Pearl",
}
var currentData;
$(document).ready(function () {
    $("#upgrade-container").hide();

    function setupUpgrade(data) {
        $("#levelinfo").html(data.oltaData.currentLevel);
        $("#newlevelinfo").html(data.oltaData.currentLevel + 1);
        data.upgradeInfo.reqItems.forEach(function (item, index) {
            let divname = `#item${index + 2}`;
            $(divname + "requirement").html(item.count)
            $(divname + "info").html(`${locale[item.name]} <span id="item${index + 2}count">(${data.upgradeInfo.curItems[index].count})</span>`)
            $(`.item${index + 2}`).css({
                'background-image': 'url(assets/img/' + item.name + '.png)'
            })
        });
        currentData = data;
        $("#possibility").html(data.oltaData.efsunData.degerliBalik ? data.oltaData.efsunData.degerliBalik : 0);
        $("#durability").html(data.oltaData.efsunData.buyukBalik ? data.oltaData.efsunData.buyukBalik : 0);
        $("#upgradeprice").html(`${data.upgradeInfo.lucky}% Do you want to take it to the next level with luck?`)
    }


    $("#cancelbtn").on("click",function(e){
        e.preventDefault();
        $("#upgrade-container").hide();
        $.post(`https://${GetParentResourceName()}/closeUI`, JSON.stringify({}));
    })
    $("#upgradebtn").on("click",function(e){
        e.preventDefault();
        $("#upgrade-container").hide();
        $.post(`https://${GetParentResourceName()}/upgradeItem`, JSON.stringify({
            info: currentData,
        }));
    })
    // setupUpgrade(data);
    window.addEventListener('message', function (event) {
        switch (event.data.action) {
            case 'openUpgradePanel':
                $("#upgrade-container").show();
                setupUpgrade(event.data.array)
                break;
            case 'playSound':
                if (event.data.success) {
                    winAudio.currentTime = 0;
                    winAudio.volume = 0.1;
                    winAudio.play();
                }else{
                    lostAudio.currentTime = 0;
                    lostAudio.volume = 0.1;
                    lostAudio.play();
                }
                break
        
        }
    });
});