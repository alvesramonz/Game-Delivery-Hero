extends Area2D

func _on_Area2D_body_entered(body):
	
	if body.get_name() == "PlayerCavaleiro":
		Global.add_life(5)
		queue_free()