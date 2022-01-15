extends KinematicBody2D

onready var _animated_sprite = $AnimatedSprite

func _process(delta: float) -> void:
	var axisX = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
	
	# Movement
	if Input.is_action_pressed("ui_left"):
		_animated_sprite.play("Walk")
		_animated_sprite.flip_h = false
	elif Input.is_action_pressed("ui_right"):
		_animated_sprite.play("Walk")
		_animated_sprite.flip_h = true
	elif Input.is_action_pressed("attack_activate"):
		_animated_sprite.play("Set_Attack")
	else:
		_animated_sprite.play("Idle")
