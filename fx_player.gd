extends Node

var blip1 = preload("res://sound/soundeffects/blip-1.wav")
var blip2 = preload("res://sound/soundeffects/blip-2.wav")

var fx_volume_db = 0.0

func _adjust_volume(new_vol_linear: float):
	fx_volume_db = linear_to_db(new_vol_linear)

func play_FX(fx: AudioStream):
	var fx_player = AudioStreamPlayer.new()
	fx_player.stream = fx
	fx_player.name = "FX_PLAYER"
	fx_player.volume_db = fx_volume_db
	add_child(fx_player)
	fx_player.play()
	
	await fx_player.finished
	
	fx_player.queue_free()
	
func play_blip():
	var rand_num = randi_range(1,2)
	
	if rand_num == 1:
		play_FX(blip1)
	elif rand_num == 2:
		play_FX(blip2)
	
