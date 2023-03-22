extends KinematicBody2D




func _ready():
	$AnimationPlayer.play("idle")



func _on_Area2D_body_entered(body):
	#Confirmar condição para acabar a fase
	if body.name == "player" and Global.quadros == 5:
		get_tree().change_scene("res://Fim.tscn")
