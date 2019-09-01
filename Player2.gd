extends KinematicBody2D

#VAR_
onready var vector = get_parent().get_node("VarAndConst").vector
onready var speed = get_parent().get_node("VarAndConst").speed
onready var gravity = get_parent().get_node("VarAndConst").gravity
onready var jump_speed = get_parent().get_node("VarAndConst").jump_speed
onready var power = get_parent().get_node("VarAndConst").power
onready var max_speed = get_parent().get_node("VarAndConst").max_speed

#POWER_VAR
onready var power_speed = get_parent().get_node("VarAndConst").power_speed
onready var power_max_speed = get_parent().get_node("VarAndConst").power_max_speed
onready var power_jump_speed = get_parent().get_node("VarAndConst").power_jump_speed
onready var power_gravity = get_parent().get_node("VarAndConst").power_gravity
 
#VAR_A

onready var speed_a = get_parent().get_node("VarAndConst").speed_a
onready var max_speed_a = get_parent().get_node("VarAndConst").max_speed_a
onready var jump_speed_a = get_parent().get_node("VarAndConst").jump_speed_a
onready var gravity_a = get_parent().get_node("VarAndConst").gravity_a

#CONST_VECTOR

const FLOOR = Vector2(0, -1)

func getinput():
	
	if Input.is_action_pressed("left") or Input.is_action_pressed("right") or Input.is_action_pressed("up") and is_on_floor():
		power += 20
		print(power);
	
	if power >= 12000 and power <= 27500:
		speed = power_speed
		max_speed = power_max_speed
		jump_speed = power_jump_speed
		gravity = power_gravity
	elif power >= 27500:
		power = 0
		speed = speed_a
		max_speed = max_speed_a
		jump_speed = jump_speed_a
		gravity = gravity_a
		
	if Input.is_action_pressed("left"):
		vector.x = max(vector.x-speed, -max_speed)
		$Sprite.flip_h = true;
	elif Input.is_action_pressed("right"):
		vector.x = min(vector.x+speed, max_speed)
		$Sprite.flip_h = false;
	else:
		vector.x = 0
		vector.x = min(vector.x+speed, 0)
	if is_on_floor() and Input.is_action_just_pressed("up"):
		vector.y = jump_speed

func _physics_process(delta):
	
	getinput()
	
	vector = move_and_slide(vector, FLOOR)
	
	vector.y += gravity