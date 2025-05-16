//a
import funkin.editors.charter.Charter;
import funkin.options.Options;

// percent at 1 is the middle of the screen, so both at 1 will be covering the screen
var data = [
    {percent: 0, alpha: 1, color: 0xFF000000},
    {percent: 0, alpha: 1, color: 0xFF000000},
];

function postCreate() {

    var bar = new FlxSprite().makeSolid(FlxG.width, FlxG.height*0.5, 0xFF000000);
    bar.screenCenter();
    bar.scrollFactor.set();
    bar.camera = camHUD;
    bar.onDraw = (spr:FlxSprite) -> {
        for (i=>d in data) {
            spr.y = (i == 1) ? FlxMath.lerp(FlxG.height, FlxG.height - spr.height, d.percent) : FlxMath.lerp(-spr.height, 0, d.percent);
            spr.draw();
        }
    };
    insert(members.indexOf(strumLines)-1, bar);
}

var topTween:FlxTween;
var bottomTween:FlxTween;
function onEvent(e) {
    var event = e.event;
    if (event.name != "Cinematic Event") return;
    
    var params = event.params;

    var stepsToBeats = params[0]; // Boolean
    var conductorToTime = params[1]; // Boolean

    var top_quickHeight = params[2]; // String
    var top_height = params[3]; // Float (Percentage)

    var bottomCopiesTop = params[4]; // Boolean

    var bottom_quickHeight = (bottomCopiesTop) ? top_quickHeight : params[5]; // String
    var bottom_height = (bottomCopiesTop) ? top_height : params[6]; // Float (Percentage)

    var timeBeats = params[7]; // Float
    var easeMode = params[8]; // String
    var easeType = params[9]; // String
    
    var _ease = CoolUtil.flxeaseFromString(easeMode, easeType);

    if (!stepsToBeats && timeBeats > 0 && !conductorToTime) timeBeats *= 0.25;

    var _top = quickHeight(top_quickHeight, top_height);
    var _bottom = quickHeight(bottom_quickHeight, bottom_height);
    
    if (_top != data[0].percent) topTween?.cancel();
    if (_bottom != data[0].percent) bottomTween?.cancel();

    if (timeBeats <= 0) {
        data[0].percent = _top;
        data[1].percent = _bottom;
    } else {
        var __time = (conductorToTime) ? timeBeats : (Conductor.crochet / 1000)*timeBeats;
        topTween = FlxTween.tween(data[0], {percent: _top}, __time, {ease: _ease});
        bottomTween = FlxTween.tween(data[1], {percent: _bottom}, __time, {ease: _ease});
    }
}

function quickHeight(option:String, height:Float):Float {
    switch (option) {
        case "1/8th Screen": return 0.125;
        case "1/4th Screen": return 0.25;
        case "3/4 Screen": return 0.75;
        case "Half Screen": return 0.5;
        case "Full Screen": return 1;
        case "Custom": return height/100;
    }
}