extends Node

var character_pos
var y
var x

onready var tegelane = get_node("Player")

func _ready():
	pass 

func _process(delta):
	
	var character_path = get_node("Player")
	character_pos = character_path.position
	x = character_pos[0]
	y = character_pos[1]
	
	
	if y >= 1000:
		var position_vector = Vector2(110,40)
		get_node("Player").set_position(position_vector)
