extends CharacterBody2D

var speed = Vector2.ZERO

func _physics_process(delta):
#   First Raw version of movement
#	if Input.is_action_pressed("ui_right"):
#		#print("You pressed the right key!")
#		speed.x = 4
#	elif Input.is_action_pressed("ui_left"):
#		speed.x = -4
#	elif Input.is_action_pressed("ui_up"):
#		speed.y = -4
#	elif Input.is_action_pressed("ui_down"):
#		speed.y = 4
#	else:
#		speed.x = 0
#		speed.y = 0

	var input_vector = Vector2.ZERO
	input_vector.x = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
	input_vector.y = Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")

	if input_vector != Vector2.ZERO:
		speed = input_vector
	else:
		speed = Vector2.ZERO

	move_and_collide(speed)
