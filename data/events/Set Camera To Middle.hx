//a

var _eventName = "Set Camera To Middle";

function postCreate() {
    for (event in events) {
        if (event.name != _eventName || event.time > 10) continue;
        if () continue;
        onEvent({event: event});
        events.remove(event);
    }
}

var _useEvent = false;
var _instant = false;

var cameraTarget_1 = null;
var cameraTarget_2 = null;
var value = 0.5;
function onEvent(e) {
    var event = e.event;
    if (event.name == "Camera Movement") return _useEvent = false;
    if (event.name != _eventName) return;
    _useEvent = true;
    var params = event.params;

    value = params[2];
    _instant = params[3];

    cameraTarget_1 = PlayState.instance.strumLines.members[params[0]]?.characters[0]?.getCameraPosition() ?? null;
    cameraTarget_2 = PlayState.instance.strumLines.members[params[1]]?.characters[0]?.getCameraPosition() ?? null;
    if (cameraTarget_1 == null || cameraTarget_2 == null) return _useEvent = false;
}

// used with `ui_notecam.hx` in `songs/`
function onCameraNoteMove(e, addon) {
    if (!_useEvent) return;

    e.position.x = FlxMath.lerp(cameraTarget_1.x, cameraTarget_2.x, value) + addon.x;
    e.position.y = FlxMath.lerp(cameraTarget_1.y, cameraTarget_2.y, value) + addon.y;

    if (_instant) {
        FlxG.camera.focusOn(e.position);
        _instant = false;
    }
}