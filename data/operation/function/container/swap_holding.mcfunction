summon armor_stand ~ ~10 ~ {Tags:["stdTemp1"],Marker:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b}
item replace entity @n[type=armor_stand,tag=stdTemp1] weapon.mainhand from entity @s weapon.mainhand
item replace entity @s weapon.mainhand from entity @s weapon.offhand
item replace entity @s weapon.offhand from entity @n[type=armor_stand,tag=stdTemp1] weapon.mainhand
kill @n[type=armor_stand,tag=stdTemp1]