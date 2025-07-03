extends AudioStreamPlayer



const mirage_bgm = preload("res://sound/bgm/Chiptune Mirage - Loop Version (looped 1 time - fixed) - Normalized.mp3")
#const chimera_bgm = preload("res://sound/bgm/Takanashi Kiara CHIMERA 8-Bit Remix.mp3")

var pause_pos: float = 0.0

@export var play_when_tabbed_out: bool = false

func get_play_when_tabbed_out():
	return play_when_tabbed_out

func set_play_when_tabbed_out(setting: bool):
	play_when_tabbed_out = setting

func _on_ready() -> void:
	volume_db = 0.0

func _play_bgm(bgm: AudioStream, volume: float = 0.0, start: float = 0.0):
	if stream == bgm:
		return
		
	stream = bgm
	volume_db = volume
	play(start)
		
func _play_mirage():
	_play_bgm(mirage_bgm,-4)

# Waiting for permission to use the 8-bit Chimera remix from Youtube	
#func _play_chimera():
	#_play_bgm(chimera_bgm,-4)

func _adjust_volume(new_vol_linear: float = 0.0):
	volume_db = linear_to_db(new_vol_linear)

func _notification(what: int) -> void:
	if !play_when_tabbed_out:
		match what:
			NOTIFICATION_WM_WINDOW_FOCUS_IN:
				play(pause_pos)
			NOTIFICATION_WM_WINDOW_FOCUS_OUT:
				pause_pos = get_playback_position()
				stop()


#func _on_finished() -> void:
#	if stream.resource_path.contains("Mirage"):
#		_play_bgm(mirage_bgm,-4,14.5)
#	else:
#		play(0.0)
