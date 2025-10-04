particle reverse_portal ^ ^ ^1.35
particle reverse_portal ^ ^ ^-1.35
scoreboard players remove @s temp_rotate_limit_2 1
execute if score @s temp_rotate_limit_2 matches 1.. rotated ~ ~-9 run function core:particle/skill/cm/sphere_extension