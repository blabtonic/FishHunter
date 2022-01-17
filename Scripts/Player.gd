extends KinematicBody2D

export (int) var speed: int = 20

var walkVelocity: = Vector2()
 
onready var _animated_sprite = $AnimatedSprite

func shoot() -> void:
	var projectile = load("res://Scenes/Projectile.tscn")
	var spear = projectile.instance()
	add_child_below_node(get_tree().get_root().get_node("."), spear)

func _process(_delta: float) -> void:
	walkVelocity = Vector2()
	
	if Input.is_action_just_pressed("shoot",true):
		shoot()
	# Movement
	if Input.is_action_pressed("attack_activate"):
		_animated_sprite.play("Set_Attack")
	else:
		_animated_sprite.play("Idle")
	#walkVelocity = walkVelocity.normalized() * speed
	
	#walkVelocity = move_and_slide(walkVelocity)

