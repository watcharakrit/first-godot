extends Node2D
const MILKTEA_BUBBLE = preload("res://props/milktea_bubble.tscn")
@onready var player = $Player

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
func _input(event):
	if event.is_action_pressed("left_click"):
		shoot(MILKTEA_BUBBLE)

func shoot(projectile: PackedScene):
	for n in 3:
		var index = n - 1
		var projectile_instance := projectile.instantiate()
		projectile_instance.position = player.shoot_position.global_position
		projectile_instance.height += player.height
		projectile_instance.direction = player.face_direction.rotated(.2 * index)
		#Vector2(0,0).direction_to()
		add_child(projectile_instance)
