extends Node3D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$Building/StaticCollision/CollisionShape3D6.position = Vector3(-6, 1.5, 11.8)
	$Building/StaticCollision.rotation_degrees = Vector3(0, 0, 0)
	$TextPlayer/Text.text = "Welcome to my first 3D Game"
	$TextPlayer.play("textplay")
	await $TextPlayer.animation_finished
	$TextPlayer/Textbox.visible = false
	$TextPlayer/Name.visible = false
	$TextPlayer/Text.visible = false
	$MainScene.play("door_open")
	await $MainScene.animation_finished
