extends Control

func _ready() -> void:
	$"/root/GameManager/GUI".hide()

func _process(delta: float) -> void:
	Enter()
	
func Enter():
	if Input.is_action_just_pressed("restart"):
		get_tree().change_scene_to_file("res://game_world.tscn")
		
func reload_current_scene():
	var current_scene = get_tree().current_scene
	if current_scene:
		get_tree().reload_current_scene()


func _on_texture_button_2_pressed() -> void:
	get_tree().quit()
