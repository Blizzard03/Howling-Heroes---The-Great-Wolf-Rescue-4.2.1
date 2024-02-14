class_name World_Map
extends Control

@export var canada : String
@export var usa : String
@export var mexico : String
@export var greenland : String
@export var europe : String
@export var asia : String
@export var africa : String

@onready var Canada = $"World-Map/Canada"
@onready var USA = $"World-Map/USA"
@onready var Mexico = $"World-Map/Mexico"
@onready var Greenland =$"World-Map/Greenland"
@onready var Europe = $"World-Map/Europe"
@onready var Asia = $"World-Map/Asia"
@onready var Africa = $"World-Map/Africa"

#Setter Canada
func _setter_canada (cnd):
	canada = cnd
	
#Getter Canada
func _getter_canada():
	return canada

#Setter USA
func _setter_usa(us):
	usa=us
	
#Getter USA
func _getter_usa():
	return usa
	
##
func _on_canada_pressed():
	canada = Canada.get_text()
	print(canada)
	_setter_canada(canada)
	
func _on_usa_pressed():
	pass # Replace with function body.
	
	

func _on_mexico_pressed():
	pass # Replace with function body.
