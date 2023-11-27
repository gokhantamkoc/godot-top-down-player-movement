extends CharacterBody2D

# Player speed (adjust as needed)
@export var speed = 20

func _process(delta):
	# Player movement
	var movement = Vector2()  # Initialize movement vector

	if Input.is_action_pressed("ui_right"):
		movement.x += 1
	if Input.is_action_pressed("ui_left"):
		movement.x -= 1
	if Input.is_action_pressed("ui_down"):
		movement.y += 1
	if Input.is_action_pressed("ui_up"):
		movement.y -= 1

	# Normalize the movement vector to prevent faster movement diagonally
	movement = movement.normalized()

	# Move the player
	move_and_collide(movement * speed)
