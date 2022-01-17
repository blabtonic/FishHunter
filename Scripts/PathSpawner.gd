extends Path2D

var timer: int = 0
export var spawntime: int = 5

var follower = preload("res://Scenes/FishFollow.tscn")

func _process(delta: float) -> void:
	timer = timer + delta
	
	if timer > spawntime:
		var newFollower = follower.instance()
		add_child(newFollower)
