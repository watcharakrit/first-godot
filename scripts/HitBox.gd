class_name HitBox 
extends Area2D

@export var damage := 10

func _init():
	collision_layer = 10
	collision_mask = 10

func _ready():
	self.area_entered.connect(_on_area_entered)
	damage = owner.damage

func _on_area_entered(hurtBox: HurtBox):
	if hurtBox == null:
		return
	
	if owner.has_method('on_impacted'):
		owner.on_impacted()
