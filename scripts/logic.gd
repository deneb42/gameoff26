extends Node

@export var gaucho: PackedScene
@export var map: Node3D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass


func _on_spawn_timer_timeout() -> void:
	print("spawning")
	var gaucho_instance = gaucho.instantiate()
	
	var spawners = map.get_node("Spawns")
	var manif = map.get_node("Manif")
	
	var random_spawner = randi_range(0, spawners.get_child_count() - 1)
	var spawner = spawners.get_child(random_spawner)
	
	gaucho_instance.init(spawner.position, manif.position)
	add_child(gaucho_instance)
	
