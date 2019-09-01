extends Area2D

func _on_CabecaToshino_body_entered(body):
	get_tree().change_scene("res://StartMenu.tscn")