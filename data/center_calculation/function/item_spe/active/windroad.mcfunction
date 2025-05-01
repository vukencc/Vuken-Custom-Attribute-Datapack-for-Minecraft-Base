effect give @s speed 10 0 true
effect give @s jump_boost 10 1 true
scoreboard players set @s shared_active_cd 300
execute at @s run playsound item.elytra.flying hostile @s ~ ~ ~ 1 2 1
particle cloud ~ ~1 ~ 2 2 2 0.1 45 normal
tag @s add ringcenter
execute at @s run tag @e[type=!marker,type=!item,type=!arrow,type=!armor_stand,nbt=!{NoAI:1b},distance=..5,tag=!ringcenter] add ring
execute store result score @s entity_x run data get entity @s Pos[0] 10
execute store result score @s entity_y run data get entity @s Pos[1] 10
execute store result score @s entity_z run data get entity @s Pos[2] 10
execute at @s as @e[tag=ring] store result score @s entity_x run data get entity @s Pos[0] 10
execute at @s as @e[tag=ring] store result score @s entity_y run data get entity @s Pos[1] 10
execute at @s as @e[tag=ring] store result score @s entity_z run data get entity @s Pos[2] 10
execute as @e[tag=ring] run scoreboard players operation @s entity_x -= @n[tag=ringcenter] entity_x
execute as @e[tag=ring] run scoreboard players operation @s entity_y -= @n[tag=ringcenter] entity_y
execute as @e[tag=ring] run scoreboard players operation @s entity_z -= @n[tag=ringcenter] entity_z
execute as @e[tag=ring] store result entity @s Motion.[0] double 0.025 run scoreboard players get @s entity_x
execute as @e[tag=ring] store result entity @s Motion.[1] double 0.025 run scoreboard players get @s entity_y
execute as @e[tag=ring] store result entity @s Motion.[2] double 0.025 run scoreboard players get @s entity_z
tag @e remove ring
tag @s remove ringcenter