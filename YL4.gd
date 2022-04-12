# Roger Niils
# Harjutus 4.1

extends Node

func _ready():
	var nimed = ["Feake","Bradwell","Dreger","Bloggett","Lambole","Daish","Lippiett","Blackie","Stollenbeck","Houseago","Dugall","Sprowson","Kitley","Mcenamin","Allchin","Doghartie","Brierly","Pirrone","Fairnie","Seal","Scoffins","Galer","Matevosian","DeBlase","Cubbin","Izzett","Ebi","Clohisey","Prater","Probart","Samwaye","Concannon","MacLure","Eliet","Kundt","Reyes"]
	print("Nimesid on ",len(nimed))
	print("Esimene nimi on ",(nimed[0]))
	nimed.sort()
	var smallest = nimed.min()
	for i in nimed:
		print(i)
	nimed.erase("Reyes")
	nimed.append("Roger")
	var biggest = nimed.max()
	print(biggest)
	print(nimed)
	
# Harjutus 4.2
	var player = {"gold":5, "health":100}
	for i in range(5):
		player.gold += 5
		print("Mängjial on ",player.gold," kulda")
