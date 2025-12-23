summon splash_potion ~ ~ ~ {Item:{id:"minecraft:splash_potion"},Tags:["pc.apply"],Motion:[0.0,-3.0,0.0],Silent:1b}
data modify entity @n[type=splash_potion,tag=pc.apply] Item set from entity @s SelectedItem.components."minecraft:custom_data".PotionCharger.[0]

summon armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,Invulnerable:1b,Tags:["stdTemp4"]}
item replace entity @n[type=armor_stand,tag=stdTemp4] armor.head from entity @s weapon.mainhand
data remove entity @n[type=armor_stand,tag=stdTemp4] equipment.head.components."minecraft:custom_data".PotionCharger.[0]
item replace entity @s weapon.mainhand from entity @n[type=armor_stand,tag=stdTemp4] armor.head
kill @n[type=armor_stand,tag=stdTemp4]

scoreboard players set @s PotionCharger.cd 200
execute rotated ~ 0 run function core:particle/skill/pc
playsound entity.allay.item_thrown hostile @a ~ ~ ~
tag @s add stdTemp3