extends CharacterBody2D
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

signal height_change(height: float)
	
func _physics_process(delta):
	#velocity.y = -10
	position.y = (sin(Time.get_ticks_msec() * delta * .1) * 5) - 5
		
	height_change.emit(position.y)
	move_and_slide()
