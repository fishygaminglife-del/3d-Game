extends Node3D


var cur_torch = 0
var cur_code = ""

func _ready() -> void:
	$StaticBody3D/OmniLight3D2.visible = false
	$StaticBody3D2/OmniLight3D2.visible = false
	$StaticBody3D3/OmniLight3D2.visible = false
	$StaticBody3D4/OmniLight3D2.visible = false
	$TrigerT1/Torch1.visible = false
	$TrigerT2/Torch2.visible = false
	$TrigerT3/Torch3.visible = false
	$TrigerT4/Torch4.visible = false
func _input(event):
	if event.is_action_pressed("interact") and Global.can_torch == true:
		if cur_torch == 1:
			$StaticBody3D/OmniLight3D2.visible = true
		elif cur_torch == 2:
			$StaticBody3D2/OmniLight3D2.visible = true
		elif cur_torch == 3:
			$StaticBody3D3/OmniLight3D2.visible = true
		elif cur_torch == 4:
			$StaticBody3D4/OmniLight3D2.visible = true
		
func _process(delta: float) -> void:
	pass


func _on_triger_t_1_body_entered(body: Node3D) -> void:
	cur_torch = 1
	$TrigerT1/Torch1.visible = true

func _on_triger_t_1_body_exited(body: Node3D) -> void:
	$TrigerT1/Torch1.visible = false
	cur_torch = 0

func _on_triger_t_2_body_entered(body: Node3D) -> void:
	cur_torch = 2
	$TrigerT2/Torch2.visible = true

func _on_triger_t_2_body_exited(body: Node3D) -> void:
	cur_torch = 0
	$TrigerT2/Torch2.visible = false
func _on_triger_t_3_body_entered(body: Node3D) -> void:
	cur_torch = 3
	$TrigerT3/Torch3.visible = true

func _on_triger_t_3_body_exited(body: Node3D) -> void:
	cur_torch = 0
	$TrigerT3/Torch3.visible = false

func _on_triger_t_4_body_entered(body: Node3D) -> void:
	cur_torch = 4
	$TrigerT4/Torch4.visible = true


func _on_triger_t_4_body_exited(body: Node3D) -> void:
	cur_torch = 0
	$TrigerT4/Torch4.visible = false
