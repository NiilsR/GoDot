extends Node


# Declare member variables here. Examples:
var elud = 100
var nimi = "Koer"


# Called when the node enters the scene tree for the first time.
func _ready():
	print(elud)
	print(nimi)
	print("Nimepikkus "+str(len(nimi)))
	var elud1 = abs(2+elud)
	print("Mängile lisati 2 elu ja elude arv on nüüd ",elud1)
	var rng = RandomNumberGenerator.new()
	rng.randomize()
	var suvaline = round(rng.randf_range(0.0, 19.0))
	
	print(suvaline)
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
