extends Area2D

@onready var grape_power: AnimationPlayer = $GrapePower


func _on_body_entered(_body: Node2D) -> void:
	if "Sir_Knight" in _body.name:
		var player : Knight = _body as Knight
		player._grape_power()
		grape_power.play("PowerAnimation")
