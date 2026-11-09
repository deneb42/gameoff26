extends Node3D

const SPEED = 10.0
const DIST_TO_MANIF = 5

func _process(delta: float) -> void:

	var dest = get_node("%ManifMarker")
	
	if dest != null and position.distance_to(dest.position) > DIST_TO_MANIF: 
		var velocity = position.direction_to(dest.position)
		
		position = position + velocity * delta * SPEED
	#move_and_slide()
