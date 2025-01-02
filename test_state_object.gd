extends CharacterBody2D

@onready var state_chart: StateChart = $StateChart
@onready var state_label: Label = $"../Label"


func _on_mouse_entered() -> void:
	state_chart.send_event("stop")


func _on_mouse_exited() -> void:
	state_chart.send_event("spin")


func _on_idle_state_entered() -> void:
	state_label.text = "Idle"


func _on_spinning_state_entered() -> void:
	state_label.text = "Spinning"


func _on_spinning_state_processing(delta: float) -> void:
	self.rotation += delta * 5
