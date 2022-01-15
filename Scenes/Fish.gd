extends KinematicBody2D

export var min_speed: float = 100.0
export var max_speed: float = 200.0

func _ready() -> void:
	#randomize()
	$AnimatedSprite.playing = true
	var mob_types = $AnimatedSprite.frames.get_animation_names()
	$AnimatedSprite.animation = mob_types[randi() % mob_types.size()]


func _on_VisibilityNotifier2D_screen_exited() -> void:
	queue_free()
