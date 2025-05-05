execute as @e[tag=a6_e1,scores={enemy_skill=1..}] at @s run function center_calculation:enemy_skill/area_6/lance
execute as @e[tag=a6_e1_lance] at @s run function center_calculation:enemy_skill/area_6/lance_move

execute as @a[nbt={HurtTime:10s}] at @s run function center_calculation:enemy_skill/area_6/freeze

execute as @e[type=bee,tag=elite_below] at @s unless entity @n[tag=Elite,distance=..2] run kill @s

execute unless entity @p[tag=a6_c4] if entity @p[tag=a6_c2,tag=a6_c1,tag=a6_c3] run function center_calculation:enemy_skill/area_6/gate_start
execute positioned -966.52 154.00 411.47 if entity @p[tag=a6_c4] run function center_calculation:enemy_skill/area_6/gate_use