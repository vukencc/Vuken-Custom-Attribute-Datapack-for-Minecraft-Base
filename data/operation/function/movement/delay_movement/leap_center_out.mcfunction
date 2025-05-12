summon zombie ~ ~ ~ {Invulnerable:1b,IsBaby:1b,active_effects:[{id:invisibility,duration:9999999,amplifier:0,show_particles:0b}],attributes:[{base:0.1,id:scale},{base:0,id:max_health},{base:0,id:follow_range}],Motion:[0.0,0.4,0.0],Tags:["delay.leap_center.out.carrier","timing_limited","timing_limited_10"],DeathLootTable:""}
execute at @s as @n[type=zombie,tag=delay.leap_center.out.carrier] store result score @s entity_x_det run data get entity @s Pos[0] 100
execute at @s as @n[type=zombie,tag=delay.leap_center.out.carrier] store result score @s entity_z_det run data get entity @s Pos[2] 100
execute at @s as @n[type=zombie,tag=delay.leap_center.out.carrier] store result score @s entity_x run data get entity @n[tag=delay.leap_center.center] Pos[0] 100
execute at @s as @n[type=zombie,tag=delay.leap_center.out.carrier] store result score @s entity_z run data get entity @n[tag=delay.leap_center.center] Pos[2] 100
execute at @s as @n[type=zombie,tag=delay.leap_center.out.carrier] store result entity @s Motion[0] double 0.005 run scoreboard players operation @s entity_x_det -= @s entity_x
execute at @s as @n[type=zombie,tag=delay.leap_center.out.carrier] store result entity @s Motion[2] double 0.005 run scoreboard players operation @s entity_z_det -= @s entity_z
ride @s mount @n[tag=delay.leap_center.out.carrier]
tag @n[tag=delay.leap_center.out.carrier] remove delay.leap_center.center