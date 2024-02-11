class_name Save_Settings
extends Node

const  Settings_Data = "user://Settings_data.mar"

var Data_Settings = {}
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _data_load():
	var Data_File_Load = FileAccess.new()
	
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
