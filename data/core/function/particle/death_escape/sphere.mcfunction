
scoreboard objectives add temp_rotate_limit_1 dummy
scoreboard players set @s temp_rotate_limit_1 20
scoreboard objectives add temp_rotate_limit_2 dummy
execute at @s rotated 0 180 if score @s temp_rotate_limit_1 matches 1.. run function core:particle/death_escape/sphere_apply
scoreboard objectives remove temp_rotate_limit_1
scoreboard objectives remove temp_rotate_limit_2

