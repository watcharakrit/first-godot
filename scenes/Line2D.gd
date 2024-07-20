extends Line2D

@onready var player = $"../Player"

# Called when the node enters the scene tree for the first time.
#func _ready():
	#for n in 1:
		#curve.add_point(Vector2.ZERO, Vector2.ZERO, Vector2.ZERO, -1)
		
#func _draw():
	##draw_line(Vector2.ZERO, Vector2.RIGHT * 500, Color.RED, 1.0)
	#draw_polyline(curve.get_baked_points(), Color.AZURE, 1.0)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	set_point_position(0, player.position)
	set_point_position(1, get_global_mouse_position())
