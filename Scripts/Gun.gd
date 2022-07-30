extends StaticBody2D

var bulletScene = preload("res://Scenes/Bullet.tscn")
var canShoot = true


func _process(delta):
	if Input.is_action_just_pressed("leftClick") and canShoot == true:
		var bullet = bulletScene.instance()
		bullet.position = $Position2D.get_global_position()
		bullet.rotation_degrees = get_parent().rotation_degrees-90
		get_tree().get_root().get_node("Game").add_child(bullet)
		canShoot = false
		yield(get_tree().create_timer(0.5), "timeout")
		canShoot = true
