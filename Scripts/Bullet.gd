extends Area2D

var speed = 15
var movement = Vector2()

func _physics_process(delta):
	movement.y = speed
	translate(movement.rotated(global_rotation))
	movement.normalized()


func _on_VisibilityNotifier2D_screen_exited():
	queue_free()


func _on_Bullet_body_entered(body):
	queue_free()
	#body.queue_free()
