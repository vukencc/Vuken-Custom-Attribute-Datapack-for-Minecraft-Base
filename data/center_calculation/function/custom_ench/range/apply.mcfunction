$scoreboard players set @s thunder_aspect_timing $(freeze)
execute if score @s arrow_apply_freeze matches 1.. run data merge entity @s {NoAI:1b}
$execute as @e[distance=..3.5,type=!#minecraft:bypass] run damage @s $(starlit) starve
execute as @s store result score @s entity_x run data get entity @s Pos[0] 10
execute as @s store result score @s entity_y run data get entity @s Pos[1] 10
execute as @s store result score @s entity_z run data get entity @s Pos[2] 10
tag @s add ringcenter
execute at @s run tag @e[type=!marker,type=!item,type=!arrow,type=!armor_stand,nbt=!{NoAI:1b},distance=..5,tag=!ringcenter] add ring
execute at @s as @e[tag=ring] store result score @s entity_x run data get entity @s Pos[0] 10
execute at @s as @e[tag=ring] store result score @s entity_y run data get entity @s Pos[1] 10
execute at @s as @e[tag=ring] store result score @s entity_z run data get entity @s Pos[2] 10
execute as @e[tag=ring] run scoreboard players operation @s entity_x -= @e[tag=ringcenter,sort=nearest,limit=1] entity_x
execute as @e[tag=ring] run scoreboard players operation @s entity_y -= @e[tag=ringcenter,sort=nearest,limit=1] entity_y
execute as @e[tag=ring] run scoreboard players operation @s entity_z -= @e[tag=ringcenter,sort=nearest,limit=1] entity_z
$execute as @e[tag=ring] store result entity @s Motion.[0] double $(ring) run scoreboard players get @s entity_x
$execute as @e[tag=ring] store result entity @s Motion.[1] double $(ring) run scoreboard players get @s entity_y
$execute as @e[tag=ring] store result entity @s Motion.[2] double $(ring) run scoreboard players get @s entity_z
tag @e remove ring
tag @s remove ringcenter

execute store result score @s entity_x run data get entity @s Pos[0] 100
execute store result score @s entity_y run data get entity @s Pos[1] 100
execute store result score @s entity_z run data get entity @s Pos[2] 100
execute store result score @s entity_x_det run data get entity @p[tag=temp_shooter] Pos[0] 100
execute store result score @s entity_y_det run data get entity @p[tag=temp_shooter] Pos[1] 100
execute store result score @s entity_z_det run data get entity @p[tag=temp_shooter] Pos[2] 100
scoreboard players operation @s entity_x_det -= @s entity_x
scoreboard players operation @s entity_y_det -= @s entity_y
scoreboard players operation @s entity_z_det -= @s entity_z
scoreboard objectives add temp_std dummy
$scoreboard players set @s temp_std $(greed)
scoreboard players operation @s entity_x_det *= @s temp_std
scoreboard players operation @s entity_y_det *= @s temp_std
scoreboard players operation @s entity_z_det *= @s temp_std
execute if score @s temp_std matches 1.. store result entity @s Motion.[0] double 0.001 run scoreboard players get @s entity_x_det
execute if score @s temp_std matches 1.. store result entity @s Motion.[1] double 0.001 run scoreboard players get @s entity_y_det
execute if score @s temp_std matches 1.. store result entity @s Motion.[2] double 0.001 run scoreboard players get @s entity_z_det
tag @a remove temp_shooter
scoreboard objectives remove temp_std