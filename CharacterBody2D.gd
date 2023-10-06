extends CharacterBody2D

const GRAVITY=10
const JUMP_POWER=-400
const SPEED=100

var screen_size

func _ready():
	screen_size=get_viewport_rect().size
func _physics_process(delta):
	velocity.y+=GRAVITY
	if Input.is_action_just_pressed("ui_accept")&&is_on_floor():
		velocity.y=JUMP_POWER
	elif Input.is_action_just_pressed("right",):
		velocity.x=SPEED
	elif Input.is_action_just_pressed("left"):
		velocity.x=-SPEED
	else:
		velocity.x=lerpf(velocity.x,0,0.02)
	move_and_slide()
	position.x=clamp(position.x,15,screen_size.x)
	position.y=clamp(position.y,15,screen_size.y)
	












