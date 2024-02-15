class_name World_Map
extends Control

@export var canada : String : set =_setter_canada, get=_getter_canada
@export var usa : String : set=_setter_canada,get = _getter_usa
@export var mexico : String : set =_setter_mexico, get =_getter_mexico
@export var greenland : String : set =_setter_greenland, get=_getter_greenland
@export var europe : String : set=_setter_europe, get=_getter_europe
@export var asia : String : set = _setter_asia, get=_getter_asia
@export var africa : String : set = _setter_africa, get = _getter_africa

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
	
#Setter Mexico
func _setter_mexico(mcx):
	mexico =  mcx

#Getter Mexico
func _getter_mexico():
	return mexico
	
#Setter Greenland
func _setter_greenland(grld):
	greenland = grld

#Getter Greenland
func _getter_greenland():
	return greenland

#Setter Europe
func _setter_europe(erp):
	europe = erp
	
#Getter Europe
func _getter_europe():
	return europe
	
#Setter Asia
func _setter_asia(asa):
	asia = asa

#Getter Asia
func _getter_asia():
	return asia
	
#Setter Africa
func _setter_africa(afc):
	africa = afc
	
#Getter Africa
func _getter_africa():
	return africa

func _on_canada_pressed():
	canada = Canada.get_text()
	print(canada)
	_setter_canada(canada)
	
func _on_usa_pressed():
	usa = USA.get_text()
	print(usa)
	_setter_usa(usa)
	
	
func _on_mexico_pressed():
	mexico = Mexico.get_text()
	print(mexico)
	_setter_mexico(mexico)


func _on_greenland_pressed():
	pass # Replace with function body.


func _on_europe_pressed():
	pass # Replace with function body.


func _on_asia_pressed():
	pass # Replace with function body.


func _on_africa_pressed():
	pass # Replace with function body.
