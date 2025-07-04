extends ScrollContainer

@export
var prefab:PackedScene

var items:Array:
	set(value):
		var container:VBoxContainer = get_child(0)
		for child in container.get_children():
			container.remove_child(child)
			child.queue_free()
			
		items = value
		items.shuffle()
		
		var messagePanel:PanelContainer
		for message in items:
			messagePanel = prefab.instantiate() as PanelContainer
			var label = messagePanel.get_node_or_null("MarginContainer/VBoxContainer/Label")  # Adjust path if it's nestedAdd commentMore actions
			var description = messagePanel.get_node_or_null("MarginContainer/VBoxContainer/Message")
			
			if label:
				label.text = message.Name
			
			if description:
				description.text = message.Message	
			container.add_child(messagePanel)

func _ready():
	items = StaticData.messages
