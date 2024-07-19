extends CharacterBody2D

const JUMP_VELOCITY = -250.0

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")
@onready var bodySprite = $"../Animations"
@onready var shadow = $"../Shadow"

signal height_change(height: float)

func _physics_process(delta):
	# Add the gravity.
	if position.y < 0:
		velocity.y += gravity * delta

	# Handle jump.
	if Input.is_action_just_pressed("ui_accept") && position.y >= 0:
		velocity.y = JUMP_VELOCITY
		
	if position.y > 0:
		position.y = 0
		height_change.emit(0)
		
	if position.y != 0:
		height_change.emit(position.y)
		
	bodySprite.position = position
	var shadowScale = Vector2(1,1)
	var inverseY100 = (100 + position.y) / 100
	#print(inverseY100)
	shadow.scale = shadowScale * inverseY100
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	#var direction = Input.get_axis("ui_left", "ui_right")
	#if direction:
		#velocity.x = direction * SPEED
	#else:
		#velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()


func _on_player_height_change():
	pass # Replace with function body.
