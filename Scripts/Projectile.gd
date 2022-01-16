extends KinematicBody2D

var velocity: = Vector2()

var speed: int = 10
var movement: = Vector2()
onready var mouse_pos = null


func _ready() -> void:
	mouse_pos = get_local_mouse_position()

func _physics_process(delta: float) -> void:
	movement = movement.move_toward(mouse_pos, delta)
	movement = movement.normalized() * speed
	position = position + movement

