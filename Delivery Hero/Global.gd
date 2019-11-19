extends Node

#Timer
var SecondsValue: int = 0
var MinutesValue: int = 0
var HoursValue:   int = 0

#Points in game
var PointsValue:  int = 0

#Life in game
var LifePoints:   int = 0

#Funções para acréscimo e decréscimo de pontuação
func add_points(amount: int) -> void:
	PointsValue += amount
	
func reduce_points(amount: int) -> void:
	PointsValue -= amount
