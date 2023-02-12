extends Node2D


var MyNode = load("res://scenes/entities/bird_.tscn")

func time():
	randomize()
	var gap_timer = Vector2(2, 5)
	var gap = randi() % int(gap_timer[1]-gap_timer[0]) + 1 + gap_timer[0]
	$Timer.start(gap)


func birds(range, scale):
	var obstaculo = MyNode.instantiate()
	obstaculo.position.y = range
	obstaculo.scale = Vector2(scale, scale)
	add_child(obstaculo)
	time()

func scale():
	randomize()
	var obj_scale = [float(2.0), float(5.0)]
	var scale = randi() % int(obj_scale[1]-obj_scale[0]) + 1 + obj_scale[0]
	return scale
	
func random():
	randomize()
	var y_range = Vector2(-200, 600)
	var range = randi() % int(y_range[1]-y_range[0]) + 1 + y_range[0]
	return range

func _ready():
	birds(random(), scale())

func _on_timer_timeout():
	time()
	birds(random(), scale())
