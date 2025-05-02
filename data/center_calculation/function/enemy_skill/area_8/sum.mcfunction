effect give @e[tag=a8_e1_to_prime] absorption infinite 8 true
tag @e remove a8_e1_to_prime
execute as @e[tag=a8_e1,tag=!enemy_skill] if entity @s[nbt={AbsorptionAmount:0.0f}] at @s run function center_calculation:enemy_skill/area_8/to_explode
execute as @e[tag=a8_e1,tag=enemy_skill,scores={enemy_skill=60..}] at @s run function center_calculation:enemy_skill/area_8/explode

execute as @e[tag=a8_e2,nbt={OnGround:1b}] at @s run fill ~ ~ ~3 ~ ~ ~-3 fire replace air
execute as @e[tag=a8_e2,nbt={OnGround:1b}] at @s run fill ~-3 ~ ~ ~3 ~ ~ fire replace air
execute as @e[tag=a8_e2,nbt={OnGround:1b}] at @s run particle campfire_cosy_smoke ~ ~1 ~ 1.3 1.3 1.3 0.15 15 normal
execute as @e[tag=a8_e2,nbt={OnGround:1b}] at @s run kill @s

execute as @a[nbt={HurtTime:10s}] at @s run function center_calculation:enemy_skill/area_8/fire
execute as @e[type=bee,tag=elite_below] at @s unless entity @n[tag=Elite,distance=..2] run kill @s