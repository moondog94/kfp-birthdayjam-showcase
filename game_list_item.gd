extends PanelContainer

func _on_show_more_button_toggled(button_pressed):
	var accordian = $VBoxContainer/CollapsibleContainer
	if (button_pressed):
		FxPlayer.play_expand()
		accordian.open_tween()
	else:
		FxPlayer.play_collapse()
		accordian.close_tween()
	
