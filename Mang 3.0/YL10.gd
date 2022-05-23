extends KinematicBody2D

const SPEED = 400
const UP = Vector2(0,-1)
const GRAV = 80
const JUMPHIGH = -1500

var motion = Vector2()
var health = 100


func _physics_process(delta):
	motion.y += GRAV
	run()
	jump()
	motion = move_and_slide(motion, UP)
	$Kaamera/hbar/TextureProgress.value = health
	
	if health <= 0:
		print("GAME OVER")
		get_tree().paused = true
		#tegelane.hide()
		$'Kaamera/Node2D/GAMEOVER'.text = "GAME OVER"
	
func run():
	if Input.is_action_pressed("ui_right") and not Input.is_action_pressed("ui_left"):
		motion.x = SPEED
		$AnimatedSprite.flip_h = false
		$AnimatedSprite.play("run")
	elif Input.is_action_pressed("ui_left") and not Input.is_action_pressed("ui_right"):
		motion.x = -SPEED
		$AnimatedSprite.flip_h = true
		$AnimatedSprite.play("run")
	else:
		motion.x = 0
		$AnimatedSprite.play("idle")
		
func jump():
	if is_on_floor():
		if Input.is_action_pressed("ui_up"):
			motion.y = JUMPHIGH
	else:
		$AnimatedSprite.play("jump")


onready var tegelane = get_node("AnimatedSprite")
onready var hbar = get_node("Kaamera/hbar")

func _on_Area2D_body_entered(body):
	if "KinematicBody" in body.get_name():
		health-=25
		print(health)
	if health <= 0:
		tegelane.hide()
		hbar.hide()
