extends ScrollContainer

@export
var prefab:PackedScene

var items:Array:
	set(value):
		var container:VBoxContainer = get_child(0)
		var gamePanel:PanelContainer
		for child in container.get_children():
			container.remove_child(child)
			child.queue_free()
			
		items = value
		
		for game in items:
			gamePanel = prefab.instantiate() as PanelContainer
			var label = gamePanel.get_node_or_null("VBoxContainer/HBoxContainer/VBoxContainer/Label")  # Adjust path if it's nested
			var description = gamePanel.get_node_or_null("VBoxContainer/HBoxContainer/VBoxContainer/Description")
			var logo = gamePanel.get_node_or_null("VBoxContainer/HBoxContainer/Logo")
			var playButton = gamePanel.get_node_or_null("VBoxContainer/HBoxContainer/VBoxContainer/MarginContainer/LinkButton")
			label.text = game.Name
			description.text = game.Description
			playButton.uri = game.URI
			
			if logo && game.ImageURL != "":
				var image = Image.load_from_file("res://assets/" + game.ImageURL)
				logo.texture = ImageTexture.create_from_image(image)
			else:
				logo.visible = false
			
			if game.Message == "":
				var button = gamePanel.get_node_or_null("VBoxContainer/Button")
				var accordion = gamePanel.get_node_or_null("VBoxContainer/CollapsibleContainer")
				button.visible = false
				accordion.visible = false
			else:
				var messageLabel = gamePanel.get_node_or_null("VBoxContainer/CollapsibleContainer/PanelContainer/RichTextLabel")
				messageLabel.text  = game.Message
				
			container.add_child(gamePanel)

func _ready():
	items = StaticData.gameList
