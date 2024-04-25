extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	$AudioDesafio03.play()
	await get_tree().create_timer(2.5).timeout
	get_tree().change_scene_to_file("res://Cenas/desafio_3.tscn")
	$AudioDesafio03.stop()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
