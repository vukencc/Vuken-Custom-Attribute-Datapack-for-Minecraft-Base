data modify entity @n[type=item,tag=stdTemp1] Item.components."minecraft:container" append value {item:{id:"stone",count:1,components:{}},slot:26}
data modify entity @n[type=item,tag=stdTemp1] Item.components."minecraft:container".[{slot:26}].item.id set from entity @n[type=armor_stand,tag=stdTemp4] equipment.head.components."minecraft:custom_data".PotionCharger.[0].id
data modify entity @n[type=item,tag=stdTemp1] Item.components."minecraft:container".[{slot:26}].item.components set from entity @n[type=armor_stand,tag=stdTemp4] equipment.head.components."minecraft:custom_data".PotionCharger.[0].components
data modify entity @n[type=item,tag=stdTemp1] Item.components."minecraft:container".[{slot:26}].item.count set from entity @n[type=armor_stand,tag=stdTemp4] equipment.head.components."minecraft:custom_data".PotionCharger.[0].count
data modify entity @n[type=item,tag=stdTemp1] Item.components."minecraft:container".[{slot:26}].slot set from entity @n[type=armor_stand,tag=stdTemp4] equipment.head.components."minecraft:custom_data".PotionCharger.[0].Slot
data remove entity @n[type=armor_stand,tag=stdTemp4] equipment.head.components."minecraft:custom_data".PotionCharger.[0]
scoreboard players add @s stdTemp6 1
execute store result entity @n[type=marker,tag=stdTemp2] data.Slot int 1 run scoreboard players get @s stdTemp6
execute if data entity @n[type=armor_stand,tag=stdTemp4] equipment.head.components."minecraft:custom_data".PotionCharger.[0] run function core:trigger/active/chest_model/arrange with entity @n[type=marker,tag=stdTemp2] data

