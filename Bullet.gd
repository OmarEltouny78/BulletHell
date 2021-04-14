extends Node2D


var dir=Vector2(1,0)



export var bullet_speed=80

const STAM=2

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	self.position+=dir.rotated(self.rotation)*delta*bullet_speed
	if $RayCast2D.is_colliding():
		var n=$RayCast2D.get_collider()
		if n.is_in_group("HitBox"):
			print("Hit")



func _on_VisibilityNotifier2D_screen_exited():
	queue_free()





func _on_Area2D_body_entered(body):
	if Input.is_action_pressed("Parry"):
		Engine.time_scale=0.5
		$RayCast2D.enabled=false
		$Timer.start(2)

	
	


func _on_Timer_timeout():
	Engine.time_scale=1
	$RayCast2D.enabled=true
