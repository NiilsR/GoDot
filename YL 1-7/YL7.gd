extends Node


func _ready():
	pass 

func _process(delta):
	var padrunid = $"Node".padrunid
	$"Bg2/ammo".text = "Ammo: "+ str(padrunid)
	var score = $"Node".score
	$"Bg2/score".text = "Score: "+ str(score)
	var hp = $"Node".hp
	$"Bg2/hp".text = "HP: "+ str(hp)
	
	if hp <= 0:
		$"Bg2/Gameover".text = "GAME OVER!"
		$"Bg2/ammo".text = ""
		$"Bg2/score".text = ""
		$"Bg2/hp".text = ""
