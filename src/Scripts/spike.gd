extends Area2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass

#func _process(delta):
#    # Called every frame. Delta is time since last frame.
#    # Update game logic here.
#    pass
var count = 0
var die = false
func _physics_process(delta):
	if die:
		count+=1
	
	if count >= 30:
		count = 0
		die = false
		Global.respawn_player()
		#get_node("/root/World/Camera/Camera2D").current = false
		#get_node("/root/World/Player/Body/Camera2D").current = true

func _on_Area2D_body_entered(body):
	if body.is_in_group("player"):
		print("yooo player should die now")
		die = true
		get_node("/root/World/Music/sound/scream").play()
		#get_node("/root/World/Camera/Camera2D").current = true
		#get_node("/root/World/Player/Body/Camera2D").current = false
		
