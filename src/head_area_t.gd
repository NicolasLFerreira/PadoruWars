extends Area2D

func _on_head_area_t_area_entered(area):
	get_tree().change_scene("res://YouWin2.tscn")
