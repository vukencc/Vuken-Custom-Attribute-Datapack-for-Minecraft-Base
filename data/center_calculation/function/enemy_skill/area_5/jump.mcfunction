tp @s ^ ^ ^1
execute store result score @s entity_x_det run data get entity @s Pos[0] 100
execute store result score @s entity_y_det run data get entity @s Pos[1] 100
execute store result score @s entity_z_det run data get entity @s Pos[2] 100
tp @s ^ ^ ^-1
execute store result score @s entity_x run data get entity @s Pos[0] 100
execute store result score @s entity_y run data get entity @s Pos[1] 100
execute store result score @s entity_z run data get entity @s Pos[2] 100
scoreboard players operation @s entity_x_det -= @s entity_x
scoreboard players operation @s entity_y_det -= @s entity_y
scoreboard players operation @s entity_z_det -= @s entity_z
execute store result entity @s Motion[0] float 0.01 run scoreboard players get @s entity_x_det
execute store result entity @s Motion[1] float 0.01 run scoreboard players get @s entity_y_det
execute store result entity @s Motion[2] float 0.01 run scoreboard players get @s entity_z_det
attribute @s safe_fall_distance base set 100