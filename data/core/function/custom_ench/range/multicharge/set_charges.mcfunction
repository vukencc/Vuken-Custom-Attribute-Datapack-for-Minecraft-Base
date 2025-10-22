advancement revoke @s only core:charging_crossbow
execute unless items entity @s weapon.mainhand *[enchantments~[{enchantments:"core:range/multicharge"}]] run return run scoreboard players set @s range_multicharge 0
execute store result score @s range_multicharge run data get entity @s SelectedItem.components."minecraft:enchantments"."core:range/multicharge"
execute store result score @s multicharge.temp5 run data get entity @s SelectedItem.components."minecraft:enchantments"."minecraft:multishot" 2
scoreboard players add @s multicharge.temp5 1
scoreboard players operation @s range_multicharge *= @s multicharge.temp5