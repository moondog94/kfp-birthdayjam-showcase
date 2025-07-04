extends Control

func _on_back_button_pressed() -> void:
	FxPlayer.play_sword()
	get_tree().change_scene_to_file("res://menu.tscn")


func _on_back_button_mouse_entered() -> void:
	FxPlayer.play_blip()
