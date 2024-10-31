extends ColorRect

func _process(_delta):
	if Input.is_action_just_pressed("ui_cancel"):
		get_tree().paused = !get_tree().paused
		self.visible = !self.visible

func _on_restart_pressed() -> void:
	get_tree().change_scene_to_file("res://main_menu.tscn")

func _on_quit_pressed() -> void:
	get_tree().quit()
