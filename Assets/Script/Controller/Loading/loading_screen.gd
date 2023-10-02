extends Node

@export var with_load_button: bool = true
@export var use_sub_threads: bool = true

@onready var progress_bar: ProgressBar = $TextureRect/ProgressBar
@onready var label: Label = $TextureRect/Label
@onready var timer : Timer = $Timer
@onready var button : Button = $TextureRect/Button
var _text_index = 0

const _label_texts: Array[String] = [
	"Loading     ",
	"Loading.    ",
	"Loading. .  ",
	"Loading. . .",
]
func _ready() -> void:
	timer.connect("timeout", _on_timeout)
	assert(Global.connect("progress_changed", _on_progress_changed) == OK)
	label.show()
	button.hide()
	assert(button.connect("pressed", _on_button_pressed) == OK)
	assert(Global.connect("load_done", _on_load_done) == OK)
	Global.change_scene_immediately = not with_load_button
	Global.use_sub_threads = use_sub_threads
	Global.start_load()

func _on_timeout() -> void:
	label.text = _label_texts[_text_index]
	_text_index = _text_index + 1
	if _text_index > _label_texts.size() - 1:
		_text_index = 0

func _on_progress_changed(progress) -> void:
	progress_bar.value = progress * 100.0

func _on_load_done() -> void:
	label.hide()
	if not Global.change_scene_immediately:
		button.show()

func _on_button_pressed() -> void:
	Global.change_scene()
