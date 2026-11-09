extends Node3D

const SPAWN_TIMEOUT = 3000000 # (ms)

var ellapsed = 0;

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	if ellapsed > SPAWN_TIMEOUT: 
		ellapsed = 0;
		
		
	pass
