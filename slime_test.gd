
extends Node2D

const Speed : = 60

var Direction : = 1

@onready var ray_cast_r: RayCast2D = $RayCastR
@onready var ray_cast_l: RayCast2D = $RayCastL
@onready var slime_sprite: AnimatedSprite2D = $AnimatedSprite2D




func _process(delta: float) -> void:
	if ray_cast_r.is_colliding():
		Direction = -1
		slime_sprite.flip_h = false
	if ray_cast_l.is_colliding():
		Direction = 1
		slime_sprite.flip_h = true
	position.x += Direction * Speed * delta
	
	
