extends Sprite

var test:int=1
var flag:int=0
var timer=0
var wait_time=3
var rng=RandomNumberGenerator.new()
var my_random_number:int=0
var x:int=3
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _process(delta):
#	if Input.is_action_just_pressed("test_button"):
#		test=test*-1
#		if test<0:
#			self.scale.x=0
#			self.scale.y=0
#		elif test>0:
#			self.scale.x=1
#			self.scale.y=1
	if Input.is_action_just_pressed("test_button"):
		$Light2D.visible=true
		flag=0
	
#	if (test==1):
#		rng.randomize()
#		var my_random_number=rng.randf_range(1, 3)
#		timer.set_wait_time(my_random_number)
#		timer.connect("timeout",self,"on_timer_timeout1")
#
#		test=test*-1
#
#	if (test!=1):
#		timer.set_wait_time(3)
#		timer.connect("timeout",self,"on_timer_timeout2")
#
#		test=test*-1
#
#func on_timer_timeout1():
#	self.scale.x=1
#	self.scale.y=1
#
#func on_timer_timeout2():
#	self.scale.x=0
#	self.scale.y=0
	if ($Light2D.visible==true):
		if flag==0:
			rng.randomize()
			my_random_number=rng.randf_range(5, 20)
			flag=1
		timer += delta
		wait_time=my_random_number
		if timer > wait_time:
			timer = 0
			$Light2D.visible=false
#		test=test*-1
#	if (test==-1):
#		wait_time=3
#		timer+=delta
#		if timer>wait_time:
#			timer=0
#			$Light2D.visible=true
#		test=test*-1
