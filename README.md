# LJ's Events Pack
Hi!!

THIS IS A ADDON!!!
You can put it in `./addons/` OR THE NEW FEATURE `./mods/your-mod/addons/`!!

Thanks for using my events pack, I hope you enjoy it!

# Events:
![all the custom events added](github/events.png)
<details>
    <summary><h2>Camera Movement</h2></summary>
    <p>Edited the event so that you can make the camera instantly focus on a character. You can also tween to the character's position. Easing and Time.</p>
    <p>Event parameters are exactly what they mean.</p>
    <img src="github/camera_movement.png" alt="camera movement event parameters">
</details>

<details>
    <summary><h2>Change Camera Zoom</h2></summary>
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
    <summary><h2>Change Note Camera Movement</h2></summary>
    <p>The event pack contains a script that moves the camera when a character is focused on and hits a note. Check out ./songs/ui_notecam.hx for more info.</p>
    <img src="github/change_note_camera_movement.png" alt="change note camera movement event parameters">
</details>

<details>
    <summary><h2>Cinematic Event</h2></summary>
    <p>This event shows 2 bars on the top and bottom. (Its rendered with one sprite!! check out the event .hx lol)</p>
    <p>The time is in steps, but toggling Convert Steps to Beats or Convert Steps or Beats into Time will do exactly that.</p>
    <p>Everything else is self explanatory.</p>
    <img src="github/cinematic_event.png" alt="cinematic event parameters">
</details>

<details>
    <summary><h2>Fading Event</h2></summary>
    <p>Fading event can act like a flash event, but with more control the alpha, and time with tweens.</p>
    <p>Events are self explanatory.</p>
    <img src="github/fading_event.png" alt="fading event parameters">
</details>

<details>
    <summary><h2>Lyric Event</h2></summary>
    <p>This was made for Pillar Funkin! It's a bit complicated to explain here, but it uses a .json in `./songs/your-song/lyric.json`, you can find an example in `./github/`</p>
    <p>Events are self explanatory.</p>
    <img src="github/lyric_event.png" alt="lyric event parameters">
</details>

<details>
    <summary><h2>Set Camera To Middle</h2></summary>
    <p>This basically acts like the YoshiCrafterEngine's version of the % between 2 characters. Pick 2 strumline's characters, and the float will be point between them.</p>
    <p>Events are self explanatory.</p>
    <img src="github/set_camera_to_middle.png" alt="set camera to middle event parameters">
</details>

<details>
    <summary><h2>Set Character Camera Offset</h2></summary>
    <p>This modifies the Character's camera position. You can also tween to the value as well.</p>
    <!--  -->
    <p>Camera Target - The character index of the `strumLine.characters` array to edit.</p>
    <p>Additive - Adds the value to the current camera offset.</p>
    <p>Take Snapshot - Saves the camera's position value as a snapshot. (A snapshot is taken on creation of PlayState)</p>
    <p>Reset To Snapshot - Resets the camera's position to the snapshot. (Per character!!)</p>
    <p>Tween Time - The time in beats that the tween takes. If left at 0, camFollow's lerp will be used instead.</p>
    <p>The rest is self explanatory.</p>
    <!--  -->
    <img src="github/set_character_camera_offset.png" alt="set character camera offset event parameters">
</details>

## Events I plan to add in the future:

- [ ] Add Character Change Event
- [ ] Stage Switch Event
