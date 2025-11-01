tag @s add ringcenter
execute at @s run tag @e[type=!#bypass,nbt=!{NoAI:1b},distance=..5,tag=!ringcenter] add ring
execute at @s as @e[tag=ring,distance=..5] store result score @s entity_x run data get entity @s Pos[0] 10
execute at @s as @e[tag=ring,distance=..5] store result score @s entity_y run data get entity @s Pos[1] 10
execute at @s as @e[tag=ring,distance=..5] store result score @s entity_z run data get entity @s Pos[2] 10
execute as @e[tag=ring,distance=..5] run scoreboard players operation @s entity_x -= @e[tag=ringcenter,sort=nearest,limit=1] entity_x
execute as @e[tag=ring,distance=..5] run scoreboard players operation @s entity_y -= @e[tag=ringcenter,sort=nearest,limit=1] entity_y
execute as @e[tag=ring,distance=..5] run scoreboard players operation @s entity_z -= @e[tag=ringcenter,sort=nearest,limit=1] entity_z
$execute as @e[tag=ring,distance=..5] store result entity @s Motion.[0] double $(ring) run scoreboard players get @s entity_x
$execute as @e[tag=ring,distance=..5] store result entity @s Motion.[1] double $(ring) run scoreboard players get @s entity_y
$execute as @e[tag=ring,distance=..5] store result entity @s Motion.[2] double $(ring) run scoreboard players get @s entity_z
tag @e remove ring
tag @s remove ringcenter