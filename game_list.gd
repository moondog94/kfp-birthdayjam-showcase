extends Control

func _on_press_back_button():
	FxPlayer.play_sword()
	get_tree().change_scene_to_file("res://menu.tscn")


func _on_button_mouse_entered() -> void:
	FxPlayer.play_blip()
