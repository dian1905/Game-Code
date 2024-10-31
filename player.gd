extends Area2D

@onready var animation_player = $AnimationPlayer
@onready var sprite = $Sprite2D

@export var speed: int = 330

var velocity = Vector2()
var screen_size

func _ready():
	screen_size = get_viewport_rect().size
	
func _process(_delta):
	velocity = Vector2.ZERO
	if Input.is_action_pressed("ui_right"):
		velocity.x += 1
	if Input.is_action_pressed("ui_left"):
		velocity.x -= 1
		
	if velocity.length() > 0:
		velocity = velocity * speed
		
	position += velocity * _delta
	position.x = clamp(position.x, 0, screen_size.x)
	position.y = clamp(position.y, 0, screen_size.y)
	
	if is_instance_valid(animation_player):
		if velocity.x != 0:  
			if velocity.x > 0:
				animation_player.play("walk right")  
				sprite.flip_h = false  
			else:
				animation_player.play("walk right")  
				sprite.flip_h = true  
		else:
			animation_player.play("idle")
	else:
		print("AnimationPlayer not found!")
		


	
