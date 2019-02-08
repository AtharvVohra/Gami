extends Area2D

func _ready():
    # Called when the node is added to the scene for the first time.
    # Initialization here
    pass

#func _process(delta):
#    # Called every frame. Delta is time since last frame.
#    # Update game logic here.
#    pass

func _on_Area2D_body_entered(body):
    if body.is_in_group("player"):
        print("player here")
        Global.PLAYER_IN_CLIMING_AREA = true

func _on_Area2D_body_exited(body):
    if body.is_in_group("player"):
        print("player gone")
        Global.PLAYER_IN_CLIMING_AREA = false