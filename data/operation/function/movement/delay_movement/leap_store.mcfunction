data merge entity @s {Invulnerable:1b,IsBaby:1b,active_effects:[{id:invisibility,duration:9999999,amplifier:0,show_particles:0b}],attributes:[{base:0.1,id:scale},{base:0,id:max_health},{base:0,id:follow_range}],Motion:[0.0,0.4,0.0],Tags:["delay.leap_center.in.carrier","timing_limited","timing_limited_10"],DeathLootTable:""}
execute store result score @s entity_x_det run data get entity @s Pos[0] 100
execute store result score @s entity_z_det run data get entity @s Pos[2] 100
execute store result score @s entity_x run data get entity @n[tag=delay.leap_center.center] Pos[0] 100
execute store result score @s entity_z run data get entity @n[tag=delay.leap_center.center] Pos[2] 100
execute store result entity @s Motion[0] double -0.005 run scoreboard players operation @s entity_x_det -= @s entity_x
execute store result entity @s Motion[2] double -0.005 run scoreboard players operation @s entity_z_det -= @s entity_z