extends Node

const TRANS=Tween.TRANS_SINE
const EASE=Tween.EASE_IN_OUT
var amplitude=16
var duration=3000
var frequency=15

onready var camera=get_parent()

func start(duration=3000, frequency=15, amplitude=16):
	self.amplitude=amplitude
	
	$duration.wait_time=duration
	$frequency.wait_time=1/float(frequency)
	$duration.start()
	$frequency.start()
	
func _new_shake():
	$duration.wait_time=duration
	$frequency.wait_time=1/float(frequency)
	$duration.start()
	$frequency.start()
	var rand=Vector2()
	rand.x=rand_range(-amplitude, amplitude)
	rand.y=rand_range(-amplitude, amplitude)
	
	$shaketween.interpolate_property(camera, "offset", camera.offset, rand, $frequency.wait_time, TRANS, EASE)
	$shaketween.start()

func _reset():
	
	$shaketween.interpolate_property(camera, "offset", camera.offset, Vector2(), $frequency.wait_time, TRANS, EASE)
	$shaketween.start()

func _on_frequency_timeout():
	_new_shake()


func _on_duration_timeout():
	_reset()
