extends CanvasLayer

signal useMovementVector

var joystickActive = false
var move_vector = Vector2(0,0)

func _input(event):
	if event is InputEventScreenTouch or event is InputEventScreenDrag:
		if $TouchScreenButton.is_pressed():
			move_vector = calc_move_vector(event.position)
			joystickActive = true
	
	if event is InputEventScreenTouch:
		if event.pressed == false:
			joystickActive = false;

func _physics_process(delta):
	if joystickActive == true:
		emit_signal("useMovementVector", move_vector)

func calc_move_vector(eventPosition):
	#var textureCenter = $TouchScreenButton.position + Vector2(148,148)
	return (eventPosition - $TouchScreenButton.position).normalized()
