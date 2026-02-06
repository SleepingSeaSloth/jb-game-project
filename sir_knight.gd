class_name knight

extends CharacterBody2D


const SPEED : = 125.0
const JUMP_VELOCITY : = -280.0

@onready var stomping_feet: Area2D = $StompingFeet
@onready var knight_sprite: AnimatedSprite2D = $AnimatedSprite2D


func _physics_process(delta: float) -> void:
	set_collision_layer_value(7, true)
	
	if not is_on_floor():
		velocity += get_gravity() * delta
		if Input.is_action_just_pressed("Move Down"):
			set_collision_layer_value(7, false)

	# Handle jump.
	if Input.is_action_just_pressed("Jump") and is_on_floor():
		if Input.is_action_pressed("Move Down"):
			set_collision_layer_value(7, false)
		else:
			velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("Move Left", "Move Right")
	
	if direction > 0:
		knight_sprite.flip_h = false
	elif direction < 0:
		knight_sprite.flip_h = true
		
	if is_on_floor():
		if direction == 0:
			knight_sprite.play("Idle")
		else:
			knight_sprite.play("Run")
	else:
		knight_sprite.play("Jump")


	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()

func _ready() -> void:
	pass
