extends KinematicBody2D

export (int) var speed: int = 20

var walkVelocity: = Vector2()
 
onready var _animated_sprite = $AnimatedSprite

func shoot() -> void:
	var projectile = load("res://Scenes/Projectile.tscn")
	var spear = projectile.instance()
	add_child_below_node(get_tree().get_root().get_node("."), spear)

func _process(delta: float) -> void:
	var axisX = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
	walkVelocity = Vector2()
	
	if Input.is_action_pressed("shoot"):
		shoot()
	# Movement
	if Input.is_action_pressed("attack_activate"):
		_animated_sprite.play("Set_Attack")
	else:
		_animated_sprite.play("Idle")
	#walkVelocity = walkVelocity.normalized() * speed
	
	#walkVelocity = move_and_slide(walkVelocity)

