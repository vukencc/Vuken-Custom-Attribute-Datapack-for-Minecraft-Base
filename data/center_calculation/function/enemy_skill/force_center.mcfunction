scoreboard players add @e[type=!#bypass,tag=enemy_skill] enemy_skill 1
execute as @a store result score @s entity_x run data get entity @s Pos[0]
execute as @a store result score @s entity_y run data get entity @s Pos[1]
execute as @a store result score @s entity_z run data get entity @s Pos[2]
#area 1 loc : -89 199 -374 123 243 199
execute if entity @p[scores={entity_x=-89..123,entity_z=-374..199}] run function center_calculation:enemy_skill/area_1/sum
#-528 269 167 28 269 674
execute if entity @p[scores={entity_x=-528..28,entity_z=167..674}] run function center_calculation:enemy_skill/area_2/sum