extends Node2D

#VAR_

var vector = Vector2()
var speed = 30
var gravity = 20
var max_gravity = 30
var jump_speed = -750
var power = 0
var max_speed = 600

#POWER_CONST

var power_speed = 45
var power_max_speed = 900
var power_jump_speed = -900
var power_gravity = 25
 
#CONST_A

var speed_a = 35
var max_speed_a = 625
var jump_speed_a = -775
var gravity_a = 17
var max_gravity_a = 27

#CONST_VECTOR

const FLOOR = Vector2(0, -1)

# onready var varname = get_parent().get_node("NodeName").variableyouwant

#func _ready():
#	print(varname)

#prints varname

#onready var= get_parent().get_node("").