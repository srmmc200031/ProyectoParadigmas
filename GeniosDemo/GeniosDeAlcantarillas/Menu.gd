#Se llama la clase default de control
extends Control
#Se codifican los efectos de la pantalla de titulo
func _ready():
	transition()

func transition():
	$AnimationPlayer.play("fade")

func parra():
	$AnimationPlayer.play("Parrallax")

func transgame():
	$AnimationPlayer.play("fadeblack")

func transexit():
	$AnimationPlayer.play("fadeblackexit")

func creditosabierto():
	$AnimationPlayer.play("FadeCreditos")
	
#Se codea la transisión al pulsar el boton "Start"
func _on_TextureButton2_pressed(): #Start
	$click.play()
	transgame()
#Se codea la salida del sistema al pulsar "Quit"
func _on_TextureButton3_pressed(): #Quit
	$click.play()
	transexit()
	pass # Replace with function body.

#Se codifica el cambio de escena al empezar el juego, yendo al nivel
func _on_AnimationPlayer_animation_finished(anim_name):
	if anim_name == "fadeblack":
		get_tree().change_scene("res://MainScene.tscn")
	elif anim_name == "fadeblackexit":
		get_tree().quit()
	elif anim_name == "fade":
		parra()
	elif anim_name == "FadeCreditos":
		parra()
	pass # Replace with function body.

#Se codifican los sonidos de los cuadros de opciones
func _on_TextureButton2_mouse_entered():
	$cursor.play()
	pass # Replace with function body.

func _on_TextureButton3_mouse_entered():
	$cursor.play()
	pass # Replace with function body.
