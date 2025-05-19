
extends Control  

func _on_start_pressed():
	print("Start button clicked")
	
	$Fade.visible = true
	$Fade.color.a = 0.0  # start transparent
	
	var tween = create_tween()
	tween.tween_property($Fade, "color:a", 1.0, 1.5)  # fade to full black
	await tween.finished
	
	print("Switching scene")
	get_tree().change_scene_to_file("res://scenes/intro_scene.tscn")
