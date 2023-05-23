extends Node2D

var concerning_hobbits = load("res://assets/music/concerning-hobbits-lofi.ogg")

func _ready():
	MusicController.crossfade_to(concerning_hobbits)
