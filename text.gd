extends Control

var text:String = ''
var array_text:Array = []
var array_index:int = 0
var time


# Called when the node enters the scene tree for the first time.
func _ready():
	array_text = text.rsplit(" ")
	%Label_word.text = array_text[array_index]

func change_word():
	if array_index < array_text.size():
		%Label_word.text = array_text[array_index]
		array_index += 1
	else:
		queue_free()

func _on_timer_timeout():
	change_word()

func set_values(text_, time_):
	text = text_
	%Timer.wait_time = time_
