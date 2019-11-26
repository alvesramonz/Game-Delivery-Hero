extends Control

func _on_Start_pressed():
	get_tree().change_scene("res://Scenes/Scene 1-0.tscn")
	Global.reset_points()
	Global.reset_life()
	
func _on_Options_pressed():
	pass # Replace with function body.

func _on_Quit_pressed():
	get_tree().quit()



