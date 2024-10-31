extends Node

var points = 0
var highscore = 0

func _process(delta: float) -> void:
	$"GUI/PointsValue".text = str(points)
	$"GUI/HighScoreValue".text = str(highscore)
	restart_reset_points()

func restart_reset_points():
	if Input.is_action_just_pressed("restart"):
		highscore = points
		points = 0
