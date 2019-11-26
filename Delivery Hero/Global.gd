extends Node

#Timer
var SecondsValue: int = 0
var MinutesValue: int = 0
var HoursValue:   int = 0

#Points in game
var PointsValue:  int = 0

#Life in game
var LifePoints:   int = 5

#Funções: Points 
func add_points(amount: int) -> void:
	PointsValue += amount
	
func reduce_points(amount: int) -> void:
	PointsValue -= amount

func reset_points() -> void:
	PointsValue = 0

#Funções: Life
func add_life(amount: int) -> void:
	LifePoints += amount
	
func decrease_life(amount: int) -> void:
	LifePoints -= amount
	
func reset_life() -> void:
	LifePoints = 5
