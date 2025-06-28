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
		
		var messagePanel:PanelContainer
		for message in items:
			messagePanel = prefab.instantiate() as PanelContainer
				
			container.add_child(messagePanel)

func _ready():
	items = StaticData.messages
