extends Node2D

@onready var start_position = $Startposition

func _process(delta: float) -> void:
	if Input.is_action_just_pressed("quit"):
		get_tree().quit()
	elif Input.is_action_just_pressed("reset"):
		get_tree().reload_current_scene()


func _on_deathzone_body_entered(body: Node2D) -> void:
	body.velocity = Vector2.ZERO
	body.global_position = start_position.global_position
