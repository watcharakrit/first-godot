extends Node2D

func _ready():
	_draw()
	pass

func _draw():
	draw_circle(Vector2(0, 0), 10, Color.BLACK)
