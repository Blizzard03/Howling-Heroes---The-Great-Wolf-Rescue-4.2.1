extends Control

@onready var Warning = $Warning
@onready var button_sound = $"buton sound"
# Called when the node enters the scene tree for the first time.
func _ready():
	Warning.play()
	
func _on_confirmation_dialog_confirmed():
	button_sound.play()
	LoadingScreen.load_scence("res://Assets/Scences/UI/Main_Menu/main_menu.tscn")
	

func _on_confirmation_dialog_canceled():
	button_sound.play()
	LoadingScreen.load_scence("res://Assets/Scences/UI/Options/Options_Menu.tscn")
