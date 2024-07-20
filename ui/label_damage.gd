extends CanvasGroup
@onready var text = $Text

@export var damage := 0

# Called when the node enters the scene tree for the first time.
func _ready():
	text.text = str(damage)
	var text_transition = create_tween()
	text_transition.tween_property(self, "position", Vector2(position.x, position.y - 10), .5)
	text_transition.tween_callback(end)

func end():
	queue_free()
