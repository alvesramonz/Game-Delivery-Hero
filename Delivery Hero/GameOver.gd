extends Control

func _on_Menu_pressed():
	get_tree().change_scene("res://Scenes/BeginScene.tscn")
	
func _on_Quit_pressed():
	get_tree().quit()
