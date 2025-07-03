extends Control

func _on_ready() -> void:
	$BGMVolume.value = db_to_linear(BgmPlayer.volume_db) * 10
	$FXVolume.value = db_to_linear(FxPlayer.fx_volume_db) * 10
	$PlayWhenTabbedOut.button_pressed = BgmPlayer.get_play_when_tabbed_out()

func _on_go_back_button_pressed() -> void:
	FxPlayer.play_sword()
	get_tree().change_scene_to_file("res://menu.tscn")

func _on_fx_volume_value_changed(value: float) -> void:
	FxPlayer._adjust_volume(value/10)
	FxPlayer.play_blip()

func _on_bgm_volume_value_changed(value: float) -> void:
	BgmPlayer._adjust_volume(value/10)


func _on_go_back_button_mouse_entered() -> void:
	FxPlayer.play_blip()


func _on_option_button_item_selected(index: int) -> void:
	if index == 0:
		BgmPlayer._play_mirage()
	#elif index == 1:
		#BgmPlayer._play_chimera()


func _on_check_box_toggled(toggled_on: bool) -> void:
	BgmPlayer.set_play_when_tabbed_out(toggled_on)
