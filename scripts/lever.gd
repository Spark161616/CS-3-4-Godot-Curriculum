extends Area2D

#if Input.is_key_pressed(KEY_A):
	#pass
	

func play_animation(reverse: bool = false) -> void:
	var speed: int
	if reverse:
		speed = -1
	else:
		speed = 1
	$AnimatedSprite2D.play("", speed, reverse)
