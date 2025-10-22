#only timing worth count
execute store result score @s death_escape_p1 run data get entity @s equipment.head.components."minecraft:enchantments"."core:defence/death_escape" 1
execute store result score @s death_escape_p2 run data get entity @s equipment.chest.components."minecraft:enchantments"."core:defence/death_escape" 1
execute store result score @s death_escape_p3 run data get entity @s equipment.legs.components."minecraft:enchantments"."core:defence/death_escape" 1
execute store result score @s death_escape_p4 run data get entity @s equipment.feet.components."minecraft:enchantments"."core:defence/death_escape" 1
execute store result score @s death_escape_p5 run data get entity @s equipment.offhand.components."minecraft:enchantments"."core:defence/death_escape" 1
execute store result score @s death_escape_p6 run data get entity @s SelectedItem.components."minecraft:enchantments"."core:defence/death_escape" 1
scoreboard players operation @s death_escape_p1 += @s death_escape_p2
scoreboard players operation @s death_escape_p1 += @s death_escape_p3
scoreboard players operation @s death_escape_p1 += @s death_escape_p4
scoreboard players operation @s death_escape_p1 += @s death_escape_p5
scoreboard players operation @s death_escape_p1 += @s death_escape_p6
scoreboard players operation @s death_escape_p1 *= @s std2
scoreboard players operation @s death_escape_p1 *= @s std20
scoreboard players set @s death_escape_timing 2440
scoreboard players operation @s death_escape_timing -= @s death_escape_p1
tag @s add death_totem
execute as @s if score @s death_escape_p1 matches 0 run scoreboard players set @s death_escape_timing 0
execute as @s if score @s death_escape_p1 matches 0 run tag @s remove death_totem