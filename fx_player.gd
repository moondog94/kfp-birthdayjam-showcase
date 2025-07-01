extends Node

var blip1 = preload("res://sound/soundeffects/blip_1.wav")
var blip2 = preload("res://sound/soundeffects/blip_2.wav")
var sword1 = preload("res://sound/soundeffects/sword_whip_1.wav")
var sword2 = preload("res://sound/soundeffects/sword_whip_2.wav")
var sword3 = preload("res://sound/soundeffects/sword_whip_3.wav")

var fx_volume_db: float = -4.0

func _adjust_volume(new_vol_linear: float) -> void:
	fx_volume_db = linear_to_db(new_vol_linear)

func play_FX(fx: AudioStream) -> void:
	var fx_player = AudioStreamPlayer.new()
	fx_player.stream = fx
	fx_player.name = "FX_PLAYER"
	fx_player.volume_db = fx_volume_db
	add_child(fx_player)
	fx_player.play()
	
	await fx_player.finished
	
	fx_player.queue_free()
	
func play_blip() -> void:
	var rand_num = randi_range(1,2)
	
	if rand_num == 1:
		play_FX(blip1)
	elif rand_num == 2:
		play_FX(blip2)
	
func play_sword() -> void:
	var rand_num = randi_range(1,3)
	
	if rand_num == 1:
		play_FX(sword1)
	elif rand_num == 2:
		play_FX(sword2)
	elif rand_num == 3:
		play_FX(sword3)
	
