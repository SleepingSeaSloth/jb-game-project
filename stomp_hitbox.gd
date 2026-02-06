extends Area2D


func _on_area_entered(_area: Node2D) -> void:
	print("Slime Died!")
	get_parent().queue_free()
