execute store result score @s invade_p1 run data get entity @s equipment.head.components."minecraft:enchantments"."core:defence/invade" 1
execute store result score @s invade_p2 run data get entity @s equipment.chest.components."minecraft:enchantments"."core:defence/invade" 1
execute store result score @s invade_p3 run data get entity @s equipment.legs.components."minecraft:enchantments"."core:defence/invade" 1
execute store result score @s invade_p4 run data get entity @s equipment.feet.components."minecraft:enchantments"."core:defence/invade" 1
execute store result score @s invade_p5 run data get entity @s equipment.offhand.components."minecraft:enchantments"."core:defence/invade" 1
execute store result score @s invade_p6 run data get entity @s SelectedItem.components."minecraft:enchantments"."core:defence/invade" 1
scoreboard players operation @s invade_p1 += @s invade_p2
scoreboard players operation @s invade_p1 += @s invade_p3
scoreboard players operation @s invade_p1 += @s invade_p4
scoreboard players operation @s invade_p1 += @s invade_p5
scoreboard players operation @s invade_p1 += @s invade_p6
scoreboard players operation @s invade_p1 *= @s std20
scoreboard players operation @s armor_extension += @s invade_p1