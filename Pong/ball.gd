extends KinematicBody2D

var velocity = Vector2.ZERO
var speed = 200
var rng = RandomNumberGenerator.new()

func _physics_process(delta):
	# returns the object you collided with
	var collision_obj = move_and_collide(velocity * speed * delta)
	
	# Checks for existance like a good language (*java*)
	if (collision_obj):
		velocity = velocity.bounce(collision_obj.normal)
	
# Called when the node enters the scene tree for the first time.
func _ready():
	rng.randomize()
	#Not two dimemtional, initiates an array and then randomly selects a array index
	velocity.x = [1, -1][rng.randi() % 2]
	velocity.y = rng.randf_range(-0.8, 0.8)
