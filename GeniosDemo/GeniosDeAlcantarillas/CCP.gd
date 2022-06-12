extends Area2D

var velocity=Vector2()
var direction=-1
var dead=false

func _ready():
	pass
	
#func _physics_process(delta):
#	if dead==false:
#		$AnimatedSprite.play("Idle")
#		velocity.y+=20
#	
#		if direction==-1:
#			velocity.x=-50
#		elif direction==-1:
#			velocity.x=50
	
#		move_and_slide(velocity)
	
func _process(_delta):
	if dead==false:
		$Sprite.play("Idle")



func _on_CCP_area_entered(area):
	if area.is_in_group("Hair"):
		dead=true
		$Sprite.play("Destroyed")

func _on_Sprite_animation_finished():
	if $Sprite.animation=="Destroyed":
		queue_free()
