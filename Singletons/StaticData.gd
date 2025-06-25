extends Node

var gameList = [];
var messages = [];

var gameListFilePath = "res://Data/GameList.json"
var messageFilePath = "res://Data/Messages.json"

func _ready():
	gameList = loadJSONData(gameListFilePath)
	messages = loadJSONData(messageFilePath)
	


func loadJSONData(dataPath: String):
	if FileAccess.file_exists(dataPath):
		var dataFile = FileAccess.open(dataPath, FileAccess.READ)
		var parseResult = JSON.parse_string(dataFile.get_as_text())
		
		if parseResult is Array or parseResult is Dictionary:
			return parseResult
		else:
			print("parseResult is actually " + type_string(typeof(parseResult)))
	
	else:
		print("File Doesn't Exist! " + dataPath)
