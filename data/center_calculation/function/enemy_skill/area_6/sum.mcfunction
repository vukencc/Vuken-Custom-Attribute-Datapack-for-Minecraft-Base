execute as @e[tag=a6_e1,scores={enemy_skill=1..}] at @s run function center_calculation:enemy_skill/area_6/lance
execute as @e[tag=a6_e1_lance] at @s run function center_calculation:enemy_skill/area_6/lance_move

execute as @a[nbt={HurtTime:10s}] at @s run function center_calculation:enemy_skill/area_6/freeze

execute as @e[type=bee,tag=elite_below] at @s unless entity @n[tag=Elite,distance=..2] run kill @s
