particle glow ^ ^ ^3
particle glow ^ ^ ^-3
scoreboard players remove @s temp_rotate_limit_2 1
execute if score @s temp_rotate_limit_2 matches 1.. rotated ~ ~-9 run function core:particle/death_escape/sphere_extension