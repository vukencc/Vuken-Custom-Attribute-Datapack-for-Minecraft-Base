function core:trigger/passive/potion_charger/end_b with entity @s
scoreboard players set @s ChestModel.cd 300
item modify entity @s weapon.mainhand [{function:"set_components",components:{"!minecraft:consumable":{}}},{function:"set_components",components:{item_model:"minecraft:chest"}}]

execute unless data entity @s SelectedItem.components."minecraft:custom_data".PotionCharger.[{}] at @s run function core:trigger/active/chest_model/failed
execute if data entity @s SelectedItem.components."minecraft:custom_data".PotionCharger.[{}] at @s run function core:trigger/active/chest_model/loc_re

