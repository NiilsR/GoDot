extends Node

var hp = 100
var padrunid = 5
var score = 0

func _ready():
	print("-----------------------------------")
	print("---------------Doom----------------")
	print("------------Roger Niils------------")
	print("-----------------------------------")

func _process(delta):
	if padrunid <= 0 and Input.is_action_just_pressed("lae"):
		padrunid = 5
		print("Relv on laetud Sul on ",padrunid)
		print("-----------------------------------")
		
	if hp > 0 and padrunid > 0 and Input.is_action_just_pressed("lase"):
		padrunid -= 1
		score += 1
		print("Padrunid ",padrunid)
		var random = RandomNumberGenerator.new()
		random.randomize()
		var dmg = round(rand_range(8,12))
		hp -= dmg
		print("HP ",hp)
		print("-----------------------------------")
	if hp <= 0:
		print("Sa tapisd selle goblini ära")
		print("Score ",score)
		print("-----------------------------------")
