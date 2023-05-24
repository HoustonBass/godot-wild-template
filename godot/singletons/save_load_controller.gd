extends Node

var user_file = "user://game_config.cfg"
var config = ConfigFile.new()
var gameConfig: GameConfig = GameConfig.new()

func _ready():
	var err = config.load(user_file)
	if err != OK:
		push_error("Could not load config, falling back to default values")
	
	for key in GameConfig.ConfigKeys:
		gameConfig[key] = config.get_value("Game Config", key, GameConfig.defaults[key])

	return gameConfig

func update_config(key: GameConfig.ConfigKeys, value):
	gameConfig[key] = value
	config.save(user_file)
