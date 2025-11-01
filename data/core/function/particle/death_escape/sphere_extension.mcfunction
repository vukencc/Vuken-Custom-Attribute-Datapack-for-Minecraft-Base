particle scrape ^ ^ ^3 0 0 0 4 0 force
particle scrape ^ ^ ^-3 0 0 0 4 0 force
scoreboard players remove @s temp_rotate_limit_2 1
execute if score @s temp_rotate_limit_2 matches 1.. rotated ~ ~-18 run function core:particle/death_escape/sphere_extension