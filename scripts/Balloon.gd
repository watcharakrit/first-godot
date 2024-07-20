extends StaticBody2D

@export var height := 0.0
		
@onready var shadow = $Shadow
@onready var balloon = $CharacterBody2D
const LABEL_DAMAGE = preload("res://ui/label_damage.tscn")
@onready var marker_2d_label_damage = $Marker2DLabelDamage


func _ready():
	var _height = height * -1
	balloon.position = Vector2(0.0, _height)

func _physics_process(delta):
	var _height = height * -1
	var shadowScale = Vector2(1,1)
	var inverseY100 = (100 + (_height * 5)) / 100
	shadow.scale = shadowScale * inverseY100 # Have to filter not scale below zero.


func _on_character_body_2d_height_change(_height):
	height = _height * -1

func take_damage(damage):
	var labelDamage = LABEL_DAMAGE.instantiate()
	labelDamage.position = marker_2d_label_damage.position
	labelDamage.damage = damage
	add_child(labelDamage)
