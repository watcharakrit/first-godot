extends Node2D
const MILKTEA_BUBBLE_DIED = preload("res://assets/images/milktea-bubble-died.png")

@export var speed := 150.0
@export var lifetime := 3
@export var height := 15

var direction := Vector2.RIGHT

@onready var milktea_bubble = $"Milktea-bubble"
@onready var timer = $Timer

# Called when the node enters the scene tree for the first time.
func _ready():
	milktea_bubble.position.y = height * -1
	
	timer.connect('timeout', _on_timeout)
	timer.start(lifetime)

func _physics_process(delta):
	if (height > 0):
		position += direction * speed * delta
	else:
		milktea_bubble.texture = MILKTEA_BUBBLE_DIED

func _on_timeout():
	queue_free()


func _on_bubble_height_change(_height):
	milktea_bubble.position.y = _height
	height = _height * -1
