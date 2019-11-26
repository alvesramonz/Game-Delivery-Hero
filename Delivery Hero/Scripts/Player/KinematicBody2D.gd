extends KinematicBody2D

const UP = Vector2(0, -1)
const GRAVITY = 20 #Alterável
const SPEED = 120 #Alterável
const JUMP_HEIGHT = -390 #Alterável

var motion = Vector2()

func _physics_process(delta):

	motion.y += GRAVITY

	if Input.is_action_pressed("ui_right"):
		motion.x = SPEED
		$AnimatedSprite.play("Run")
		$AnimatedSprite.flip_h = false
	elif Input.is_action_pressed("ui_left"):
		motion.x = -SPEED
		$AnimatedSprite.play("Run")
		$AnimatedSprite.flip_h = true
	else:
		motion.x = 0
		$AnimatedSprite.play("Idle")

	if is_on_floor():
		if Input.is_action_pressed("ui_down"):
			$AnimatedSprite.play("Crouch")
		if Input.is_action_pressed("ui_up"):
			motion.y = JUMP_HEIGHT
	else:
		$AnimatedSprite.play("Jump")

	motion = move_and_slide(motion, UP)


func _on_DamageBox_body_entered(body):
	Global.decrease_life(1)
	if Global.LifePoints == 0:
		get_tree().change_scene("res://Scenes/GameOverScene.tscn")

