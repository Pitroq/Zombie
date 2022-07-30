extends Node2D

var zombieScene = preload("res://Scenes/Zombie1.tscn")

func generateZombie():
	var zombie = zombieScene.instance()
	zombie.position = Vector2(100,-51)
	add_child(zombie)
	
func _ready():
	generateZombie()
