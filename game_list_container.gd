extends ScrollContainer

@export
var prefab:PackedScene

@export_file
var dataPath:String

var items:Array:
	set(value):
		items = value

func _ready():
	items = StaticData.gameList
