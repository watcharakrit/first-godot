extends Path2D

@onready var player = $"../Player"
@onready var balloon = $"../Balloon"

var listCurve = []

func _ready():
	#print(player.position)
	#print(player.height)
	#print(balloon.position)
	#print(balloon.height)
	pass

func _draw():
	#draw_polyline(curve.get_baked_points(), Color.AZURE, 1.0)
	#draw_polyline(listCurve, Color.AZURE, 1.0)
	draw_line(player.position, balloon.position, Color.RED, .5)
	#draw_line(curve.get_point_position(1), curve.get_point_out(1), Color.YELLOW, .5)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	pass
	#var mousePosition = get_global_mouse_position()
	#var distance = player.position.distance_to(mousePosition)
	#
	#curve.set_point_position(0, player.position)
	#
	#var slerp = player.position.slerp(mousePosition, .5)
	#var slerpHeight = slerp.y
	#if (slerp.y > 0):
		#slerpHeight = slerp.y * -1 
	#curve.set_point_position(1, Vector2(slerp.x, slerpHeight))
	##curve.set_point_in(1, Vector2(player.position.x, player.position.y - distance/3))
	##curve.set_point_out(1, Vector2(mousePosition.x, mousePosition.y - distance/3))
	#curve.set_point_position(2, mousePosition)
	
	#for n in 10:
		#var point = player.position.bezier_derivative(
			#player.position, 
			#Vector2(
				#player.position.x + distance, 
				#player.position.y - distance
			#),
			#mousePosition,
			#(n+1)*0.1
		#)
		#listCurve.push_front(point)
