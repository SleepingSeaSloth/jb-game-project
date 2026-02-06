extends Area2D

@onready var grape_power: AnimationPlayer = $GrapePower


func _on_body_entered(_body: Node2D) -> void:
	grape_power.play("PowerAnimation")
