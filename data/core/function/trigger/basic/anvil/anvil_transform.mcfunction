$execute store result score @s stdTemp1 if items entity @s player.crafting.$(slot) anvil
execute at @s store result entity @n[type=marker,tag=anvil_return] data.count int 1 run scoreboard players operation @s stdTemp1 -= @s std1
execute at @s run data modify entity @n[type=marker,tag=anvil_return] data.slot set value 0
execute if score @s stdTemp1 matches 1.. at @s run function core:trigger/basic/anvil/anvil_return with entity @n[type=marker,tag=anvil_return] data
$item modify entity @s player.crafting.$(slot) [{function:"set_item",item:"bundle"},{function:"set_count",count:1},{function:set_custom_data,tag:{AnvilFix:1b,AnvilUsing:1b}},{function:'set_components',components:{item_model:anvil}}]
playsound block.anvil.place hostile @s ~ ~ ~