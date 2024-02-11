extends Control

@onready var button_sound = $Button

func _on_back_button_pressed():
	button_sound.play()
	get_tree().change_scene_to_file("res://Assets/Scences/UI/Settings_Confrimation/settings_confrimation.tscn")

func _on_save_button_pressed():
	button_sound.play()
	LoadingScreen.load_scence("res://Assets/Scences/UI/Main_Menu/main_menu.tscn")
