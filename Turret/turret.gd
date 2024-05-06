extends Node3D

@export var projectile: PackedScene

func _ready():
	var shot = projectile.instantiate()
	add_child(shot)
