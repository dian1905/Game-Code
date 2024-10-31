extends Node2D

func _process(delta: float) -> void:
	pass

var obstacle_1_scene = preload("res://falling_object.tscn")
var obstacle_2_scene = preload("res://falling_object_2.tscn")
var obstacle_3_scene = preload("res://falling_object_3.tscn")
var obstacle_4_scene = preload("res://falling_object_4.tscn")
var obstacle_5_scene = preload("res://falling_object_5.tscn")
var obstacle_6_scene = preload("res://falling_object_6.tscn")
var obstacle_7_scene = preload("res://falling_object_7.tscn")
var obstacle_8_scene = preload("res://falling_object_8.tscn")
var obstacle_9_scene = preload("res://falling_object_9.tscn")
var obstacle_10_scene = preload("res://falling_object_10.tscn")
var obstacle_11_scene = preload("res://falling_object_11.tscn")
var obstacle_12_scene = preload("res://falling_object_12.tscn")
var obstacle_13_scene = preload("res://falling_object_13.tscn")
var obstacle_14_scene = preload("res://falling_object_14.tscn")
var obstacle_15_scene = preload("res://falling_object_15.tscn")
var obstacle_16_scene = preload("res://danger_falling_object_1.tscn")
var obstacle_17_scene = preload("res://danger_falling_object_2.tscn")
var obstacle_18_scene = preload("res://danger_falling_object_3.tscn")
var obstacle_19_scene = preload("res://danger_falling_object_4.tscn")
var obstacle_20_scene = preload("res://danger_falling_object_5.tscn")
var obstacle_21_scene = preload("res://danger_falling_object_6.tscn")
var obstacle_22_scene = preload("res://danger_falling_object_7.tscn")
var obstacle_23_scene = preload("res://danger_falling_object_8.tscn")


var timer_interval = randf_range(1, 1.5)  

func _ready() -> void:
	var timer = $Timer
	$"/root/GameManager/GUI".show()

	if timer:
		timer.start(timer_interval)
	else:
		print("Timer not found!")

func _on_timer_timeout() -> void:
	spawn_random_obstacle()

func spawn_random_obstacle() -> void:
	var screen_size = get_viewport_rect().size
	var position = Vector2(randf_range(0, screen_size.x), -600)
	var obstacle_scene
	var random_choice = randi() % 23

	if random_choice == 0:
		obstacle_scene = obstacle_1_scene
	elif random_choice == 1:
		obstacle_scene = obstacle_2_scene
	elif random_choice == 2:
		obstacle_scene = obstacle_3_scene
	elif random_choice == 3:
		obstacle_scene = obstacle_4_scene
	elif random_choice == 4:
		obstacle_scene = obstacle_5_scene
	elif random_choice == 5:
		obstacle_scene = obstacle_6_scene
	elif random_choice == 6:
		obstacle_scene = obstacle_7_scene
	elif random_choice == 7:
		obstacle_scene = obstacle_8_scene
	elif random_choice == 8:
		obstacle_scene = obstacle_9_scene
	elif random_choice == 9:
		obstacle_scene = obstacle_10_scene
	elif random_choice == 10:
		obstacle_scene = obstacle_11_scene
	elif random_choice == 11:
		obstacle_scene = obstacle_12_scene
	elif random_choice == 12:
		obstacle_scene = obstacle_13_scene
	elif random_choice == 13:
		obstacle_scene = obstacle_14_scene
	elif random_choice == 14:
		obstacle_scene = obstacle_15_scene
	elif random_choice == 15:
		obstacle_scene = obstacle_16_scene
	elif random_choice == 16:
		obstacle_scene = obstacle_17_scene
	elif random_choice == 17:
		obstacle_scene = obstacle_18_scene
	elif random_choice == 18:
		obstacle_scene = obstacle_19_scene
	elif random_choice == 19:
		obstacle_scene = obstacle_20_scene
	elif random_choice == 20:
		obstacle_scene = obstacle_21_scene
	elif random_choice == 21:
		obstacle_scene = obstacle_22_scene
	else:
		obstacle_scene = obstacle_23_scene

	var obstacle = obstacle_scene.instantiate()  
	obstacle.position = position
	
	add_child(obstacle)

	$Timer.start(randf_range(1, 1.5))
