extends Control

func _ready():
	get_node("HUDFinal/CanvasLayer/Life").text = "Life: " + str(Global.LifePoints)
	get_node("HUDFinal/CanvasLayer/Points").text = "Score: " + str(Global.PointsValue)
	
func _process(delta):
	get_node("HUDFinal/CanvasLayer/Life").text = "Life: " + str(Global.LifePoints)
	get_node("HUDFinal/CanvasLayer/Points").text = "Score: " + str(Global.PointsValue)
	
func _on_Menu_pressed():
	get_tree().change_scene("res://Scenes/BeginScene.tscn")

func _on_Quit_pressed():
	get_tree().quit()
	
