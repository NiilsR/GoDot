extends Node

var character_pos
var y
var x
var elud = 3

onready var tegelane = get_node("Player")


func _ready():
	pass 

func _process(delta):
	
	$'Player/Kaamera/ELUD'.text = 'Elud: ' +str(elud)
	
	var character_path = get_node("Player")
	character_pos = character_path.position
	x = character_pos[0]
	y = character_pos[1]
	print(x)
	print(y)

	if elud <= 0:
		
		print("GAME OVER")
		$'Player/Kaamera/ELUD'.text = ''
		get_tree().paused = true
		tegelane.hide()
		$'Node2D/GAMEOVER'.text = "GAME OVER"
	if y >= 1000:
		elud -= 1
		var position_vector = Vector2(110,40)
		get_node("Player").set_position(position_vector)
