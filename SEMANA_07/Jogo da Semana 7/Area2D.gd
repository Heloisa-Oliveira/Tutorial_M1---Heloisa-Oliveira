extends Area2D





func _on_praia_body_entered(body):
	#Coletar o quadro e atualizar status da quantidade de quadros
	if body.name == "player":
		Global.quadros += 1
		queue_free()
