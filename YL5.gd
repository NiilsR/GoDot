# Roger Niils
#Harjutus 5

extends Node

func _ready():
	var tasu = 0
	var tootunnid = 40
	var tunnitasu = 1.5
	var summa = 0
	var punktid = 0
	if tootunnid == 40:
		tasu = tootunnid * tunnitasu
		print(tasu)
		
	var epunktid = [7,28,64,51,81,40,21,73,34,98,39,17,33,85,35,44]
	for i in epunktid:
		summa += i
	var keskmine = summa / len(epunktid)
	print(keskmine)
	for i in epunktid:
		print(i)
		if i >= 90:
			print("Ta saab 5")
		elif i >= 75:
			print("Ta saab 4")
		elif i >= 50:
			print("Ta saab 3")
		else:
			print("Ta saab 2")
