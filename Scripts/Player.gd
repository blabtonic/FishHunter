extends KinematicBody2D

var walkVelocity: = Vector2()
 
onready var _animated_sprite = $AnimatedSprite
var score = 0

func shoot() -> void:
	var projectile = load("res://Scenes/Projectile.tscn")
	var spear = projectile.instance()
	add_child_below_node(get_tree().get_root().get_node("."), spear)

func _process(_delta: float) -> void:
	walkVelocity = Vector2()
	
	var PlayerScoreNode = get_parent().get_node("res://Scenes/Score.tscn")
	#PlayerScoreNode.text = str(score)
	
	if Input.is_action_just_pressed("shoot",true) and Input.is_action_pressed("attack_activate"):
		shoot()
		_animated_sprite.play("Finish_Attack")
	# Movement
	if Input.is_action_pressed("attack_activate"):
		_animated_sprite.play("Set_Attack")
	else:
		_animated_sprite.play("Idle")

func _on_Fish_body_entered(_body: Node) -> void:
	score += 1
