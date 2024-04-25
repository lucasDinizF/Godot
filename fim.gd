extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	$AudioFinal.play()
	await get_tree().create_timer(15.0).timeout
	get_tree().change_scene_to_file("res://Cenas/menu.tscn")
	$AudioFinal.stop()
	Global.controle = 0
	Global.controle1 = 0
	Global.controle2 = 0
	Global.controle3 = 0
	Global.corpo1 = "platao"
	Global.corpo2 = "platao"
	Global.corpo3 = "platao"
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
