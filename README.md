# LJ's Events Pack
Hi!!

Thanks for using my events pack, I hope you enjoy it!

## Features:
![all the custom events added](github/events.png)
<details>
    <summary><h1>Camera Movement</h1></summary>
    <p>Edited the event so that you can make the camera instantly focus on a character. You can also tween to the character's position. Easing and Time.</p>
    <p>Event parameters are exactly what they mean.</p>
    <img src="github/camera_movement.png" alt="camera movement event parameters">
</details>

<details>
    <summary><h1>Change Camera Zoom</h1></summary>
    <p>This changes the defaultCamZoom variable to be that value. You can also tween the value.</p>
    <p>Instant - instantly changes the zoom value.</p>
    <p>Additive - adds the value to the current zoom value.</p>
    <p>Take Snapshot - saves the current zoom value to a snapshot. (A snapshot is taken on creation of PlayState)</p>
    <p>Reset To Snapshot - resets the zoom value to the snapshot.</p>
    <p>Time - The time in beats that the tween takes.</p>
    <p>Tween Ease - ease function. (FlxEase)</p>
    <p>Tween Type - ease type. (FlxEase)</p>
    <img src="github/change_camera_zoom.png" alt="change camera zoom event parameters">
</details>

<details>
    <summary><h1>Change Note Camera Movement</h1></summary>
    The event pack contains a script that moves the camera when a character is focused on and hits a note. Check out [ui_notecam.hx](songs/ui_notecam.hx) for more info.
    <img src="github/change_note_camera_movement.png" alt="change note camera movement event parameters">
</details>

## Events I plan to add in the future:

- [ ] Add Character Change Event
- [ ] Stage Switch Event
