extends KinematicBody2D

const GRAV = 100
const UP = Vector2(0,-1)
var motion = Vector2()
var speed = -300

func _ready():
	$AnimatedSprite.play("elus")
	set_physics_process(false)

func _physics_process(_delta):
	motion.y += GRAV
	if is_on_wall():
		speed *= -1.0
	if speed >=0:
		$AnimatedSprite.flip_h = true
	else:
		$AnimatedSprite.flip_h = false
	motion.x = speed
	motion = move_and_slide(motion, UP)
