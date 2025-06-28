extends Control

func _on_game_list_button_pressed() -> void:
	get_tree().change_scene_to_file("res://Game List.tscn")
	
func _on_messages_button_pressed() -> void:
	get_tree().change_scene_to_file("res://Messages.tscn")
