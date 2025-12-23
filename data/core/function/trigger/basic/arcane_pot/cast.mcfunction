
#speed radius color cost damage
execute store result score @s stdTemp1 run data get entity @s SelectedItem.components."minecraft:custom_data".ArcanePot.cost 400
execute if score @s player.ManaBar < @s stdTemp1 run return fail
item modify entity @s weapon.mainhand [{function:"set_enchantments",enchantments:{"core:inter/pot_effect":0}}]
scoreboard players operation @s player.ManaBar -= @s stdTemp1
execute store result storage element speed double 0.1 run data get entity @s SelectedItem.components."minecraft:custom_data".ArcanePot.speed 10
execute store result storage element radius double 0.1 run data get entity @s SelectedItem.components."minecraft:custom_data".ArcanePot.radius 10
execute store result storage element color int 1 run data get entity @s SelectedItem.components."minecraft:custom_data".ArcanePot.color

execute store result score @s stdTemp8 run data get entity @s SelectedItem.components."minecraft:custom_data".ArcanePot.damage 10
function core:damage/magic/calculation
scoreboard players operation @s stdTemp8 *= @s stdTemp1
execute store result storage element damage double 0.00001 run scoreboard players get @s stdTemp8

execute at @s anchored eyes positioned ^ ^ ^0.7 summon splash_potion run function core:trigger/basic/arcane_pot/set_attributes with storage element