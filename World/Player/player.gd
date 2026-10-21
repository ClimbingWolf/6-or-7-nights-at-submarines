extends Node3D

@onready var rb: RigidBody3D = $RigidBody3D
@export var speed = 10;

func _process(delta: float) -> void:
	var vec: Vector2 = Input.get_vector("left", "right", "forward", "backward");
	rb.apply_central_force(Vector3(vec.x, 0, vec.y) * speed);
	
