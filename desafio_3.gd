extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	$AudioDesafio3.play()
	await get_tree().create_timer(60.0).timeout
	get_tree().change_scene_to_file("res://Cenas/game_over.tscn")
	$AudioDesafio3.stop()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_area_2d_body_entered(body):
	if (body.name == "platao_desafio"):
		$AudioDesafio3.stop()
		get_tree().change_scene_to_file("res://Cenas/game_over.tscn")
		Global.controle2 = 0
		Global.corpo2 = "platao"
	


func _on_area_2d_3_body_entered(body):
	if (body.name == "platao_desafio"):
		$AudioDesafio3.stop()
		get_tree().change_scene_to_file("res://Cenas/concluir_desafio.tscn")
		
	



func _on_area_2d_2_body_entered(body):
	if (body.name == "platao_desafio"):
		$AudioDesafio3.stop()
		get_tree().change_scene_to_file("res://Cenas/game_over.tscn")
		Global.controle2 = 0
		Global.corpo2 = "platao"
