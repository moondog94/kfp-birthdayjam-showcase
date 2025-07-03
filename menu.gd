extends Control

func _ready() -> void:
	BgmPlayer._play_mirage()

func _on_game_list_button_pressed() -> void:
	FxPlayer.play_sword()
	get_tree().change_scene_to_file("res://Game List.tscn")
	
func _on_messages_button_pressed() -> void:
	FxPlayer.play_sword()
	get_tree().change_scene_to_file("res://Messages.tscn")


func _on_game_list_button_mouse_entered() -> void:
	FxPlayer.play_blip()


func _on_messages_button_mouse_entered() -> void:
	FxPlayer.play_blip()


func _on_settings_button_mouse_entered() -> void:
	FxPlayer.play_blip()


func _on_settings_button_pressed() -> void:
	FxPlayer.play_sword()
	get_tree().change_scene_to_file("res://settings.tscn")
