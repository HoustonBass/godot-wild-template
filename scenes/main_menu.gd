extends Control

var cantina_band = load("res://assets/music/cantina-band-lofi.ogg")

func _ready():
	MusicController.crossfade_to(cantina_band)

func play():
	SceneSwitcher.handle_scene_change("res://scenes/game.tscn")

func _unhandled_key_input(event: InputEvent):
	if event.is_action_pressed("Exit"):
		show_menu()

func show_menu():
	$Menu.show()
	$Options.hide()
	$Credits.hide()

func show_options():
	$Menu.hide()
	$Options.show()
	$Credits.hide()

func show_credits():
	$Menu.hide()
	$Options.hide()
	$Credits.show()
