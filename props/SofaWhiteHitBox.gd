extends Area2D

func _init():
	collision_mask = 2

# Called when the node enters the scene tree for the first time.
func _ready():
	connect('body_entered', _on_body_entered)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _on_body_entered(body):
	print('Hello Hit Box')
