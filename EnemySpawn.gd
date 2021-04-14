extends Node2D

var enemy_scene=load("res://Enemy.tscn")
# Declare member variables here. Examples:
# var a = 2
# var b = "text"



# Called when the node enters the scene tree for the first time.
func _ready():
	var enemy=enemy_scene.instance()
	randomize()
	enemy.position.y=rand_range(10,30)
	enemy.position.x=520
	add_child(enemy)





# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Timer_timeout():
	pass
