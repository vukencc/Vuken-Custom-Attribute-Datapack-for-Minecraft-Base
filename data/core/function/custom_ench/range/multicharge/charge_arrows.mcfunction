data modify entity @n[type=item,tag=temp] Item.components."minecraft:charged_projectiles" append value {id:arrow,count:1}
scoreboard players remove @s stdTemp1 1
execute if score @s stdTemp1 matches 1.. run function core:custom_ench/range/multicharge/charge_arrows