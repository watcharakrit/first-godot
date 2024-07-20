class_name HurtBox
extends Area2D

func _init():
	collision_layer = 10
	collision_mask = 10

func _ready():
	self.area_entered.connect(_on_area_entered)

func _on_area_entered(hitBox: HitBox):
	if hitBox == null:
		return
		
	var dif = abs(owner.position.y - hitBox.owner.position.y)
	if dif > 5:
		return
		
	if owner.has_method('take_damage'):
		owner.take_damage(hitBox.damage)
