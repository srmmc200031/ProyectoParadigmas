extends KinematicBody2D

var direcc:int=1
var up=Vector2(0,-1)
var speed:int=300
var jumpforce:int=505
var gravity
var jump_duration = 1.53
const MAX_JUMP_HEIGHT = -1000
var vel:Vector2=Vector2()
var doublejump: int=0
var jumps_left : int=2
var knockback = 2000#Number was arbitrary
var tiempo:int=0
var Tmax:int=1

func _ready():
	gravity=(-2*MAX_JUMP_HEIGHT)/jump_duration

func _physics_process(delta):
	if (is_on_floor()==true && speed!=300) || speed==300:
		if Input.is_action_pressed("move_left"):
			vel.x=-speed
			direcc=direcc*-1
			if speed==300:
				tiempo=+delta
				if $Walk.playing==false && is_on_floor():
					$Walk.play()
				$Sprite.play("Walk")
			$Sprite.flip_h=true

		elif Input.is_action_pressed("move_right"):
			vel.x=speed
			direcc=direcc*-1
			if speed==300:
				if $Walk.playing==false && is_on_floor():
					$Walk.play()
				$Sprite.play("Walk")
			$Sprite.flip_h=false

		else:
			vel.x=0
			$Sprite.play("Idle")
		if not is_on_floor():
			$Sprite.play("Jump")

#	vel=(direcc * speed * (speed+150)) + knockback
	vel=move_and_slide(vel,Vector2.UP)
	vel.y+=gravity*delta

	if is_on_floor():
		jumps_left=1
	
	if Input.is_action_just_pressed("jump") and jumps_left>0:
		$Jump.play()
		$Sprite.play("Jump")
		if vel.y>0:
			vel.y=0
		vel.y =-jumpforce
		jumps_left -= 1
	if is_on_floor() and doublejump!=0:
		doublejump=0

func _on_HurtBox_area_entered(area):
	if "enemy" in area.name:
		if self.body.direction == -1.0:
			vel.x -= speed*knockback
		elif self.body.direction == 1.0:
			vel.x += speed*knockback
	#print ("what")
