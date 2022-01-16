extends KinematicBody2D

var velocity: = Vector2()

func _ready() -> void:
	velocity.y = -600

func _physics_process(delta: float) -> void:
	move_and_slide(velocity)
