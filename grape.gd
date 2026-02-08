extends Area2D

@onready var grape_power: AnimationPlayer = $GrapePower


func _on_body_entered(_body: Node2D) -> void:
	if "sir_knight" in _body.name:
		_body.grape_power()
		grape_power.play("PowerAnimation")
