extends CharacterBody2D

@export var speed = 300.0
@export var dash_speed = 5000.0

func get_input():
	var input_direction = Input.get_vector("move_left", "move_right", "move_up", "move_down")
	velocity = input_direction * speed

	# Handle dash.
	if Input.is_action_just_pressed("dash"):
		velocity = input_direction * dash_speed
	
func _physics_process(delta):
	get_input()	
	move_and_slide()
