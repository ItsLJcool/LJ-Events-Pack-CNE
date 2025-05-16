//a

function onEvent(e) {
    var event = e.event;
    if (event.name != "Change Note Camera Movement") return;

    var params = event.params;
    var intensity = params[0];
    var toggleCamMovement = params[1];

    noteCamIntensity = intensity;
    if (toggleCamMovement) disable_camera_movement = !disable_camera_movement;
}