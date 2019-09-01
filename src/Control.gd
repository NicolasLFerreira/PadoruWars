extends Control

func _on_InGameQuit_pressed():
	get_tree().quit()

func _on_MainMenu_pressed():
	get_tree().change_scene("res://StartMenu.tscn")

func _on_back_to_menu_2_pressed():
	pass # Replace with function body.


func _on_replay_2_pressed():
	get_tree().change_scene("res://Jogo.tscn")


func _on_quit_from_final_2_pressed():
	get_tree().quit()
