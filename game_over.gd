extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	$AudioDerrota.play()
	await get_tree().create_timer(8.0).timeout
	get_tree().change_scene_to_file("res://Cenas/menu.tscn")
	$AudioDerrota.stop()
	Global.controle1 = 0
	Global.corpo1 = "platao"
	Global.controle2 = 0
	Global.corpo2 = "platao"
	Global.controle3 = 0
	Global.corpo3 = "platao"

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
