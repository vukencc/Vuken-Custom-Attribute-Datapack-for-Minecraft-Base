advancement revoke @s only center_calculation:charging_crossbow
execute unless items entity @s weapon.mainhand *[enchantments~[{enchantments:"center_calculation:range/multicharge"}]] run return run scoreboard players set @s range_multicharge 0
execute store result score @s range_multicharge run data get entity @s SelectedItem.components."minecraft:enchantments"."center_calculation:range/multicharge"
execute store result score @s range_multicharge_count run data get entity @s SelectedItem.components."minecraft:enchantments"."minecraft:multishot" 2
scoreboard players add @s range_multicharge_count 1
scoreboard players operation @s range_multicharge *= @s range_multicharge_count