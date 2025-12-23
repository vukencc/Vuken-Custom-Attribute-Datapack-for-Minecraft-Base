summon armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,Invulnerable:1b,Tags:["stdTemp1"]}
item replace entity @n[type=armor_stand,tag=stdTemp1] armor.head from entity @s weapon.mainhand
$data modify entity @n[type=armor_stand,tag=stdTemp1] equipment.head.components."minecraft:custom_data".PotionCharger set from entity @n[type=acacia_chest_boat,distance=..8,tag=PotionCharger.Init,nbt={data:{UUID:$(UUID)}}] Items
item replace entity @s weapon.mainhand from entity @n[type=armor_stand,tag=stdTemp1] armor.head
kill @n[type=armor_stand,tag=stdTemp1]
tag @s remove pc.cursor