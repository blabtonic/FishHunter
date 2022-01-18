extends Area2D
 
onready var _animated_sprite = $AnimatedSprite
onready var death_animation = $AnimationPlayer

func _process(_delta: float) -> void:
	_animated_sprite.play("green")


func _on_Fish_body_entered(_body: Node) -> void:
	$HitSound.play()
	death_animation.play("fade_out")
