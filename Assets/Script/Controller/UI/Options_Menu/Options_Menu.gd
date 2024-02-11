class_name Option_Menu
extends Control

#Button Sound
@onready var button_sound = $Button

#Video Settings
	#Display Mode
	#@onready var Display_Mode = pass
	
	#V_Sync
	#@onready var V_Sync = 
	
#Audio Settings
	#Master Volume Slider
	#@onready var Master_Volume = 
	
	#Master Volume Max Label
	#@onready Max_Label_Master_Volume = 
	
	#Music Volume Slider
	#Music Volume Max Label
	
	#Voice Volume Slider
	#Voice Volume Max Label
	
	#Sound Effect Volume Slider
	#Sound Effect Volume Max Label


func _on_back_button_pressed():
	button_sound.play()
	get_tree().change_scene_to_file("res://Assets/Scences/UI/Settings_Confrimation/settings_confrimation.tscn")

func _on_save_button_pressed():
	button_sound.play()
	LoadingScreen.load_scence("res://Assets/Scences/UI/Main_Menu/main_menu.tscn")
