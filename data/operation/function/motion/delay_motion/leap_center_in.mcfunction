execute at @s as @s store result score @s entity_x_det run data get entity @s Pos[0] 100
execute at @s as @s store result score @s entity_z_det run data get entity @s Pos[2] 100
execute at @s as @s store result score @s entity_x run data get entity @n[tag=delay.leap_center.center] Pos[0] 100
execute at @s as @s store result score @s entity_z run data get entity @n[tag=delay.leap_center.center] Pos[2] 100
execute at @s as @s store result entity @s Motion[0] double -0.006 run scoreboard players operation @s entity_x_det -= @s entity_x
execute at @s as @s store result entity @s Motion[2] double -0.006 run scoreboard players operation @s entity_z_det -= @s entity_z