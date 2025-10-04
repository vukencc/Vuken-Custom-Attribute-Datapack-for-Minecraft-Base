execute store result score @s ethereal_p1 run data get entity @s equipment.head.components."minecraft:enchantments"."core:defence/ethereal" 1
execute store result score @s ethereal_p2 run data get entity @s equipment.chest.components."minecraft:enchantments"."core:defence/ethereal" 1
execute store result score @s ethereal_p3 run data get entity @s equipment.legs.components."minecraft:enchantments"."core:defence/ethereal" 1
execute store result score @s ethereal_p4 run data get entity @s equipment.feet.components."minecraft:enchantments"."core:defence/ethereal" 1
execute store result score @s ethereal_p5 run data get entity @s equipment.offhand.components."minecraft:enchantments"."core:defence/ethereal" 1
execute store result score @s ethereal_p6 run data get entity @s SelectedItem.components."minecraft:enchantments"."core:defence/ethereal" 1
scoreboard players operation @s ethereal_p1 += @s ethereal_p2
scoreboard players operation @s ethereal_p1 += @s ethereal_p3
scoreboard players operation @s ethereal_p1 += @s ethereal_p4
scoreboard players operation @s ethereal_p1 += @s ethereal_p5
scoreboard players operation @s ethereal_p1 += @s ethereal_p6
scoreboard players operation @s ethereal_p1 *= @s std20
scoreboard players operation @s armor_extension += @s ethereal_p1