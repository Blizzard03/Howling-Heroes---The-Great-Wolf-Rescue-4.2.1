extends Control

#Yes	
func _on_confirmation_dialog_confirmed():
	get_tree().quit()

#No 
func _on_confirmation_dialog_canceled():
	get_tree().change_scene_to_file("res://Assets/Scences/UI/Main_Menu/main_menu.tscn")



	
