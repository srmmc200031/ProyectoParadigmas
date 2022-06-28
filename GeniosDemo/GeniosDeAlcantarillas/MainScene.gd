extends Node2D

func _ready():
	Input.set_mouse_mode(Input.MOUSE_MODE_HIDDEN)
	#Se codifican las preguntas y opciones; 1 pregunta de 3 sale al azar
	#dependiendo de la dificultad/opcion que se elija
	match Globals.n:
		1:
			$Triggers/question.text="9+9="
			$Triggers/Block1/number.text="8"
			$Triggers/Block2/number.text="1"
			$Triggers/Block3/number.text="5"
			$Triggers/Block4/number.text="7"
			$Triggers/Block5/number.text="2"
			$Triggers/Block6/number.text="0"
			Globals.answr=18
		2:
			$Triggers/question.text="5+12="
			$Triggers/Block1/number.text="4"
			$Triggers/Block2/number.text="0"
			$Triggers/Block3/number.text="2"
			$Triggers/Block4/number.text="9"
			$Triggers/Block5/number.text="7"
			$Triggers/Block6/number.text="1"
			Globals.answr=17
		3:
			$Triggers/question.text="3+49-15="
			$Triggers/Block1/number.text="0"
			$Triggers/Block2/number.text="4"
			$Triggers/Block3/number.text="5"
			$Triggers/Block4/number.text="2"
			$Triggers/Block5/number.text="3"
			$Triggers/Block6/number.text="7"
			Globals.answr=37
		4:
			$Triggers/question.text="7*9="
			$Triggers/Block1/number.text="3"
			$Triggers/Block2/number.text="1"
			$Triggers/Block3/number.text="9"
			$Triggers/Block4/number.text="7"
			$Triggers/Block5/number.text="2"
			$Triggers/Block6/number.text="6"
			Globals.answr=63
		5:
			$Triggers/question.text="72/6="
			$Triggers/Block1/number.text="4"
			$Triggers/Block2/number.text="0"
			$Triggers/Block3/number.text="2"
			$Triggers/Block4/number.text="9"
			$Triggers/Block5/number.text="7"
			$Triggers/Block6/number.text="1"
			Globals.answr=12
		6:
			$Triggers/question.text="(12*6)/3="
			$Triggers/Block1/number.text="0"
			$Triggers/Block2/number.text="4"
			$Triggers/Block3/number.text="5"
			$Triggers/Block4/number.text="2"
			$Triggers/Block5/number.text="3"
			$Triggers/Block6/number.text="6"
			Globals.answr=24
		7:
			$Triggers/question.text="3x+9=21   X="
			$Triggers/Block1/number.text="8"
			$Triggers/Block2/number.text="1"
			$Triggers/Block3/number.text="5"
			$Triggers/Block4/number.text="7"
			$Triggers/Block5/number.text="2"
			$Triggers/Block6/number.text="4"
			Globals.answr=4
		8:
			$Triggers/question.text="(4X/2)-5=15   X="
			$Triggers/Block1/number.text="4"
			$Triggers/Block2/number.text="0"
			$Triggers/Block3/number.text="2"
			$Triggers/Block4/number.text="9"
			$Triggers/Block5/number.text="7"
			$Triggers/Block6/number.text="1"
			Globals.answr=10
		9:
			$Triggers/question.text="4X+3=21-2X   X="
			$Triggers/Block1/number.text="9"
			$Triggers/Block2/number.text="1"
			$Triggers/Block3/number.text="7"
			$Triggers/Block4/number.text="2"
			$Triggers/Block5/number.text="3"
			$Triggers/Block6/number.text="5"
			Globals.answr=3
