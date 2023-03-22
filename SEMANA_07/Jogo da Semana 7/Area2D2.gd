extends Area2D





func _on_raio_body_entered(body):
	#Coletar quadro e atualizar status da quantidade de quadros coletados
	if body.name == "player":
		Global.quadros += 1
		queue_free()
