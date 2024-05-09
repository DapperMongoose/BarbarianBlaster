extends Node3D

var red: Color = Color.RED
var white: Color = Color.WHITE

var current_health: int:
	set(health_in):
		current_health = health_in
		label_3d.text = str(current_health) + "/" + str(max_health)
		label_3d.modulate = red.lerp(white, float(current_health)/float(max_health))
		if current_health < 1:
			get_tree().reload_current_scene()
	

@export var max_health: int = 5

@onready var label_3d: Label3D = $Label3D

func _ready():
	current_health = max_health
	Engine.time_scale = 5

func take_damage() -> void:
	current_health -= 1
