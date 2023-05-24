extends Node
var current_scene

@onready var MainMenu = preload("res://scenes/main_menu.tscn").instantiate()

func _ready():
	add_child(MainMenu)
	current_scene = MainMenu

func handle_scene_change(next_scene_name: String):
	var next_scene = load(next_scene_name)
	next_scene = next_scene.instantiate()
	
	current_scene.queue_free()
	add_child(next_scene)
	current_scene = next_scene
