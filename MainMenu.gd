extends Control
@onready var tween

# Called when the node enters the scene tree for the first time.
func _ready():

	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_pressed("ui_cancel"):
		get_tree().quit()
	pass


func _on_play_game_pressed():
	get_tree().change_scene_to_file("res://Hub.tscn")
	pass # Replace with function body.


func _on_settings_pressed():
	tween = create_tween()
	tween.tween_property(get_child(3), "position", Vector2(498,120), 1)
	pass # Replace with function body.


func _on_exit_pressed():
	get_tree().quit()
	pass # Replace with function body.


func _on_exit_settings_pressed():
	tween = create_tween()
	tween.tween_property(get_child(3), "position", Vector2(498,663), 3)
	pass # Replace with function body.
