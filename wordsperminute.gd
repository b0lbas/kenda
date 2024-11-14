extends Control

const TEXT = preload("res://text.tscn")
var text_scene

func get_time(opt):
	match opt:
		0: return 1
		1: return 0.5
		2: return 0.2
		3: return 0.1

func _on_button_pressed():
	text_scene = TEXT.instantiate()
	text_scene.set_values(%TextEdit.text, get_time(%OptionButton.selected))
	add_child(text_scene)
