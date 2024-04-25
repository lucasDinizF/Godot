extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	$AudioDesafio01.play()
	await get_tree().create_timer(2.5).timeout
	get_tree().change_scene_to_file("res://Cenas/desafio_2.tscn")
	$AudioDesafio01.stop()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
