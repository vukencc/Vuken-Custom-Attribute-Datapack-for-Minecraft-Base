function core:trigger/passive/potion_charger/end_b with entity @s
scoreboard players set @s PotionCharger.cd 10
item modify entity @s weapon.mainhand [{function:"set_components",components:{"!minecraft:consumable":{}}},{function:"set_components",components:{item_model:"tool/interact/potion_charger_empty"}}]

summon marker ~ ~ ~ {Tags:["stdTemp3"],data:{StringMatch:""}}
data modify entity @n[type=marker,tag=stdTemp3] data.StringMatch set string entity @s SelectedItem.components."minecraft:custom_data".PotionCharger.[0].id
execute if entity @n[type=marker,tag=stdTemp3,nbt={data:{StringMatch:"minecraft:splash_potion"}}] run function core:trigger/active/potion_charger/apply
execute if entity @n[type=marker,tag=stdTemp3,nbt={data:{StringMatch:"minecraft:lingering_potion"}}] run function core:trigger/active/potion_charger/apply
execute if entity @n[type=marker,tag=stdTemp3,nbt={data:{StringMatch:"minecraft:potion"}}] run function core:trigger/active/potion_charger/weakened_apply
kill @n[type=marker,tag=stdTemp3]

execute unless entity @s[tag=stdTemp3] run function core:trigger/active/potion_charger/not_a_pot
tag @s remove stdTemp3