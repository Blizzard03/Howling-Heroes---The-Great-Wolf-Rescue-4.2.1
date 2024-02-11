extends Control

@onready var backsound = $Back_Sound
@onready var startbtn = $StartBtn
@onready var normalbutton = $Normal_button

func _ready():
	backsound.play()
	
	
func _on_new_game_main_menu_buttons_pressed():
	LoadingScreen.load_scence("res://Assets/Scences/Location/How_to_Play/How_To_Play.tscn")
	startbtn.play()

func _on_continue_main_menu_buttons_pressed():
	startbtn.play()


func _on_options_main_menu_buttons_pressed():
	
	LoadingScreen.load_scence("res://Assets/Scences/UI/Options/Options_Menu.tscn")
	normalbutton.play()

func _on_quit_main_menu_buttons_pressed():
	get_tree().change_scene_to_file("res://Assets/Scences/UI/Exit_Confirmation/Exit_Confirmation.tscn")
	normalbutton.play()

func _on_credits_pressed():
	pass # Replace with function body.


func _on_furafinity_pressed():
	
	OS.shell_open("")
