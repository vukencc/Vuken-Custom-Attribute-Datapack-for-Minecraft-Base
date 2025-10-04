execute as @a if score @s PotionCharger.cd matches 1.. run scoreboard players remove @s PotionCharger.cd 1
execute as @a if score @s PotionCharger.cd matches 0 if items entity @s hotbar.* *[item_model="tool/interact/potion_charger_empty"] at @s run function core:item_spe/active/potion_charger/refresh

execute as @a if score @s ChestModel.cd matches 1.. run scoreboard players remove @s ChestModel.cd 1
execute as @a if score @s ChestModel.cd matches 0 if items entity @s hotbar.* *[item_model="minecraft:chest",custom_data~{ChestModel:1b}] at @s run function core:item_spe/active/chest_model/refresh