extends AudioStreamPlayer

const mirage_bgm = preload("res://sound/bgm/Chiptune Mirage - Loop Version (looped 1 time) - Normalized.wav")

var pause_pos = 0.0

func _play_bgm(bgm: AudioStream, volume: float = 0.0):
	if stream == bgm:
		return
		
	stream = bgm
	volume_db = volume
	play()
		
func _play_mirage():
	_play_bgm(mirage_bgm,-4)

func _adjust_volume(new_vol_linear: float = 0.0):
	volume_db = linear_to_db(new_vol_linear)

func _notification(what: int) -> void:
	match what:
		NOTIFICATION_WM_WINDOW_FOCUS_IN:
			play(pause_pos)
		NOTIFICATION_WM_WINDOW_FOCUS_OUT:
			pause_pos = get_playback_position()
			stop()
