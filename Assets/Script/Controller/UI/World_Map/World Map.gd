class_name World_Map
extends Control

@onready var Canada = $"World-Map/Canada"
@onready var USA = $"World-Map/USA"
@onready var Mexico = $"World-Map/Mexico"
@onready var Greenland =$"World-Map/Greenland"
@onready var Europe = $"World-Map/Europe"
@onready var Asia = $"World-Map/Asia"
@onready var Africa = $"World-Map/Africa"


	
func _on_canada_pressed():
	print(Canada.get_text())


func _on_usa_pressed():
	pass # Replace with function body.
