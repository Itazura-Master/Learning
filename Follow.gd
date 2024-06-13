extends Path2D
var speed = 100
@onready var screen1 = get_child(0)
@onready var screen2 = get_child(1)
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	screen1.set_progress(screen1.get_progress() + speed * delta)
	screen2.set_progress(screen2.get_progress() + speed * delta)	
	pass
