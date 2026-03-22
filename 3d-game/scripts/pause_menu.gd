extends CanvasLayer



func _ready() -> void:
	$".".visible = false
	
func _input(event):
	if event.is_action_pressed("ui_cancel"):
		Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
		$".".visible = true
		get_tree().paused = true



func _on_resume_pressed() -> void:
	get_tree().paused = false
	$".".visible = false
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)

func _on_quit_pressed() -> void:
	pass # Replace with function body.
