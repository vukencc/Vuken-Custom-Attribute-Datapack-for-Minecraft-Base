execute as @a if score @s gamemode.scb matches 1.. run scoreboard players remove @s gamemode.scb 1
execute as @a[gamemode=survival] if score @s gamemode.scb matches 3.. run gamemode adventure @s
execute as @a[gamemode=adventure] if score @s gamemode.scb matches 1..2 run gamemode survival @s

scoreboard players add @e[tag=enemy_skill] enemy_skill 1
execute as @a store result score @s entity_x run data get entity @s Pos[0]
execute as @a store result score @s entity_y run data get entity @s Pos[1]
execute as @a store result score @s entity_z run data get entity @s Pos[2]

#area 1 loc : -89 199 -374 123 243 199
execute if entity @p[scores={entity_x=-89..123,entity_z=-374..199}] run function center_calculation:enemy_skill/area_1/sum
#-528 269 167 28 269 674
execute if entity @p[scores={entity_x=-528..28,entity_z=167..674}] run function center_calculation:enemy_skill/area_2/sum
#-678 180 337 -369 180 519
execute if entity @p[scores={entity_x=-678..-369,entity_z=337..519}] run function center_calculation:enemy_skill/area_3/sum
#-719 269 206 -531 269 402
execute if entity @p[scores={entity_x=-719..-531,entity_z=206..402}] run function center_calculation:enemy_skill/area_4/sum
execute if entity @p[scores={entity_x=-719..-531,entity_z=206..402}] run function center_calculation:enemy_skill/area_3/sum
#-641 269 515 -390 269 886
execute if entity @p[scores={entity_x=-641..-390,entity_z=515..886}] run function center_calculation:enemy_skill/area_5/sum
#-1121 269 324 -723 269 701
execute if entity @p[scores={entity_x=-1121..-723,entity_z=324..701}] run function center_calculation:enemy_skill/area_6/sum
#void_2
execute in map_only:void_2 positioned 0 0 0 if entity @p[distance=..1000000] run function center_calculation:enemy_skill/area_7/sum
#-1332 269 402 -983 269 1187
execute if entity @p[scores={entity_x=-1332..-983,entity_z=402..1187}] run function center_calculation:enemy_skill/area_8/sum
#-1197 27 949 -1040 48 1126
execute if entity @p[scores={entity_x=-1197..-1040,entity_z=949..1126}] run function center_calculation:enemy_skill/area_9/sum
#-162 87 578 -125 88 628 for boss 1
execute if entity @p[scores={entity_x=-162..-125,entity_z=578..628},gamemode=survival] run setblock -149 122 582 minecraft:redstone_block
execute if score @p in_boss matches 1 run function center_calculation:enemy_skill/boss_1/sum
#-993 65 1009 -914 65 1087
execute if entity @p[scores={entity_x=-993..-914,entity_z=1009..1087},gamemode=survival] run setblock -962 171 1041 minecraft:redstone_block
execute if score @p in_boss matches 4 run function center_calculation:enemy_skill/boss_4/sum
execute positioned -994.47 -58.00 1048.53 as @a[distance=..7] at @s if block ~ ~-1 ~ minecraft:crying_obsidian run tp @s -1127.5 136.5 1046.5
#-636 152 294 -590 205 327
execute if entity @p[scores={entity_x=-636..-590,entity_z=294..327,entity_y=152..205},gamemode=survival] run setblock -615 270 305 minecraft:redstone_block
execute if score @p in_boss matches 2 run function center_calculation:enemy_skill/boss_2/sum