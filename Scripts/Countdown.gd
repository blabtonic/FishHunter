extends Control

export (int) var seconds: float = 0.0
var dsec: float = 0.0

func _physics_process(delta: float) -> void:
	if seconds > 0 and dsec <= 0:
		seconds -= 1
		dsec = 10
	
	if seconds >= 10:
		$sec.set_text(str(seconds))
	else:
		$sec.set_text("0"+str(seconds))


func _on_Timer_timeout() -> void:
	dsec -=1
