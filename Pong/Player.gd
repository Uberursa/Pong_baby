extends KinematicBody2D

var speed = 200

# delta is the default input, ensures consistent execution speed
func _physics_process(delta):
	var velocity = Vector2.ZERO
	
	if (Input.is_action_pressed("ui_up")):
		velocity.y -= speed
	if (Input.is_action_pressed("ui_down")):
		velocity.y += speed
	if (Input.is_action_pressed("ui_left")):
		velocity.x -= speed
	if (Input.is_action_pressed("ui_right")):
		velocity.x += speed
		
	move_and_slide(velocity)
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
