extends Control

func _ready() -> void:
	$"/root/GameManager/GUI".hide()
	
func resume():
	get_tree().paused = false
	
func pause():
	get_tree().paused = true
	
func testEsc():
	if Input.is_action_just_pressed("escape") and get_tree().paused == false:
		pause()
		self.visible = !self.visible
		
	elif Input.is_action_just_pressed("escape") and get_tree().paused == true:
		resume()
		self.visible = !self.visible
		
func _on_resume_pressed() -> void:
	resume()
	
func _process(delta: float) -> void:
	testEsc()
	


func _on_texture_button_pressed() -> void:
	get_tree().quit()
