extends Area2D

func _process(_delta):
	position.y += randf_range(5, 10)

func _on_area_entered(area: Area2D) -> void:
	if area.is_in_group('ScoreArea'):
		GameManager.points += 10
	queue_free()
