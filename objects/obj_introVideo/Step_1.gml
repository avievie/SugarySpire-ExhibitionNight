real_volume = global.musicVolume * global.masterVolume;
video_set_volume((!global.unfocusedMute || window_has_focus()) ? real_volume : 0);
