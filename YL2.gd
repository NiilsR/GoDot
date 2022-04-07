# Roger Niils
# Ül2
# pood
extends Node    

var raha = 70
var koer1 = 80
var koer = 90


func _ready():
	if raha < koer1:
		print("Sa oled liiga vaene et osta koer1")
		var eiraha =abs(koer1-raha)
		print("Sul jääb koer1 puudu",eiraha," raha")
	else:
		print("Sul on piisavalt raha et saada endale koer1")

# Ruut

	var a = 5
	var b = 6
	var kr = a * b
	if a == b:
		print("ruudu pindala on ",kr)
	else:
		print("Ristküliku pindala on ",kr)
	
	
