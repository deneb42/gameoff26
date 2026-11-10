extends CharacterBody3D

const SPEED = 100.0
const DIST_TO_MANIF = 5

var manif: Vector3

func init(spawner: Vector3, manif_pos: Vector3):
	manif = manif_pos
	look_at_from_position(spawner, manif, Vector3.UP)

func _physics_process(delta):
	
	if position.distance_to(manif) > DIST_TO_MANIF:
		var vel = position.direction_to(manif)
		velocity = vel * delta * SPEED
		move_and_slide()
