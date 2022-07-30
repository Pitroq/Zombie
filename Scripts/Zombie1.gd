extends KinematicBody2D

var speed = 50
var movement = Vector2()

func _physics_process(delta):
	
	look_at(get_parent().get_node("Player").position)
	rotation_degrees += 90
	
	movement.y = -speed
	move_and_slide(movement.rotated(global_rotation))
	movement.normalized()
