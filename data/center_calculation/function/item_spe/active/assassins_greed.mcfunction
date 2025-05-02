scoreboard players set @s insMoveForward.distance 8
execute as @s at @s run function operation:movement/instant_movement/instant_move_forward
effect give @n[type=!#bypass,distance=..4] weakness 2 2 true
execute at @s run particle smoke ~ ~1 ~ 2.3 1.6 2.3 0.1 45 normal
playsound entity.wither.shoot hostile @s ~ ~ ~
scoreboard players set @s shared_active_cd 240
effect give @s strength 4 1 true
effect give @s haste 4 1 true