execute store result score @s stdTemp1 run data get entity @s SelectedItem.components."minecraft:attribute_modifiers".[{slot:"mainhand",type:"minecraft:movement_efficiency",operation:"add_multiplied_base"}].amount 100
execute store result score @s stdTemp2 run data get entity @s equipment.offhand.components."minecraft:attribute_modifiers".[{slot:"offhand",type:"minecraft:movement_efficiency",operation:"add_multiplied_base"}].amount 100
execute store result score @s stdTemp3 run data get entity @s equipment.head.components."minecraft:attribute_modifiers".[{slot:"head",type:"minecraft:movement_efficiency",operation:"add_multiplied_base"}].amount 100
execute store result score @s stdTemp4 run data get entity @s equipment.chest.components."minecraft:attribute_modifiers".[{slot:"chest",type:"minecraft:movement_efficiency",operation:"add_multiplied_base"}].amount 100
execute store result score @s stdTemp5 run data get entity @s equipment.legs.components."minecraft:attribute_modifiers".[{slot:"legs",type:"minecraft:movement_efficiency",operation:"add_multiplied_base"}].amount 100
execute store result score @s stdTemp6 run data get entity @s equipment.feet.components."minecraft:attribute_modifiers".[{slot:"feet",type:"minecraft:movement_efficiency",operation:"add_multiplied_base"}].amount 100
scoreboard players operation @s stdTemp1 += @s stdTemp2
scoreboard players operation @s stdTemp1 += @s stdTemp3
scoreboard players operation @s stdTemp1 += @s stdTemp4
scoreboard players operation @s stdTemp1 += @s stdTemp5
scoreboard players operation @s stdTemp1 += @s stdTemp6
scoreboard players add @s stdTemp1 100

scoreboard players set @s stdTemp7 100
scoreboard players operation @s stdTemp7 += @s player.Strength
scoreboard players operation @s stdTemp7 += @s player.Weakness
scoreboard players operation @s stdTemp1 *= @s stdTemp7

return run scoreboard players get @s stdTemp1