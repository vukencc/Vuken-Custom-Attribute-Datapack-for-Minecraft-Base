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
