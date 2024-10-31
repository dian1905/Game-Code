extends Area2D

func _process(_delta):
	position.y += randf_range(10, 15)


func _on_area_entered(area: Area2D) -> void:
	if area.is_in_group("Player"):
		get_tree().change_scene_to_file("res://scene/game_over.tscn")
		queue_free()
