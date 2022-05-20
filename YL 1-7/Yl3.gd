# Roger Niils
# Ül3

extends Node

var hp = 100
var vastane = 100

func _ready():

	while vastane >= 0 or hp >= 0:
		randomize()
		var dmg = round(rand_range(5,12))
		randomize()
		var dmg2 = round(rand_range(8,15))
		print("Player1: ",dmg," Player2 hp: ",vastane)
		print("Player2: ",dmg2," Player1 hp: ",hp)
		vastane -= dmg
		hp -= dmg2
	print()
	if vastane > hp:
		print("Player1 võitis")
	else:
		print("Player2 võitis")
