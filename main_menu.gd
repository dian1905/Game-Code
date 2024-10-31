extends Control





func _on_texture_button_pressed() -> void:
	get_tree().change_scene_to_file("res://game_world.tscn")


func _on_texture_button_2_pressed() -> void:
	get_tree().quit()
