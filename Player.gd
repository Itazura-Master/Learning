extends RigidBody2D
@onready var collision
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_pressed("ui_right"):
		collision = move_and_collide(Vector2(5,0))
	if Input.is_action_pressed("ui_up"):
		collision = move_and_collide(Vector2(0,-5))
	if Input.is_action_pressed("ui_left"):
		collision = move_and_collide(Vector2(-5,0))
	if Input.is_action_pressed("ui_down"):
		collision = move_and_collide(Vector2(0,5))
	pass
