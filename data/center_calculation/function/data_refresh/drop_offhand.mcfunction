summon item ~ ~ ~ {Item:{id:"minecraft:stone",count:1},PickupDelay:0,Tags:["stdTemp1"]}
item replace entity @n[type=item,tag=stdTemp1] container.0 from entity @s weapon.offhand
tellraw @s [{translate:rawtext.system.no_offhand,color:red,bold:true}]
playsound block.iron_door.close hostile @s ~ ~ ~
item replace entity @s weapon.offhand with air