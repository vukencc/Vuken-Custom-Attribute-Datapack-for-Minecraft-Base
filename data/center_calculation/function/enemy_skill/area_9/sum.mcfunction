execute as @e[tag=a9_e1,scores={enemy_skill=60}] at @s run function center_calculation:enemy_skill/area_9/laser
execute as @e[tag=a9_e1,scores={enemy_skill=180..}] at @s run scoreboard players set @s enemy_skill 0

execute as @e[tag=Laser_target] at @s run particle soul_fire_flame ~ ~1 ~ 1 1 1 0.05 3 normal
execute as @e[tag=Laser_target,scores={enemy_skill=60..}] at @s run function center_calculation:enemy_skill/area_9/laser_explode

scoreboard players add @e[type=skeleton,tag=a9_e2] enemy_skill 1
execute as @e[type=skeleton,tag=a9_e2,scores={enemy_skill=65..165}] run effect give @s glowing 1 0 true
execute as @e[type=skeleton,tag=a9_e2,scores={enemy_skill=65}] run team join red @s
team join red @e[type=skeleton,tag=a9_e2,scores={enemy_skill=125}]
team leave @e[type=skeleton,tag=a9_e2,scores={enemy_skill=65}]
execute as @e[tag=a9_e2,scores={enemy_skill=125..185}] at @s run particle sweep_attack ~ ~1 ~ 1.8 0.1 1.8 0.1 3 normal
execute as @e[tag=a9_e2,scores={enemy_skill=125..185}] at @s if score @p repeat_10_timing matches 5 run playsound entity.player.attack.sweep hostile @a ~ ~ ~
execute as @e[tag=a9_e2,scores={enemy_skill=125..185}] at @s as @a[distance=..3] run damage @s 18 magic by @n[tag=a9_e2]
scoreboard players set @e[type=skeleton,tag=a9_e2,scores={enemy_skill=240..}] enemy_skill 0

execute as @e[tag=a9_e3] at @s run kill @e[type=small_fireball,distance=..3]
execute as @e[tag=a9_e3,scores={enemy_skill=60}] at @s run function center_calculation:enemy_skill/area_9/locate
execute as @e[tag=a9_e3,scores={enemy_skill=65}] at @s run function center_calculation:enemy_skill/area_9/locate
execute as @e[tag=a9_e3,scores={enemy_skill=70}] at @s run function center_calculation:enemy_skill/area_9/locate
execute as @e[tag=a9_e3,scores={enemy_skill=75}] at @s run function center_calculation:enemy_skill/area_9/locate
execute as @e[tag=a9_e3,scores={enemy_skill=80}] at @s run function center_calculation:enemy_skill/area_9/locate
execute as @e[tag=a9_e3,scores={enemy_skill=85}] at @s run function center_calculation:enemy_skill/area_9/locate
execute as @e[tag=a9_e3,scores={enemy_skill=90}] at @s run function center_calculation:enemy_skill/area_9/locate
execute as @e[tag=a9_e3,scores={enemy_skill=95}] at @s run function center_calculation:enemy_skill/area_9/locate
execute as @e[tag=a9_e3,scores={enemy_skill=100}] at @s run function center_calculation:enemy_skill/area_9/locate_end
execute as @e[tag=a9_e3,scores={enemy_skill=220..}] at @s run scoreboard players set @s enemy_skill 0

execute as @a[nbt={HurtTime:10s,active_effects:[{id:"minecraft:glowing"}]}] at @s run function center_calculation:enemy_skill/area_9/levitation

execute positioned -1129.5 137.00 1046.5 run particle portal ~ ~1 ~ 0 1 0 0 3 normal
execute positioned -1129.5 137.00 1046.5 as @a[distance=..2,scores={in_boss=0}] at @s if block ~ ~-1 ~ crying_obsidian run tp @s -954.5 45.00 1045.5

execute as @e[tag=b4_out] at @s run tp @a[distance=..8] -982.52 -58.00 1048.51 facing -985.52 -59.00 1048.51

execute positioned -994.47 -58.00 1048.53 as @a[distance=..7] at @s if block ~ ~-1 ~ minecraft:crying_obsidian run tp @s -1127.5 136.5 1046.5