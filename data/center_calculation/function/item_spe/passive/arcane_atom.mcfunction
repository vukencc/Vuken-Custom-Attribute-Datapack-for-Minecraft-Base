execute as @s at @s positioned ^ ^ ^2.3 as @e[type=!#bypass,distance=..2.5] run tag @s add arcane_atom_hurt
execute as @s at @s positioned ^1.1 ^ ^2.3 as @e[type=!#bypass,distance=..2.5] run tag @s add arcane_atom_hurt
execute as @s at @s positioned ^-1.1 ^ ^2.3 as @e[type=!#bypass,distance=..2.5] run tag @s add arcane_atom_hurt
particle sweep_attack ^ ^ ^2.3 2 0.1 2 0.3 15 normal
execute at @s as @e[tag=arcane_atom_hurt] run damage @s 7 mob_attack by @p

tag @s add ring_center
tag @e[tag=arcane_atom_hurt] add ring
particle cloud ~ ~1 ~ 2 2 2 0.1 25 normal
execute store result score @n[tag=ring_center] entity_x run data get entity @s Pos[0] 10
execute store result score @n[tag=ring_center] entity_y run data get entity @s Pos[1] 10
execute store result score @n[tag=ring_center] entity_z run data get entity @s Pos[2] 10
execute as @e[tag=ring] store result score @s entity_x run data get entity @s Pos[0] 10
execute as @e[tag=ring] store result score @s entity_y run data get entity @s Pos[1] 10
execute as @e[tag=ring] store result score @s entity_z run data get entity @s Pos[2] 10
execute as @e[tag=ring] run scoreboard players operation @s entity_x -= @n[tag=ring_center] entity_x
execute as @e[tag=ring] run scoreboard players operation @s entity_y -= @n[tag=ring_center] entity_y
execute as @e[tag=ring] run scoreboard players operation @s entity_z -= @n[tag=ring_center] entity_z
execute as @e[tag=ring] store result entity @s Motion.[0] double 0.06 run scoreboard players get @s entity_x
execute as @e[tag=ring] store result entity @s Motion.[1] double 0.06 run scoreboard players get @s entity_y
execute as @e[tag=ring] store result entity @s Motion.[2] double 0.06 run scoreboard players get @s entity_z
tag @e remove ring
tag @s remove ring_center
tag @e remove arcane_atom_hurt