extends Label
@onready var milktea_bubble = $"../.."


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	self.text = "Height: %s" % str(int(milktea_bubble.height))
