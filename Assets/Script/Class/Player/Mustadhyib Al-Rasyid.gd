class_name Player
extends Sprite2D

@export var name_character : String
@export var health : int
@export var location : String
@export var speed : int
@export var xpos : int
@export var ypos : int

#Setter Name Character
func _setter_name(name):
	name_character = name_character
	
#Getter Name Character
func _getter_name():
	return name_character
	
#Setter Health
func _setter_health(hlt):
	health = hlt

#Getter Health
func _getter_health():
	return health
	
#Setter Location
func _setter_location(lct):
	location = lct

#Getter Location
func _getter_location():
	return location
	
#Setter Speed
func _setter_speed(spd):
	speed = spd
	
