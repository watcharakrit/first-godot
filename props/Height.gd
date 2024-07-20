extends Marker2D

var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")
@onready var milktea_bubble = $"../Milktea-bubble"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	if position.y < 0:
		velocity.y += gravity * delta
		
	print(position.y)
	pass
