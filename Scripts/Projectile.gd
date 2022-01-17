extends KinematicBody2D

var velocity: = Vector2()

var speed: int = 4
var movement: = Vector2()
onready var mouse_pos = null
var score: int = 0

func _ready() -> void:
	mouse_pos = get_local_mouse_position()

func _physics_process(delta: float) -> void:
	movement = movement.move_toward(mouse_pos, delta)
	movement = movement.normalized() * speed
	position = position + movement

func _on_Fish_body_entered(body: Node) -> void:
	score += 1
	print("up the score")
