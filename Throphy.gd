extends Area2D

signal throphy_collected

func _on_body_entered(body):
	if body.name=="Player":
		Global.throphy_collected+=1
		queue_free()
