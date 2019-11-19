extends Area2D

func _on_Area2D_body_entered(body): #Entrou na área, logo aparece o eviso para apertar uma tecla
	pass # Replace with function body.


func _on_Area2D_input_event(viewport, event, shape_idx): #Apertou a tecla solicitada, logo passa para a próxima fase
	if event is InputEventKey and event.pressed:
		if event.scancode == KEY_E:
			get_tree().change_scene("res://Scenes/Scene 4-0.tscn")
