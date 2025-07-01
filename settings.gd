extends Control

func _on_ready() -> void:
	prints("BGM Volume: "+str(BgmPlayer.volume_db))
	$BGMVolume.value = db_to_linear(BgmPlayer.volume_db) * 10
	prints("FX Volume: "+str(FxPlayer.fx_volume_db))
	$FXVolume.value = db_to_linear(FxPlayer.fx_volume_db) * 10
	

func _on_go_back_button_pressed() -> void:
	FxPlayer.play_sword()
	get_tree().change_scene_to_file("res://menu.tscn")

func _on_fx_volume_value_changed(value: float) -> void:
	FxPlayer._adjust_volume(value/10)
	FxPlayer.play_blip()

func _on_bgm_volume_value_changed(value: float) -> void:
	BgmPlayer._adjust_volume(value/10)
