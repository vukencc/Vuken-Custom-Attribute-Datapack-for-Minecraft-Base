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
