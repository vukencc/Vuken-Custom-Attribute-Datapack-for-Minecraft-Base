execute store result score @s invert_p1 run data get entity @s equipment.head.components."minecraft:enchantments"."center_calculation:assistance/invert"
execute store result score @s invert_p2 run data get entity @s equipment.chest.components."minecraft:enchantments"."center_calculation:assistance/invert"
execute store result score @s invert_p3 run data get entity @s equipment.legs.components."minecraft:enchantments"."center_calculation:assistance/invert"
execute store result score @s invert_p4 run data get entity @s equipment.feet.components."minecraft:enchantments"."center_calculation:assistance/invert"
execute store result score @s invert_p5 run data get entity @s equipment.offhand.components."minecraft:enchantments"."center_calculation:assistance/invert"
execute store result score @s invert_p6 run data get entity @s SelectedItem.components."minecraft:enchantments"."center_calculation:assistance/invert"
scoreboard players operation @s invert_p1 += @s invert_p2
scoreboard players operation @s invert_p1 += @s invert_p3
scoreboard players operation @s invert_p1 += @s invert_p4
scoreboard players operation @s invert_p1 += @s invert_p5
scoreboard players operation @s invert_p1 += @s invert_p6
execute if score @s invert_p1 matches 1.. run function center_calculation:custom_ench/assistance/effects_delay
scoreboard players set @s invert_delay 2