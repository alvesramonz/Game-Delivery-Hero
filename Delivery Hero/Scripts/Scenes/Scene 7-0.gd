extends Node2D

func _ready():
	get_node("HUD/CanvasLayer/Life").text = "Life: " + str(Global.LifePoints)
	get_node("HUD/CanvasLayer/Points").text = "Score: " + str(Global.PointsValue)
	
func _process(delta):
	get_node("HUD/CanvasLayer/Life").text = "Life: " + str(Global.LifePoints)
	get_node("HUD/CanvasLayer/Points").text = "Score: " + str(Global.PointsValue)	