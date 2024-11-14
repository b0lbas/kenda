extends Control

const WORDSPERMINUTE = preload("res://wordsperminute.tscn")
var wordsperminute_scene

func _on_button_pressed():
	wordsperminute_scene = WORDSPERMINUTE.instantiate()
	add_child(wordsperminute_scene)
