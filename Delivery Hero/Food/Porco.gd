extends Area2D

func _on_Area2D_body_entered(body):
	
	if body.get_name() == "PlayerCavaleiro":
		Global.add_points(10)
		Global.add_life(1)
		queue_free()