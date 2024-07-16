extends CharacterBody2D

const JUMP_VELOCITY = -250.0

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")
@onready var bodySprite = $"../Animations"


func _physics_process(delta):
	# Add the gravity.
	if position.y < 0:
		velocity.y += gravity * delta

	# Handle jump.
	if Input.is_action_just_pressed("ui_accept") && position.y >= 0:
		velocity.y = JUMP_VELOCITY
		
	if position.y > 0:
		position.y = 0
		
	bodySprite.position = position
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	#var direction = Input.get_axis("ui_left", "ui_right")
	#if direction:
		#velocity.x = direction * SPEED
	#else:
		#velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()
