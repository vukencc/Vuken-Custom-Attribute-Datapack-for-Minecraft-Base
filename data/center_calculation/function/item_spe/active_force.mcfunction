execute as @a if score @s PotionCharger.cd matches 1.. run scoreboard players remove @s PotionCharger.cd 1
execute as @a if score @s PotionCharger.cd matches 0 if items entity @s hotbar.* *[item_model="tool/interact/potion_charger_empty"] at @s run function center_calculation:item_spe/active/potion_charger/refresh
