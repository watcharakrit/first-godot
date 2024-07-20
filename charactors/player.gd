extends CharacterBody2D

const SPEED = 100.0
@export var height := 0.0

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")
@onready var anim_sprite = $Animations/idle
@onready var BodyJump = $BodyJump
@onready var shoot_position = $ShootPosition

func _physics_process(delta):
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var directionY = Input.get_axis("ui_up", "ui_down")
	if directionY:
		velocity.y = (directionY * SPEED)
	else:
		velocity.y = move_toward(velocity.y, 0, SPEED)
	
	var direction = Input.get_axis("ui_left", "ui_right")
	
	if direction > 0:
		anim_sprite.flip_h = false
	elif direction < 0: 
		anim_sprite.flip_h = true
		
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()

func _on_body_jump_height_change(_height):
	height = _height * -1
