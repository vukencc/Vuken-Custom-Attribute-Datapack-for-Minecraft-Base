summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,Small:1b,Motion:[0.0,0.4,0.0],Tags:["delay.leap_center.out.carrier","timing_limited","timing_limited_10"]}
execute at @s as @n[type=armor_stand,tag=delay.leap_center.out.carrier] store result score @s entity_x_det run data get entity @s Pos[0] 100
execute at @s as @n[type=armor_stand,tag=delay.leap_center.out.carrier] store result score @s entity_z_det run data get entity @s Pos[2] 100
execute at @s as @n[type=armor_stand,tag=delay.leap_center.out.carrier] store result score @s entity_x run data get entity @n[tag=delay.leap_center.center] Pos[0] 100
execute at @s as @n[type=armor_stand,tag=delay.leap_center.out.carrier] store result score @s entity_z run data get entity @n[tag=delay.leap_center.center] Pos[2] 100
execute at @s as @n[type=armor_stand,tag=delay.leap_center.out.carrier] store result entity @s Motion[0] double 0.006 run scoreboard players operation @s entity_x_det -= @s entity_x
execute at @s as @n[type=armor_stand,tag=delay.leap_center.out.carrier] store result entity @s Motion[2] double 0.006 run scoreboard players operation @s entity_z_det -= @s entity_z
ride @s mount @n[tag=delay.leap_center.out.carrier]
tag @n[tag=delay.leap_center.out.carrier] remove delay.leap_center.center