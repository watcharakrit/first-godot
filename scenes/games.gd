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
	var direction = Input.get_axis("ui_left", "ui_right")
	var projectile_instance := projectile.instantiate()
	projectile_instance.position = player.shoot_position.global_position
	projectile_instance.height += player.height
	
	if direction > 0:
		projectile_instance.direction = Vector2.RIGHT
	elif direction < 0: 
		projectile_instance.direction = Vector2.LEFT
	add_child(projectile_instance)
