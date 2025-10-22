
scoreboard objectives add temp_rotate_limit_1 dummy
scoreboard players set @s temp_rotate_limit_1 40
scoreboard objectives add temp_rotate_limit_2 dummy
execute rotated 0 180 if score @s temp_rotate_limit_1 matches 1.. run function core:particle/skill/cm/sphere_apply
scoreboard objectives remove temp_rotate_limit_1
scoreboard objectives remove temp_rotate_limit_2

