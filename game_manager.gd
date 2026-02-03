class_name GameManager
extends Node

var score : = 0

@onready var coins_earned: Label = $Hud/Panel/CoinsEarned


func add_point() -> void:
	score += 1
	coins_earned.text = str(score)
	
