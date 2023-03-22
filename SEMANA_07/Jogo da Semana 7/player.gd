extends KinematicBody2D

var movement = Vector2.ZERO;
var speed = 300
var gravity = 15

func _ready():
	$AnimationPlayer.play("idle")

func _process(delta):
	
	#Gravidade
	movement.y += gravity
	
	#Checa se está no chão ou não
	if is_on_floor():
		
		if Input.is_action_pressed("ui_right") or Input.is_action_pressed("ui_left"):
			$AnimationPlayer.play("run")
	
		if movement.x == 0:
			$AnimationPlayer.play("idle")
			
		if Input.is_action_pressed("ui_up"):
			movement.y = -530
		
	else:
		$AnimationPlayer.play("jump")
		
	
	
	#Movimentação do player
	if Input.is_action_pressed("ui_right"):
		movement.x = speed
		$Sprite.flip_h = false
	
	elif Input.is_action_pressed("ui_left"):
		movement.x = - speed
		$Sprite.flip_h = true
	
	else:
		movement.x = 0

	movement = move_and_slide(movement, Vector2.UP)
