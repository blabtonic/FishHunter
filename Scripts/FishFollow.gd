extends PathFollow2D

export var jumpSpeed: = 100

func _process(delta: float) -> void:
	set_offset(get_offset() + jumpSpeed * delta)
