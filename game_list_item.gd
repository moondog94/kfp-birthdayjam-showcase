extends PanelContainer

func _on_show_more_button_toggled(button_pressed):
	var accordian = $VBoxContainer/CollapsibleContainer
	if (button_pressed):
		FxPlayer.play_expand()
		accordian.open_tween()
	else:
		FxPlayer.play_collapse()
		accordian.close_tween()
	


func _on_play_button_pressed() -> void:
	var uri = get_meta("URI")
	print(uri)
	if uri:
		OS.shell_open(uri)
	else:
		OS.shell_open("https://itch.io/jam/405888/submissions")
