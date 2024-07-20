extends CharacterBody2D

var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")
@onready var milktea_bubble = $".."

signal height_change(height: float)

# Called when the node enters the scene tree for the first time.
func _ready():
	position.y = milktea_bubble.height * -1
	velocity.y = milktea_bubble.height * -1 * randf_range(0.5, 1.2)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	if position.y < 0:
		velocity.y += gravity*0.1 * delta
		
	if position.y > 0:
		position.y = 0
		height_change.emit(0)
		
	if position.y != 0:
		height_change.emit(position.y)
		
	move_and_slide()
