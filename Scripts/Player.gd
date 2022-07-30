extends KinematicBody2D

var bullet = preload("res://Scenes/Zombie1.tscn")

var speed = 150
var movement = Vector2()

func _physics_process(delta):
	look_at(get_global_mouse_position())
	
	if Input.is_action_pressed("w"):
		movement.y = -speed
	elif Input.is_action_pressed("s"):
		movement.y = speed
	else:
		movement.y = 0	

	if Input.is_action_pressed("a"):
		movement.x = -speed
	elif Input.is_action_pressed("d"):
		movement.x = speed
	else: 
		movement.x = 0
		
	move_and_slide(movement)
