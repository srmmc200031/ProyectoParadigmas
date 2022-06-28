#Se llama la clase default de control
extends Control
#Se crea un generador de numeros aleatorios
var rng=RandomNumberGenerator.new()
#Se codifican los efectos de la pantalla de titulo
#func _process(delta):

func _ready():
	#Se inicializa la semilla del generador
	rng.randomize()
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
	
#Se codea la transisión al pulsar los botones de la dificultad
#dependiendo de que opcion se escoja, el generador de numeros aleatorios
#coloca una pregunta al azar de las 3 de cada opción

func _on_TextureButton1_pressed():
	$click.play()
	Globals.n=rng.randi_range(1,3)
	transgame()

func _on_TextureButton2_pressed(): 
	$click.play()
	Globals.n=rng.randi_range(4,6)
	transgame()

func _on_TextureButton3_pressed(): 
	$click.play()
	Globals.n=rng.randi_range(7,9)
	transgame()

#Se codea la salida del sistema al pulsar "Quit"
func _on_TextureButton4_pressed(): #Quit
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

func _on_TextureButton1_mouse_entered():
	$cursor.play()
	pass # Replace with function body.

func _on_TextureButton2_mouse_entered():
	$cursor.play()
	pass # Replace with function body.

func _on_TextureButton3_mouse_entered():
	$cursor.play()
	pass # Replace with function body.


func _on_TextureButton4_mouse_entered():
	$cursor.play()
	pass # Replace with function body.
