extends PanelContainer

func _on_show_more_button_toggled(button_pressed):
	var accordian = $VBoxContainer/CollapsibleContainer
	if (button_pressed):
		accordian.open_tween()
	else:
		accordian.close_tween()
	
