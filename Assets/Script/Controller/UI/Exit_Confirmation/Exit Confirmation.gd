extends Control

@onready var Warning = $Warning
@onready var Button_Sound = $Button_sound

#For sound
func _ready():
	Warning.play()
	
#Yes	
func _on_confirmation_dialog_confirmed():
	Button_Sound.play()
	get_tree().quit()

#No 
func _on_confirmation_dialog_canceled():
	Button_Sound.play()
	LoadingScreen.load_scence("res://Assets/Scences/UI/Main_Menu/main_menu.tscn")

