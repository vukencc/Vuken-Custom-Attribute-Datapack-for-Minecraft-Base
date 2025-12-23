execute store result score @s multicharge.temp1 run data get entity @s SelectedItem.components."minecraft:enchantments"."core:range/multicharge"
execute unless score @s multicharge.temp1 = @s multicharge.temp2 run scoreboard players set @s range_multicharge 0
execute store result score @s multicharge.temp2 run data get entity @s SelectedItem.components."minecraft:enchantments"."core:range/multicharge"
execute store result score @s multicharge.temp3 run data get entity @s SelectedItem.components."minecraft:enchantments"."minecraft:multishot"
execute unless score @s multicharge.temp3 = @s multicharge.temp4 run scoreboard players set @s range_multicharge 0
execute store result score @s multicharge.temp4 run data get entity @s SelectedItem.components."minecraft:enchantments"."minecraft:multishot"