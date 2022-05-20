extends Node

var vscore = 0
var mscore = 0
var kasutaja = ""
var AI = ["Kivi", "Paber", "Käärid"]

func _ready():
	pass
func _process(delta):
	$"Vs/Vskoor".text = "Vastase skoor: "+ str(vscore)
	$"Vs/Mskoor".text = "Mängia skoor: "+ str(mscore)
	

func _on_KIVI_pressed():
	kasutaja = "Kivi"
	var random = RandomNumberGenerator.new()
	random.randomize()
	var dmg = round(rand_range(0,2))
	if AI[dmg] == "Kivi":
		print("Viik")
		$"Vs/Viik".text = "AI: "+ str("Kivi")
	elif AI[dmg] == "Paber":
		print("AI võitis")
		$"Vs/Viik".text = "AI: "+ str("Paber")
		vscore += 1
	else:
		print("Kasutaja võitis")
		mscore += 1
		$"Vs/Viik".text = "AI: "+ str("Käärid")

func _on_PABER_pressed():
	kasutaja = "Paber"
	var random = RandomNumberGenerator.new()
	random.randomize()
	var dmg = round(rand_range(0,2))
	if AI[dmg] == "Kivi":
		print("Kasutaja võitis")
		$"Vs/Viik".text = "AI: "+ str("Kivi")
		mscore += 1
	elif AI[dmg] == "Paber":
		print("Viik")
		$"Vs/Viik".text = "AI: "+ str("Paber")
	else:
		print("AI võitis")
		vscore += 1
		$"Vs/Viik".text = "AI: "+ str("Käärid")
		
func _on_KAARID_pressed():
	kasutaja = "Käärid"
	var random = RandomNumberGenerator.new()
	random.randomize()
	var dmg = round(rand_range(0,2))
	if AI[dmg] == "Kivi":
		print("AI võitis")
		$"Vs/Viik".text = "AI: "+ str("Kivi")
		vscore += 1
	elif AI[dmg] == "Paber":
		print("Kasutaja võitis")
		$"Vs/Viik".text = "AI: "+ str("Paber")
		mscore += 1
	else:
		print("Viik")
		$"Vs/Viik".text = "AI: "+ str("Käärid")

func _on_UUSMANG_pressed():
	get_tree().reload_current_scene()
