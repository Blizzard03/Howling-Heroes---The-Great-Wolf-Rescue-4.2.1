extends Control

@onready var backsound = $Back_Sound

func _ready():
	backsound.play()
	
func _on_new_game_main_menu_buttons_pressed():
	Global.load_scene("res://Assets/Scences/Location/How_to_Play/How_To_Play.tscn")


func _on_continue_main_menu_buttons_pressed():
	pass # Replace with function body.


func _on_options_main_menu_buttons_pressed():
	pass # Replace with function body.


func _on_quit_main_menu_buttons_pressed():
	get_tree().quit()
